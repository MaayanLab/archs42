
<?php
/**
 * Created by PhpStorm.
 * User: maayanlab
 * Date: 9/30/16
 * Time: 12:18 PM
 */

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'dbconfig.php';

header('Content-type: application/json');

$sql = "SELECT DISTINCT(gene) FROM functional_prediction ORDER BY gene ASC;";

$result = $conn->query($sql);
$genes = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $genes[] = $row["gene"];
    }
}

$arr = $genes;
echo json_encode($arr);

?>


