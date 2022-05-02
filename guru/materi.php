<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

$id = $_GET['module'];
$sql = "SELECT * FROM module WHERE id = '{$id}'";
$query = mysqli_query($conn, $sql);
$result = mysqli_fetch_array($query, MYSQLI_ASSOC);
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>

<body>

    <div id="elearn-layout" class="theme-purple">
        <!-- sidebar -->
        <?php include('../layout/sidebar.php'); ?>

        <!-- main body area -->
        <div class="main px-lg-4 px-md-4">

            <!-- Body: Header -->
            <?php include('../layout/header.php'); ?>

            <!-- Body: Body -->
            <div class="body d-flex py-lg-2 py-md-2">
                <div class="container-fluid">
                    <h2>Master Modul</h2>
                    <div class="row clearfix g-3 mt-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body">
                                            <div class="mb-3">
                                                <a href="modul.php?subtopik=<?php echo $result['sub_topic_id'] ?>"
                                                    class="btn btn-primary text-decoration-none"><i
                                                        class="bi bi-arrow-left"></i>
                                                    <?php echo $result['module_desc'] ?></a>
                                            </div>
                                            <form action="../data/materi.php?action=simpanMateri" id="formSimpanMateri"
                                                method="POST">
                                                <textarea name="materi" id="materi" class="mb-3"></textarea>
                                                <input type="hidden" name="module" id="module"
                                                    value="<?php echo $id ?>">
                                                <input type="hidden" id="type" value="">
                                                <input type="hidden" id="materi_id">
                                                <div class="my-3 px-3 row">
                                                    <button type="submit" id="saveMateriButton"
                                                        class="btn btn-primary">SIMPAN</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row End -->
                </div>
            </div>

        </div>
    </div>

    <!-- Jquery Core Js -->
    <!-- <script src="../assets/bundles/libscripts.bundle.js"></script> -->

    <!-- Plugin Js-->
    <!-- <script src="../node_modules/owl.carousel2/dist/owl.carousel.min.js"></script>
    <script src="../assets/bundles/apexcharts.bundle.js"></script> -->

    <!-- Jquery Page Js -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="../js/template.js"></script>
    <script src="../js/page/elearn-index.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>

    <script>
    var table;
    $(document).ready(function() {
        CKEDITOR.replace('materi');

        function getMateri() {
            $.ajax({
                url: "../data/materi.php?action=getMateri",
                method: "post",
                data: {
                    module: <?php echo $id ?>,
                },
                dataType: "json",
                success: function(data) {
                    if (data == null) {
                        $('#materi').val("");
                        $('#type').val('1');
                    } else {
                        $('#materi').val(data['materi_desc']);
                        $('#materi_id').val(data['id']);
                        $('#type').val('2');
                    }
                },
                error: function(e) {
                    console.log(e);
                }
            })
        }

        getMateri();

        function simpanMateri() {
            $.ajax({
                url: "../data/materi.php?action=simpanMateri",
                method: "post",
                data: {
                    module: $('#module').val(),
                    materi: CKEDITOR.instances.materi.getData(),
                },
                beforeSend: function(data) {
                    alert(data);
                    $('#saveMateriButton').html(
                        '<img src="../assets/images/loadings.gif" width=22)>');
                    $('#saveMateriButton').prop('disabled');
                },
                success: function(data) {
                    $('#saveMateriButton').prop('disabled', false);
                    $('#saveMateriButton').html('Simpan');
                    getMateri();
                    Swal.fire(
                        '',
                        'Sukses Simpan Materi',
                        'success'
                    );
                },
                error: function(e) {
                    $('#saveMateriButton').prop('disabled', false);
                    console.log(e);
                }
            })
        }

        $('#formSimpanMateri').submit(function() {
            if ($('#type').val() == 1) {
                $.ajax({
                    url: "../data/materi.php?action=simpanMateri",
                    method: "post",
                    data: {
                        module: $('#module').val(),
                        materi: CKEDITOR.instances.materi.getData(),
                    },
                    beforeSend: function(data) {
                        $('#saveMateriButton').html(
                            '<img src="../assets/images/loadings.gif" width=22)>');
                        $('#saveMateriButton').prop('disabled');
                    },
                    success: function(data) {
                        $('#saveMateriButton').prop('disabled', false);
                        $('#saveMateriButton').html('Simpan');
                        getMateri();
                        Swal.fire(
                            '',
                            'Sukses Simpan Materi',
                            'success'
                        );
                    },
                    error: function(e) {
                        $('#saveMateriButton').prop('disabled', false);
                        console.log(e);
                    }
                })
            } else {
                $.ajax({
                    url: "../data/materi.php?action=updateMateri",
                    method: "post",
                    data: {
                        materi_id: $('#materi_id').val(),
                        materi: CKEDITOR.instances.materi.getData(),
                    },
                    beforeSend: function(data) {
                        $('#saveMateriButton').html(
                            '<img src="../assets/images/loadings.gif" width=22)>');
                        $('#saveMateriButton').prop('disabled');
                    },
                    success: function(data) {
                        $('#saveMateriButton').prop('disabled', false);
                        $('#saveMateriButton').html('Simpan');
                        getMateri();
                        Swal.fire(
                            '',
                            'Sukses Simpan Materi',
                            'success'
                        );
                    },
                    error: function(e) {
                        $('#saveMateriButton').prop('disabled', false);
                        console.log(e);
                    }
                })
            }
            return false;
        })

    });
    </script>
</body>

</html>