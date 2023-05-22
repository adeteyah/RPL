<?php
ob_start();
include('layouts/header.php');
?>

<?php
if (isset($_GET['product_id'])) {
    $product_id = $_GET['product_id'];
    $query_get_product_detail = "SELECT * FROM products WHERE product_id = ?";
    $stmt_get_product = $conn->prepare($query_get_product_detail);
    $stmt_get_product->bind_param('i', $product_id);
    $stmt_get_product->execute();
    $products = $stmt_get_product->get_result();

} else if (isset($_POST['save_btn'])) {
    $product_id = $_POST['input_product_id'];
    $product_name = $_POST['input_product_name'];
    $product_brand = $_POST['input_product_brand'];
    $product_category = $_POST['input_product_category'];
    $product_description = $_POST['input_product_description'];
    $product_criteria = $_POST['input_product_criteria'];
    $product_price = $_POST['input_product_price'];
    $product_special_offer = $_POST['input_product_special_offer'];
    $product_color = $_POST['input_product_color'];

    //image get
    $product_image1 = $_FILES['input_product_image1']['tmp_name'];
    $product_image2 = $_FILES['input_product_image2']['tmp_name'];
    $product_image3 = $_FILES['input_product_image3']['tmp_name'];
    $product_image4 = $_FILES['input_product_image4']['tmp_name'];

    // Images name
    $image_name1 = str_replace(' ', '_', $product_name) . "1.jpg";
    $image_name2 = str_replace(' ', '_', $product_name) . "2.jpg";
    $image_name3 = str_replace(' ', '_', $product_name) . "3.jpg";
    $image_name4 = str_replace(' ', '_', $product_name) . "4.jpg";

    // Upload image
    move_uploaded_file($product_image1, "../img/product/" . $image_name1);
    move_uploaded_file($product_image2, "../img/product/" . $image_name2);
    move_uploaded_file($product_image3, "../img/product/" . $image_name3);
    move_uploaded_file($product_image4, "../img/product/" . $image_name4);

    $query_update_status = "UPDATE `products` SET 
    `product_name` = ?, 
    `product_brand` = ?, 
    `product_category` = ?, 
    `product_description` = ?,
    `product_criteria` = ?, 
    `product_image1` = ?, 
    `product_image2` = ?, 
    `product_image3` = ?, 
    `product_image4` = ?, 
    `product_price` = ?, 
    `special_offer` = ?, 
    `product_color` = ? WHERE `products`.`product_id` = ?;";
    $stmt_insert_product = $conn->prepare($query_update_status);

    $stmt_insert_product->bind_param(
        'sssssssssssi',
        $product_name,
        $product_brand,
        $product_category,
        $product_description,
        $product_criteria,
        $image_name1,
        $image_name2,
        $image_name3,
        $image_name4,
        $product_price,
        $product_special_offer,
        $product_color,
    );

    if ($stmt_insert_product->execute()) {
        header('location: products.php?success_create_message=Product has been created successfully');
    } else {
        header('location: products.php?fail_create_message=Could not create product!');
    }
} else {
    header('location: orders.php');
    exit;
}
?>

<!-- <?php
$query_orders = "SELECT o.order_id, o.order_cost, o.order_status, u.user_name, o.user_address, o.order_date FROM `orders` o, `users` u WHERE o.user_id = u.user_id ORDER BY o.order_date DESC";

$stmt_orders = $conn->prepare($query_orders);
$stmt_orders->execute();
$orders = $stmt_orders->get_result();
?> -->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Edit Product</h1>
    <nav class="mt-4 rounded" aria-label="breadcrumb">
        <ol class="breadcrumb px-3 py-2 rounded mb-4">
            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
            <li class="breadcrumb-item active">Edit Product</li>
        </ol>
    </nav>

    <?php foreach ($products as $product) { ?>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Edit Product</h6>
            </div>
            <div class="card-body">
                <?php if (isset($_GET['success_status'])) { ?>
                    <div class="alert alert-info" role="alert">
                        <?php if (isset($_GET['success_status'])) {
                            echo $_GET['success_status'];
                        } ?>
                    </div>
                <?php } ?>
                <?php if (isset($_GET['fail_status'])) { ?>
                    <div class="alert alert-danger" role="alert">
                        <?php if (isset($_GET['fail_status'])) {
                            echo $_GET['fail_status'];
                        } ?>
                    </div>
                <?php } ?>
                <form action="edit_product.php" method="post" enctype="multipart/form-data">
                    <input name="input_product_id" type="hidden" value="<?= $product['product_id'] ?>">
                    <div class="form-group row">
                        <label for="i_product_name" class="col-sm-2 col-form-label">Product Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_name" name="input_product_name"
                                value="<?= $product['product_name'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_brand" class="col-sm-2 col-form-label">Product Brand</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_brand" name="input_product_brand"
                                value="<?= $product['product_brand'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_category" class="col-sm-2 col-form-label">Product Category</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_category" name="input_product_category"
                                value="<?= $product['product_category'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_description" class="col-sm-2 col-form-label">Product Description</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_description"
                                name="input_product_description" value="<?= $product['product_description'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_criteria" class="col-sm-2 col-form-label">Product Criteria</label>
                        <div class="col-sm-10">
                            <select name="input_product_criteria" id="i_product_criteria" class="form-control">
                                <option selected disabled>Choose...</option>
                                <option value="Accessories">Accessories</option>
                                <option value="Torso">Torso</option>
                                <option value="Bottom">Bottom</option>
                                <option value="Bag">Bag</option>
                                <option value="Luxury">Luxury</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_image1" class="col-sm-2 col-form-label">Image 1</label>
                        <div class="col-sm-10">
                            <input accept="image/png, image/jpeg" name="input_product_image1" type="file"
                                class="form-control-file" id="i_image1">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_image2" class="col-sm-2 col-form-label">Image 2</label>
                        <div class="col-sm-10">
                            <input accept="image/png, image/jpeg" name="input_product_image2" type="file"
                                class="form-control-file" id="i_image2">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_image3" class="col-sm-2 col-form-label">Image 3</label>
                        <div class="col-sm-10">
                            <input accept="image/png, image/jpeg" name="input_product_image3" type="file"
                                class="form-control-file" id="i_image3">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_image4" class="col-sm-2 col-form-label">Image 4</label>
                        <div class="col-sm-10">
                            <input accept="image/png, image/jpeg" name="input_product_image4" type="file"
                                class="form-control-file" id="i_image4">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_price" class="col-sm-2 col-form-label">Product Price</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_price" name="input_product_price"
                                value="<?= $product['product_price'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_special_offer" class="col-sm-2 col-form-label">Special Offer</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_special_offer" name="input_product_special_offer"
                                value="<?= $product['special_offer'] ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="i_product_color" class="col-sm-2 col-form-label">Product Color</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="i_product_color" name="input_product_color"
                                value="<?= $product['product_color'] ?>">
                        </div>
                    </div>
                    <input name="save_btn" class="btn btn-primary w-100 mt-4" type="submit" value="Save">
                </form>
            </div>
        </div>

    <?php } ?>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<?php include('layouts/footer.php'); ?>