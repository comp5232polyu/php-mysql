<?php
/* COMP5232 Project
 * Store index page
 *
 * This script depends on the following code in .htaccess:
 *    <IfModule mod_rewrite.c>
 *        RewriteEngine on
 *        RewriteCond %{REQUEST_FILENAME} !-f
 *        RewriteCond %{REQUEST_FILENAME} !-d
 *        RewriteRule ^ index.php [L]
 *    </IfModule>
 *
 * Place the "static" and "views" directories in the root
 * along with this script and the above .htaccess file.
 */

include('db.php');
include('vars.php');

//Query the DB
global $mysqli;
$strsql = "select * from stock order by id desc";
if ($result = $mysqli->query($strsql)) {
   // printf("<br>Select returned %d rows.\n", $result->num_rows);
	while ($row = $result->fetch_object()) {
		$items[] = clone $row;
	}
	$result->close();
} else {
	echo "Failed to query the database!";
}

$mysqli->close();

$lll_route = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

if (isset($_GET['id'])) {
	$item_size = sizeof($items);
	$item = $items[$item_size - $_GET['id']];
}

if (file_exists("views/$lll_route.tpl")) {
	//echo "views/$lll_route.tpl page not found";
	ob_start();
	require_once("views/$lll_route.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;

} elseif (($lll_route == "") || ($lll_route == "/")){
	ob_start();
	require_once("views/home.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;
} else {
	//echo "\"$lll_route\" page not found";
	ob_start();
	require_once("views/home.tpl");
	$lllpage = ob_get_contents();
	ob_end_clean();

	echo $lllpage;
}

?>
