<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/bootstrap-rtl.min.css">
    <title>برندگان</title>
    <style>
        img{
            opacity: 0.4;
        }
        .page-title{
            margin-top: 20px;
            color: rgb(180,1,180);
        }
        .card-name{
            color: rgb(180, 1, 180);  
        }
        .card-detail{
            color: orange;
        }
    </style>
</head>

<!--  Start Header Section  -->
<div class="page-header-section">
    <div class="text-center">
        <h1 class="page-title">معرفی برندگان مسابقات آنلاین نارنج</h1>
    </div>
</div>


<div class="container my-4">
    <div class="row text-center">

<?php
    // Create a connection
    $conn = mysqli_connect("localhost","root", "", "nareng");      

        $result = mysqli_query($conn,"SELECT * FROM children");
    ?>
    <?php
    if (mysqli_num_rows($result) > 0) {
    ?>
    <?php
    $i=0;
    while($row = mysqli_fetch_array($result)) {
    ?>
        <div class="col-xs-6 col-md-3 mb-5">
                <div class="card">
                    <?php
                        if($row["gender"]=="0")
                            echo '<img src="../image/wuser.png" class="img-fluid card-img-top teacher-img p-4">';
                        else if($row["gender"]=="1")
                            echo '<img src="../image/muser.png" class="img-fluid card-img-top teacher-img p-4">';
                    ?>

                    <div class="card-body">
                        <h2 class="card-title card-name h3"><?php echo $row["name"]; ?></h2>
                    <div class="post_details my-1">
                        <h5 class="card-title card-detail"> برنده مسابقه <?php echo $row["subject"]; ?></h5>
                        <h5 class="card-title card-detail"> <?php echo $row["age"]; ?> ساله </h5>
                        <h5 class="card-title card-detail"> از شهر <?php echo $row["city"]; ?></h5>
                    </div>
                </div>
            </div>
        </div>
    <?php
    $i++;
    }
    ?>


    <?php
    }
    else{
    echo "No result found";
    }
    ?>

    </div>
</div>

<script src="../js/bootstrap.js"></script>