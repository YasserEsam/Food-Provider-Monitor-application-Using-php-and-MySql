<?php
require_once('app_nav.php');
require_once('nav.php');
?>
<!-- main change -->
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="margin-top: 80px;">
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Landing Page</h1>
    </div>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Main Text</th>
                    <th scope="col">Sub Text</th>
                    <th scope="col">Edit</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php
                require_once('../config.php');
                $sql = "select * from landing_page order by landing_id desc";
                $result = mysqli_query($conn, $sql);
                if (!$result) {
                    die("Selected Error: " . mysqli_error($conn));
                }
                while ($row = mysqli_fetch_assoc($result)) {
                    $id = $row['landing_id'];
                    $main_text = $row['main_text'];
                    $sub_text = $row['sub_text'];
                    $image = $row['image'];
                    echo "
                    <tr>
                      <td>$id</td>
                      <td>$main_text</td>
                      <td>$sub_text</td>

                   
                      <td><a href='./edit_landing_page.php?val=$id' class='btn btn-info'>Edit</a></td>

                    </tr>
                    
                    ";
                }
                mysqli_close($conn);
                ?>
            </tbody>
        </table>
    </div>

    <!-- Modal for image expansion -->
    <div class="modal" id="imageModal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <img id="expandedImage" alt="Expanded Image">
        </div>
    </div>

    <script>
        // JavaScript to handle image expansion
        const imagePopups = document.querySelectorAll('.image-popup');

        imagePopups.forEach(imagePopup => {
            imagePopup.addEventListener('click', function() {
                const modalId = this.getAttribute('data-modal-id');
                const modal = document.getElementById('imageModal');
                const expandedImage = document.getElementById('expandedImage');

                modal.style.display = 'block';
                expandedImage.src = this.src;

                document.getElementById('closeModal').addEventListener('click', function() {
                    modal.style.display = 'none';
                });
            });
        });
    </script>
</main>
<!-- end main  -->
<?php
require_once('footer.php');
?>