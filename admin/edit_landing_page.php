<?php
require_once('app_nav.php');
require_once('nav.php');
?>
<!-- main change -->
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="margin-top: 80px;">
    <h2>Edit Landing Page Content</h2>
    <hr>
    <?php
    $landing_id = $_GET['val'];
    require_once('../config.php');
    $sql = "select * from landing_page where landing_id = '$landing_id'";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Selected Erorr");
    }
    while ($row = mysqli_fetch_assoc($result)) {
        $id = $row['landing_id'];
        $main_text = $row['main_text'];
        $sub_text = $row['sub_text'];
        echo "
        <form name='landing' id='edit_landing' action='' method='POST' enctype='multipart/form-data'>
        <div class='table-responsive'>
            <table class='table'>
                <tr>
                    <td><label class='form-label'>Main Text:</label></td>
                    <td><input class='form-control' id='main' type='text' value='$main_text' name='main_text'></td>
                </tr>
                <tr>
                    <td><label>Sub Text:</label></td>
                    <td><input class='form-control' id='sub' type='text' value='$sub_text' name='sub_text'>
                    </td>
                </tr>
              
                <tr>
                    <td><input type='hidden' name='landing_id' value = '$id'></td>
                    <td>
                        <input class='btn btn-success' type='submit' value='Save' name='save_edit'>
                        <a href='./landing_page.php' class='btn btn-success'>Back</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
        ";
    }
    ?>
    <?php
    if (isset($_POST['save_edit'])) {
        require_once('../config.php');
        $id = $_POST['landing_id'];
        $main_text = $_POST['main_text'];
        $sub_text = $_POST['sub_text'];
        
            $sql = "UPDATE `landing_page` SET `main_text` = '$main_text', `sub_text` = '$sub_text'  WHERE `landing_page`.`landing_id` = $id";
        
        if (!$result = mysqli_query($conn, $sql)) {
            echo "Update Error" . mysqli_error($conn);
        } 
    }

    
    ?>
</main>
<!-- end main  -->
<?php
require_once('footer.php');
?>