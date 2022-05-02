<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}
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
                    <h2>Master Murid</h2>
                    <div class="row clearfix g-3 mt-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body p-5">
                                            <div class="mb-3">
                                                <a href="tambah-Murid.php" class="btn btn-primary"
                                                    data-bs-toggle="modal" data-bs-target="#modalTambahMurid"><i
                                                        class="icofont-plus"></i>&nbsp;Tambah
                                                    Murid</a>
                                            </div>
                                            <div class=" row align-items-center">
                                                <table id="muridTable"
                                                    class="table table-bordered table-striped bg-white"
                                                    style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>Murid</th>
                                                            <th>NIS/Login</th>
                                                            <th>Alamat</th>
                                                            <th>Kelas</th>
                                                            <th>Aksi</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
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

    <!-- Modal Tambah Murid -->
    <div class="modal fade" id="modalTambahMurid" tabindex="-1" aria-labelledby="modalTambahMuridLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="../data/murid.php?action=tambahMurid" method="POST" id="formtambahMurid">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTambahMuridLabel">Tambah Murid</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3 row">
                            <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nis" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nama" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="alamat" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="no_hp" class="col-sm-2 col-form-label">No. HP</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="no_hp" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="kelas" required>
                                    <option value="">-- Pilih Kelas --</option>
                                    <?php
                                    $query = mysqli_query($conn, "SELECT * FROM class");
                                    $result = mysqli_fetch_all($query, MYSQLI_ASSOC);

                                    foreach ($result as $r) { ?>
                                    <option value="<?php echo $r['id'] ?>"><?php echo $r['class_name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="password" required>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-info text-white">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal Edit Murid -->
    <div class="modal fade" id="modalEditMurid" tabindex="-1" aria-labelledby="modalEditMuridLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="../data/murid.php?action=editMurid" method="POST" id="formEditMurid">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalEditMuridLabel">Edit Murid</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id" id="idMurid" value="" />
                        <div class="mb-3 row">
                            <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="editNis" id="editNis" readonly>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="editNama" id="editNama" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="editAlamat" id="editAlamat" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="no_hp" class="col-sm-2 col-form-label">No. HP</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="edit_no_hp" id="edit_no_hp" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="editKelas" id="editKelas" required>
                                    <option value="">-- Pilih Kelas --</option>
                                    <?php
                                    $query = mysqli_query($conn, "SELECT * FROM class");
                                    $result = mysqli_fetch_all($query, MYSQLI_ASSOC);

                                    foreach ($result as $r) { ?>
                                    <option value="<?php echo $r['id'] ?>"><?php echo $r['class_name'] ?></option>
                                    <?php }

                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-info text-white">Simpan</button>
                    </div>
                </form>
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
    <script>
    var table;
    $(document).ready(function() {
        table = $('#muridTable').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "../data/murid.php?action=getMurid",
                "dataType": "json",
                "type": "POST",
            },
            "columnDefs": [ //Set column definition initialisation properties.
                {
                    "targets": [0, 4, 5], //first column / numbering column
                    "orderable": false, //set not orderable
                },
            ],
            "columns": [{
                    data: "no",
                    name: "no"
                },
                {
                    data: "murid",
                    name: "murid"
                },
                {
                    data: "nis",
                    name: "nis",
                },
                {
                    data: "alamat",
                    name: "alamat",
                },
                {
                    data: "kelas",
                    name: "kelas",
                }, {
                    data: "action",
                    name: "action"
                }
            ]
        });


        $('#formtambahMurid').submit(function() {
            $.ajax({
                url: "../data/murid.php?action=tambahMurid",
                method: "POST",
                data: $('#formtambahMurid').serialize(),
                success: function(data) {
                    Swal.fire(
                        '',
                        'Sukses Tambah Murid',
                        'success'
                    );
                    table.ajax.reload();
                    $('#modalTambahMurid').modal('hide');
                },
                error: function(e) {
                    console.log(e)
                }
            })
            return false;
        })

        $('#muridTable').on('click', '#btn-edit', function() {
            $.ajax({
                url: "../data/murid.php?action=getMuridById",
                method: "post",
                type: "ajax",
                data: {
                    id: $(this).attr('data'),
                },
                dataType: "json",
                success: function(data) {
                    console.log(data);
                    $('#idMurid').val(data['id']);
                    $('#editNis').val(data['nis']);
                    $('#editNama').val(data['nama']);
                    $('#editAlamat').val(data['alamat']);
                    $('#edit_no_hp').val(data['no_hp']);
                    $('#editKelas').val(data['kelas']);
                },
                error: function(e) {
                    console.log(e);
                }
            })
            $('#modalEditMurid').modal('show');
        })

        $('#formEditMurid').submit(function() {
            $.ajax({
                url: '../data/murid.php?action=editMurid',
                method: "post",
                type: "ajax",
                data: $('#formEditMurid').serialize(),
                success: function(data) {
                    Swal.fire(
                        '',
                        'Update Murid Berhasil',
                        'success'
                    );
                    table.ajax.reload();
                    $('#modalEditMurid').modal('hide');
                },
                error: function(e) {
                    console.log(e);
                }
            });
            return false;
        })

        $('#muridTable').on('click', '#btn-delete', function() {

            Swal.fire({
                title: "Konfirmasi Hapus Murid?!",
                text: "Apakah anda yakin untuk manghapus data Murid ini?",
                icon: 'warning',
                showDenyButton: true,
                confirmButtonText: 'Ya!',
                denyButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '../data/murid.php?action=hapusMurid',
                        method: 'post',
                        type: 'ajax',
                        data: {
                            id: $(this).attr('data')
                        },
                        success: function(data) {
                            Swal.fire(
                                '',
                                'Hapus Murid Berhasil',
                                'success'
                            );
                            table.ajax.reload();
                            $('#modalEditMurid').modal('hide');
                        },
                        error: function(e) {
                            console.log(e);
                        }
                    })
                } else {
                    Swal.fire(
                        'Cancelled',
                        'Hapus Murid Dibatalkan',
                        'error'
                    );
                }
            })
        })

        $('#muridTable').on('click', '#btn-delete', function() {

            Swal.fire({
                title: "Konfirmasi Hapus Murid?!",
                text: "Apakah anda yakin untuk manghapus data Murid ini?",
                icon: 'warning',
                showDenyButton: true,
                confirmButtonText: 'Ya!',
                denyButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '../data/murid.php?action=hapusMurid',
                        method: 'post',
                        type: 'ajax',
                        data: {
                            id: $(this).attr('data')
                        },
                        success: function(data) {
                            Swal.fire(
                                '',
                                'Hapus Murid Berhasil',
                                'success'
                            );
                            table.ajax.reload();
                            $('#modalEditMurid').modal('hide');
                        },
                        error: function(e) {
                            console.log(e);
                        }
                    })
                } else {
                    Swal.fire(
                        'Cancelled',
                        'Hapus Murid Dibatalkan',
                        'error'
                    );
                }
            })
        })
    });
    </script>
</body>

</html>