<?php

namespace App\Http\Controllers\Admin\Common;

use App\Model\Common\AttributeService;
use App\Model\Common\Tag;
use App\Notifications\NewServiceNotify;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SM\SM;
use App\Model\Common\Service as Service;
use App\Model\Common\Category;

class Services extends Controller
{


    public function index()
    {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Service';
        $data['rightButton']['link'] = 'services/create';

        return view("nptl-admin/common/service/index", $data);
    }

    public function dataProcessing(Request $request)
    {
        $edit_service = SM::check_this_method_access('services', 'edit') ? 1 : 0;
        $service_status_update = SM::check_this_method_access('services', 'service_status_update') ? 1 : 0;
        $delete_service = SM::check_this_method_access('services', 'delete') ? 1 : 0;
        $per = $edit_service + $delete_service;

        $columns = array(
            0 => 'id',
            1 => 'title',
        );

        $totalData = Service::count();
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        if (empty($request->input('search.value'))) {
            $services = Service::offset($start)
                ->limit($limit)
                //->orderBy($order, $dir)
                ->orderBy('id', 'desc')
                ->get();
            $totalFiltered = Service::count();
        } else {
            $search = $request->input('search.value');

            $services = Service::where('title', 'like', "%{$search}%")
                ->orWhere('sku', 'like', "%{$search}%")
//                ->orWhere('account_no', 'like', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                //->orderBy($order, $dir)
                ->orderBy('id', 'desc')
                ->get();
            $totalFiltered = Service::where('title', 'like', "%{$search}%")->count();
        }
        $data = array();

        if ($services) {
            foreach ($services as $v_data) {
                $nestedData['checkbox'] = '<label><input name="multi_select_service[]" type="checkbox" class="sub_chk" data-id="' . $v_data->id . '"></label>';
                $nestedData['id'] = $v_data->id;
                $nestedData['title'] = '<strong>' . $v_data->title . '</strong>';
                if (count($v_data->categories) > 0) {
                    $cat_title = '';
                    foreach ($v_data->categories as $i => $cat) {
                        $cat_title .= $cat->title . ', ';
                    }
                }
                $nestedData['categories'] = rtrim($cat_title, ', ');
                $nestedData['image'] = '<img class="img-service" src="' . SM::sm_get_the_src($v_data->image, 80, 80) . '">';
                if ($v_data->status == 1) {
                    $selected1 = "Selected";
                } else {
                    $selected1 = '';
                }
                if ($v_data->status == 2) {
                    $selected2 = "Selected";
                } else {
                    $selected2 = "";
                }
                if ($v_data->status == 3) {
                    $selected3 = "Selected";
                } else {
                    $selected3 = "";
                }
                if ($service_status_update != 0) {
                    $nestedData['status'] = '<select class="form-control change_status"
                                            route="' . config('constant.smAdminSlug') . '/service_status_update' . '"
                                            post_id="' . $v_data->id . '">
                                        <option value="1" ' . $selected1 . '>Published </option>
                                        <option value="2" ' . $selected2 . '>Pending </option>
                                        <option value="3" ' . $selected3 . '>Canceled </option>
                                        </select>';
                }
                if ($per != 0) {
                    $view_data = '<a target="_blank" href="' . url('/service') . '/' . $v_data->slug . '" title="View"
                                       class="btn btn-xs btn-success" id="">
                                        <i class="fa fa-eye"></i>
                                    </a>';
                    if ($edit_service != 0) {
                        $edit_data = '<a href="' . url(config('constant.smAdminSlug') . '/services') . '/' . $v_data->id . '/edit" class="btn btn-xs btn-default"><i class="fa fa-pencil"></i></a>';
                    } else {
                        $edit_data = '';
                    }
                    if ($delete_service != 0) {
                        $delete_data = '<a href="' . url(config('constant.smAdminSlug') . '/services/delete') . '/' . $v_data->id . '" 
                  title="Delete" class="btn btn-xs btn-default delete_data_row" delete_message="Are you sure to delete this service post?" delete_row="tr_' . $v_data->id . '">
                     <i class="fa fa-times"></i>
                    </a> ';
                    } else {
                        $delete_data = '';
                    }
                    $nestedData['action'] = $edit_data . ' ' . $delete_data;
                } else {
                    $nestedData['action'] = '';
                }
                $data[] = $nestedData;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data
        );

        echo json_encode($json_data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['rightButton']['iconClass'] = 'fa fa-list';
        $data['rightButton']['text'] = 'Service List';
        $data['rightButton']['link'] = 'services';
        $data["all_categories"] = Category::where("parent_id", 0)->get();

        return view("nptl-admin/common/service/create", $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'categories' => 'required | array',
        ]);

        $service = new Service();
        $service->title = $request->input("title");
        $service->description = $request->input("description", "");
//        --------------
        $service->seo_title = $request->input("seo_title", "");
        $service->meta_key = $request->input("meta_key", "");
        $service->meta_description = $request->input("meta_description", "");
        $permission = SM::current_user_permission_array();
        if (SM::is_admin() || isset($permission) &&
            isset($permission['services']['service_status_update']) && $permission['services']['service_status_update'] == 1) {
            $service->status = $request->status;
        }

        if (isset($request->image) && $request->image != '') {
            $service->image = $request->image;
        }


        $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
        $service->slug = SM::create_uri('services', $slug);
        $service->created_by = SM::current_user_id();
//        $service->save();
        if ($service->save()) {
            foreach ($request->categories as $cat) {
                $categories[$cat]['created_at'] = date("Y-m-d H:i:s");
                $categories[$cat]['updated_at'] = date("Y-m-d H:i:s");
                $catInfo = Category::find($cat);
                if (count($catInfo) > 0) {
                    $catInfo->increment("total_services");
                }
            }
            $service->categories()->attach($categories);
            $tags = SM::insertTag($request->input("tags", ""));

            $oldTagIds = SM::get_ids_from_data($service->tags);
            if ($tags) {
                foreach ($tags as $tag) {
                    $insTags[$tag]['created_at'] = date("Y-m-d H:i:s");
                    $insTags[$tag]['updated_at'] = date("Y-m-d H:i:s");
                    $tagInfo = Tag::find($tag);
                    if (!in_array($tag, $oldTagIds)) {
                        if (count($tagInfo) > 0) {
                            $tagInfo->increment("total_services");
                        }
                    }
                }
                if ($insTags) {
                    $service->tags()->sync($insTags);
                }
            }
            $this->removeThisCache();
//            $subscribers = Subscriber::all();
//            foreach ($subscribers as $subscriber) {
//                Notification::route('mail', $subscriber->email)
//                    ->notify(new NewServiceNotify($service));
//            }

//            $subscriber_email= Subscriber::select('email')->get();
//            if (count($subscriber_email) > 0) {
//                foreach ($subscriber_email as $email) {
//                    $info = $request->except('email');
//                    Mail::to($email->email)
//                        ->queue(new Offer((object)$info));
//                }
//
//                return response('All mail successfully send.');
//            } else {
//                return response()->json(['errors' => ['email[]' => ['Email Not Found']]], 422);
//            }
            return redirect(SM::smAdminSlug("services/$service->id/edit"))->with("s_message", "Service successfully saved!");
        } else {
            return redirect(SM::smAdminSlug("services"))->with("w_message", "Service save failed!");
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data["edit"] = Service::with("categories", "tags")->find($id);
        if (count($data["edit"]) > 0) {
            $data['rightButton']['iconClass'] = 'fa fa - list';
            $data['rightButton']['text'] = 'Service List';
            $data['rightButton']['link'] = 'services';
            $data['rightButton2']['iconClass'] = 'fa fa-plus';
            $data['rightButton2']['text'] = 'Add Service';
            $data['rightButton2']['link'] = 'services/create';

            $data['edit']->categories = SM::get_ids_from_data($data['edit']->categories);
            $data['edit']->tags = SM::sm_get_service_tags($data['edit']->tags);
            $data['all_categories'] = Category::where('parent_id', 0)->get();

            return view("nptl-admin.common.service.edit", $data);
        } else {
            return redirect(SM::smAdminSlug("categories"))->with("w_message", "Service Not Found!");
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required | max:100',
            'categories' => 'required | array',
        ]);

        $service = Service::find($id);
        if (count($service) > 0) {
            $this->removeThisCache($service->slug, $service->id);
            $service->title = $request->input("title");
            $service->description = $request->input("description", "");
//        --------------
            $service->seo_title = $request->input("seo_title", "");
            $service->meta_key = $request->input("meta_key", "");
            $service->meta_description = $request->input("meta_description", "");
            $permission = SM::current_user_permission_array();
            if (SM::is_admin() || isset($permission) &&
                isset($permission['services']['service_status_update']) && $permission['services']['service_status_update'] == 1) {
                $service->status = $request->status;
            }
            if (isset($request->image) && $request->image != '') {
                $service->image = $request->image;
            }
            $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
            $service->slug = SM::create_uri('services', $slug, $id);
            $service->modified_by = SM::current_user_id();
            $service->update();
            $updateCount = $service->id;

            if ($updateCount > 0) {
                $oldCatIds = SM::get_ids_from_data($service->categories);
                foreach ($request->categories as $cat) {
                    $categories[$cat]['created_at'] = date("Y-m-d H:i:s");
                    $categories[$cat]['updated_at'] = date("Y-m-d H:i:s");
                    if (!in_array($cat, $oldCatIds)) {
                        $catInfo = Category::find($cat);
                        if (count($catInfo) > 0) {
                            $catInfo->increment("total_services");
                        }
                    }
                }
                $service->categories()->sync($categories);

                return redirect(SM::smAdminSlug("services/$id/edit"))->with("s_message", "Service Updated Successfully!");
            } else {
                return redirect(SM::smAdminSlug("services/$id/edit"))->with("s_message", "Service Update Failed!");
            }
        } else {
            return redirect(SM::smAdminSlug("services"))->with("w_message", "Service Not Found!");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function deleteMultiple(Request $request)
    {
        $ids = explode(",", $request->ids);

        foreach ($ids as $key => $id) {
            $service = Service::with('categories', 'tags')->find($id);
            if (count($service) > 0) {
                if (count($service->categories) > 0) {
                    foreach ($service->categories as $category) {
                        if ($category->total_services > 0) {
                            $category->decrement('total_services');
                        }
                    }
                }
                if (count($service->tags) > 0) {
                    foreach ($service->tags as $tag) {
                        if ($tag->total_services > 0) {
                            $tag->decrement('total_services');
                        }
                    }
                }

                $service->categories()->detach();
                $service->tags()->detach();
                $this->removeThisCache($service->slug, $service->id);

                if ($service->delete() > 0) {
//                    return response(1);
                }
            }
//            return response(0);
        }
        return response()->json(['success' => "Services Multi Deleted successfully."]);

    }


    public function destroy($id)
    {
        $service = Service::with('categories', 'tags')->find($id);
        if (count($service) > 0) {
            if (count($service->categories) > 0) {
                foreach ($service->categories as $category) {
                    if ($category->total_services > 0) {
                        $category->decrement('total_services');
                    }
                }
            }
            if (count($service->tags) > 0) {
                foreach ($service->tags as $tag) {
                    if ($tag->total_services > 0) {
                        $tag->decrement('total_services');
                    }
                }
            }
            $service->categories()->detach();
            $service->tags()->detach();
            $this->removeThisCache($service->slug, $service->id);

            if ($service->delete() > 0) {
                return response(1);
            }
        }

        return response(0);
    }

    /**
     * status change the specified resource from storage.
     *
     * @param  Request $request
     *
     * @return null
     */
    public function service_status_update(Request $request)
    {
        $this->validate($request, [
            "post_id" => "required",
            "status" => "required",
        ]);

        $service = Service::find($request->post_id);
        if (count($service) > 0) {
            $this->removeThisCache($service->slug, $service->id);
            $service->status = $request->status;
            $service->update();
        }
        exit;
    }

    public function removeThisCache($slug = null, $id = null)
    {
        SM::removeCache('homeLatestDealsServices');
        SM::removeCache('homeRecommendedServices');
        SM::removeCache('sidebar_popular_service');
        if ($slug != null) {
            SM::removeCache('service_' . $slug);
            SM::removeCache('service_related_service_' . $slug);
        }
        if ($id != null) {
            SM::removeCache(['service_comments_count_' . $id], 1);
            SM::removeCache(['service_comments_' . $id], 1);
        }
        SM::removeCache(['categoryServices'], 1);
        SM::removeCache(['tagServices'], 1);
        SM::removeCache(['services'], 1);
        SM::removeCache(['stickyServices'], 1);
    }

}
