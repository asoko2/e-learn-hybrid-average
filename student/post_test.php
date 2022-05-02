<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

$modul = mysqli_real_escape_string($conn, $_GET['module']);
$sql = "SELECT * from module where id = '{$modul}'";
$query = mysqli_query($conn, $sql);
$modul = mysqli_fetch_array($query, MYSQLI_ASSOC);
?>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: e-Learn:: Education Dashboard </title>
    <link rel="icon" href="../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="../node_modules/owl.carousel2/dist/assets/owl.carousel.min.css" />
    <!-- project css file  -->
    <link rel="stylesheet" href="../assets/css/e-learn.style.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="../assets/css/style.css?v=<?php echo date("yymmdd") ?>" rel="stylesheet" />
</head>

<body>

    <div id="elearn-layout " class="theme-purple mx-auto">

        <!-- main body area -->
        <div class="main px-lg-4 px-md-4">

            <!-- Body: Header -->
            <?php include('../layout/header.php'); ?>

            <!-- Body: Body -->
            <div class="body d-flex py-lg-2 py-md-2">
                <div class="container-fluid">
                    <div class="text-center">
                        <h2>POST TEST</h2>
                        <h4><?php echo $modul['module_desc'] ?></h4>
                    </div>
                    <div class="row g-3 mt-3">
                        <div class="col-lg-12 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body p-5">
                                            <form action="../data/modul.php?action=submitPostTest" method="POST">
                                                <input type="hidden" name="module"
                                                    value="<?php echo $_GET['module'] ?>">
                                                <?php
                                                //GET QUESTION
                                                $sql = "SELECT * FROM module_question WHERE module_id = '{$_GET['module']}' ORDER BY RAND()";
                                                $query = mysqli_query($conn, $sql);
                                                $result = mysqli_fetch_all($query, MYSQLI_ASSOC);
                                                $no = 1;
                                                foreach ($result as $key => $r) { ?>
                                                <div class="row my-1">
                                                    <div class="col text-center">
                                                        <strong><?php echo $no; ?>.</strong>
                                                    </div>
                                                    <div class="col-11">
                                                        <strong><?php echo $r['question'] ?></strong>
                                                    </div>
                                                </div>
                                                <div class="row my-1">
                                                    <div class="col-11 offset-1">
                                                        <?php
                                                            $sql = "SELECT * FROM module_question_choice WHERE question_id = '{$r['id']}'";
                                                            $query = mysqli_query($conn, $sql);
                                                            $answer = mysqli_fetch_all($query, MYSQLI_ASSOC);
                                                            foreach ($answer as $key => $a) { ?>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio"
                                                                name="question<?php echo $r['id'] ?>"
                                                                value="<?php echo $a['id'] ?>" required>
                                                            <label class="form-check-label"
                                                                for="tipeguru1"><?php echo $a['answer_desc'] ?></label>
                                                        </div>
                                                        <?php }
                                                            ?>
                                                    </div>
                                                </div>
                                                <?php $no++;
                                                }
                                                ?>
                                                <div class="row my-4">
                                                    <div class="col-11 offset-1">
                                                        <button type="submit"
                                                            class="btn btn-success col-md-12">SELESAI</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Row End -->
                </div>
            </div>

        </div>
    </div>

    <!-- Jquery Page Js -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="../js/template.js"></script>
    <script src="../js/page/elearn-index.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    var table;
    $(document).ready(function() {});
    </script>
</body>

</html>