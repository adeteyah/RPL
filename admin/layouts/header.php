<?php
session_start();
include('../server/kurs.php');
include('../server/connection.php');

if (!isset($_SESSION['admin_logged_in'])) {
    header('location: login.php');
}
?>

<?php
$query_total_orders = "SELECT COUNT(*) AS total_orders FROM orders";
$stmt_total_orders = $conn->prepare($query_total_orders);
$stmt_total_orders->execute();
$stmt_total_orders->bind_result($total_orders);
$stmt_total_orders->store_result();
$stmt_total_orders->fetch();

$query_total_payments = "SELECT SUM(o.order_cost) AS total_payments FROM payments p, orders o WHERE p.order_id = o.order_id";
$stmt_total_payments = $conn->prepare($query_total_payments);
$stmt_total_payments->execute();
$stmt_total_payments->bind_result($total_payments);
$stmt_total_payments->store_result();
$stmt_total_payments->fetch();

$query_total_paid = "SELECT COUNT(*) AS total_paid FROM orders WHERE order_status = 'delivered' OR order_status = 'shipped' OR order_status = 'paid'";
$stmt_total_paid = $conn->prepare($query_total_paid);
$stmt_total_paid->execute();
$stmt_total_paid->bind_result($total_paid);
$stmt_total_paid->store_result();
$stmt_total_paid->fetch();

$query_total_not_paid = "SELECT COUNT(*) AS total__not_paid FROM orders WHERE order_status = 'not paid'";
$stmt_total_not_paid = $conn->prepare($query_total_not_paid);
$stmt_total_not_paid->execute();
$stmt_total_not_paid->bind_result($total_not_paid);
$stmt_total_not_paid->store_result();
$stmt_total_not_paid->fetch();
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php include('sidebar.php') ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">

                <?php include('topbar.php') ?>