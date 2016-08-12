<?php
function plugin_version_pstfiles()
{
return array('name' => 'pstfiles',
'version' => '1.0',
'author'=> 'Jeremy POSE',
'license' => 'GPLv2',
'verMinOcs' => '2.2');
}

function plugin_init_pstfiles()
{
	
$object = new plugins;
$object -> add_cd_entry("pstfiles","other");

//table creation
include 'sql/pstfiles.php';

}

function plugin_delete_pstfiles()
{
$object = new plugins;
$object -> del_cd_entry("pstfiles");
}

?>
