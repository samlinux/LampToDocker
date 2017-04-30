<?php
/**
 *  determines correct subdomain for the DB name
 * 
 *  @author Roland Bole
 */

// allowed domains
$clientDomain = ['c001.r2o','c002.r2o','c003.r2o','c004.r2o'];

// retrieve database name from subdomain
if(in_array($_SERVER["HTTP_HOST"],$clientDomain)){
	$_domain = explode('.',$_SERVER["HTTP_HOST"]);
	$dbName = $_domain[0];
}
else {
	// we will cancel if it is not a legitimate domain
	die("STOP");
}
