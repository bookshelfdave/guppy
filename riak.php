<?php
$br = (php_sapi_name() == "cli")? "":"<br>";

if(!extension_loaded('riak')) {
	dl('riak.' . PHP_SHLIB_SUFFIX);
}
$module = 'riak';
$functions = get_extension_funcs($module);
echo "Functions available in the test extension:$br\n";
foreach($functions as $func) {
    echo $func."$br\n";
}

$foo = riak_connect("localhost","8087");
if($foo == TRUE) {
  echo "$\n";
} else {
  echo "No connection";
}
?>
