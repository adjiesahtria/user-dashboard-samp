<?php
if (!isset($_SESSION['ucp_id']) || empty($_SESSION['ucp_name'])) {
    header('Location: login.php');
    exit;
}
?>