<?php
require_once('config.php');
$sql = "select * from landing_page order by landing_id desc";
$result = mysqli_query($conn, $sql);
if (!$result) {
    die("Selected Erorr");
}
while ($row = mysqli_fetch_assoc($result)) {
    $id = $row['landing_id'];
    $main_text = $row['main_text'];
    $sub_text = $row['sub_text'];
    $image = $row['image'];
    echo "
                    <div class='jumbotron d-flex align-items-center' style='background-color:#FFC5B8 '>
                    <div class='container text-center'>
                        <h1 class='display-2 mb-4'>$main_text</h1>
                        <p> $sub_text </p>
                    </div>
                    </div>
                    ";
}
mysqli_close($conn);
?>







<section id="gtco-who-we-are" class="bg-white">
    <div class="container">
        <div class="section-content">
            <div class="title-wrap">
                <h2 class="section-title">Our <b>responsibility</b> towards society</h2>
                <p class="section-sub-title"> Start exploring our platform and experience the benefits firsthand. Together, we can<br> create a healthier and more vibrant culinary world.</p>
            </div>

            <div class="row text-center">
                <div class="col-md-4 col-sm-6 ">
                    <img class="colord_icons rounded-circle" src="icons/shield.svg" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4"><b>Accountability and Continuous Improvement</b></h5>
                    <p>Our website encourages food service providers to be accountable for their cleanliness standards. By holding them to certain cleanliness criteria and making inspection reports public</p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6 ">
                    <img class="colord_icons rounded-circle" src="icons/palet.svg" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4"><b>Promoting Food Safety and Public Health</b></h5>
                    <p>Our website's responsibility to society includes promoting food safety and public health. By monitoring and reporting on the cleanliness of food service providers</p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6 ">
                    <img class="colord_icons rounded-circle" src="icons/Transparency.svg" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4"><b>Transparency and Informed Decision-Making</b></h5>
                    <p>Our job is to provide transparency to consumers. When people access information about the cleanliness of food establishments, they make informed choices about where they dine </p>
                </div>
                <!-- /.col-md-4 col-sm-6  -->
            </div>
            <!-- /.row -->
        </div>
    </div>
</section>