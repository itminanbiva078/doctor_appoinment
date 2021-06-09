<?php $target = 'http://127.0.0.1:8000//storage/app/public/';
$shortcut = 'http://127.0.0.1:8000/public/storage';
var_dump(symlink($target, $shortcut));
exit;
?>
