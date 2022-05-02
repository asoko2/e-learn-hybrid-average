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
                    <h2>Master Guru</h2>
                    <div class="row clearfix g-3 mt-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body p-5">
                                            <div class="mb-3">
                                                <a href="tambah-Guru.php" class="btn btn-primary" data-bs-toggle="modal"
                                                    data-bs-target="#modalTambahGuru"><i
                                                        class="icofont-plus"></i>&nbsp;Tambah
                                                    Guru</a>
                                            </div>
                                            <div class=" row align-items-center">
                                                <table id="guruTable"
                                                    class="table table-bordered table-striped bg-white"
                                                    style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>Guru</th>
                                                            <th>NIP/Email</th>
                                                            <th>Alamat</th>
                                                            <th>No HP</th>
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

    <!-- Modal Tambah Guru -->
    <div class="modal fade" id="modalTambahGuru" tabindex="-1" aria-labelledby="modalTambahGuruLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="../data/guru.php?action=tambahGuru" method="POST" id="formtambahGuru">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTambahGuruLabel">Tambah Guru</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div id="nipForm">
                            <div class="mb-3">
                                <label for="kelas" class="col-sm-2 col-form-label">Tipe Guru</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="tipeguru" id="tipeguru1"
                                        value="1">
                                    <label class="form-check-label" for="tipeguru1">PNS</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="tipeguru" id="tipeguru2"
                                        value="2">
                                    <label class="form-check-label" for="tipeguru2">Honorer</label>
                                </div>
                            </div>
                            <div id="selectedGuru" hidden>
                                <div class="mb-3 row" id="nipGroup">
                                    <label for="nip" class="col-sm-2 col-form-label">NIP</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="nip">
                                    </div>
                                </div>
                                <div class="mb-3 row" id="emailGroup">
                                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="email">
                                    </div>
                                </div>
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
                        <div class="mb-3 checkKelas">
                            <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas1" name="kelas1" value="1"
                                    required>
                                <label class="form-check-label" for="kelas1">A</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas2" name="kelas2" value="2"
                                    required>
                                <label class="form-check-label" for="kelas1">B</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas3" name="kelas3" value="3"
                                    required>
                                <label class="form-check-label" for="kelas1">C</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas4" name="kelas4" value="4"
                                    required>
                                <label class="form-check-label" for="kelas1">D</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas5" name="kelas5" value="5"
                                    required>
                                <label class="form-check-label" for="kelas1">E</label>
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

    <!-- Modal Edit Guru -->
    <div class="modal fade" id="modalEditGuru" tabindex="-1" aria-labelledby="modalEditGuruLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="../data/guru.php?action=editGuru" method="POST" id="formEditGuru">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalEditGuruLabel">Edit Guru</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id" id="idGuru" value="" />
                        <input type="hidden" name="tipeGuruEdit" id="tipeGuruEdit" value="" />
                        <div id="nipFormEdit">
                            <div id="selectedGuruEdit">
                                <div class="mb-3 row" id="nipGroupEdit">
                                    <label for="nipEdit" class="col-sm-2 col-form-label">NIP</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="nipEdit" id="nipEdit" readonly>
                                    </div>
                                </div>
                                <div class="mb-3 row" id="emailGroupEdit">
                                    <label for="emailEdit" class="col-sm-2 col-form-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="emailEdit" id="emailEdit"
                                            readonly>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="mb-3 row">
                            <label for="namaEdit" class="col-sm-2 col-form-label">Nama</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="namaEdit" id="namaEdit" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="alamatEdit" class="col-sm-2 col-form-label">Alamat</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="alamatEdit" id="alamatEdit" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="no_hpEdit" class="col-sm-2 col-form-label">No. HP</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="no_hpEdit" id="no_hpEdit" required>
                            </div>
                        </div>
                        <div class="mb-3 checkKelasEdit">
                            <label for="kelasEdit" class="col-sm-2 col-form-label">Kelas</label>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas1Edit" name="kelas1Edit"
                                    value="1" required>
                                <label class="form-check-label" for="kelas1">A</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas2Edit" name="kelas2Edit"
                                    value="2" required>
                                <label class="form-check-label" for="kelas1">B</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas3Edit" name="kelas3Edit"
                                    value="3" required>
                                <label class="form-check-label" for="kelas1">C</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas4Edit" name="kelas4Edit"
                                    value="4" required>
                                <label class="form-check-label" for="kelas1">D</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="checkbox" id="kelas5Edit" name="kelas5Edit"
                                    value="5" required>
                                <label class="form-check-label" for="kelas1">E</label>
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
        table = $('#guruTable').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "../data/guru.php?action=getGuru",
                "dataType": "json",
                "type": "POST",
            },
            "columnDefs": [ //Set column definition initialisation properties.
                {
                    "targets": [0, 2], //first column / numbering column
                    "orderable": false, //set not orderable
                },
            ],
            "columns": [{
                    data: "no",
                    name: "no"
                },
                {
                    data: "guru",
                    name: "guru"
                },
                {
                    data: "nip",
                    name: "nip",
                },
                {
                    data: "alamat",
                    name: "alamat",
                },
                {
                    data: "no_hp",
                    namae: "no_hp",
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

        //Function on Tambah Guru Modal
        $('input[type=radio][name=tipeguru]').change(function() {
            $('#selectedGuru').removeAttr('hidden');
            if ($(this).val() == 1) {
                $('#nipGroup').show();
                $('#emailGroup').hide();
            } else {
                $('#nipGroup').hide();
                $('#emailGroup').show();

            }
        })

        $(function() {
            var requiredCheckboxes = $('.checkKelas :checkbox[required]');
            var requiredCheckboxesEdit = $('.checkKelasEdit :checkbox[required]');
            requiredCheckboxes.on('change', function() {
                if (requiredCheckboxes.is(':checked')) {
                    requiredCheckboxes.prop('required', false);
                } else {
                    requiredCheckboxes.prop('required', true);
                }
            })

            requiredCheckboxesEdit.on('change', function() {
                if (requiredCheckboxesEdit.is(':checked')) {
                    requiredCheckboxesEdit.prop('required', false);
                } else {
                    requiredCheckboxesEdit.prop('required', true);
                }
            })
        })


        $('#formtambahGuru').submit(function() {
            $.ajax({
                url: "../data/guru.php?action=tambahGuru",
                method: "POST",
                data: $('#formtambahGuru').serialize(),
                success: function(data) {
                    Swal.fire(
                        '',
                        'Sukses Tambah Guru',
                        'success'
                    );
                    table.ajax.reload();
                    $('#fomrtambahGuru').trigger("reset");
                    $('#modalTambahGuru').modal('hide');
                },
                error: function(e) {
                    console.log(e)
                }
            })
            return false;
        })

        $('#guruTable').on('click', '#btn-edit', function() {
            $.ajax({
                url: "../data/guru.php?action=getGuruById",
                method: "post",
                type: "ajax",
                data: {
                    id: $(this).attr('data'),
                },
                dataType: "json",
                success: function(data) {
                    $('#kelas1Edit').prop('checked', false);
                    $('#kelas2Edit').prop('checked', false);
                    $('#kelas3Edit').prop('checked', false);
                    $('#kelas4Edit').prop('checked', false);
                    $('#kelas5Edit').prop('checked', false);
                    $('#idGuru').val(data['id']);
                    $('#nipEdit').val(data['nip']);
                    $('#emailEdit').val(data['email']);
                    $('#namaEdit').val(data['nama']);
                    $('#alamatEdit').val(data['alamat']);
                    $('#no_hpEdit').val(data['no_hp']);
                    $('#editKelas').val(data['kelas']);
                    if (data['kelas1'] != null) {
                        $('#kelas1Edit').prop('checked', true);
                    }
                    if (data['kelas2'] != null) {
                        $('#kelas2Edit').prop('checked', true);
                    }
                    if (data['kelas3'] != null) {
                        $('#kelas3Edit').prop('checked', true);
                    }
                    if (data['kelas4'] != null) {
                        $('#kelas4Edit').prop('checked', true);
                    }
                    if (data['kelas5'] != null) {
                        $('#kelas5Edit').prop('checked', true);
                    }
                    $('#tipeGuruEdit').val(data['tipeguru']);
                    if (data['tipeguru'] == 1) {
                        $('#nipGroupEdit').show();
                        $('#emailGroupEdit').hide();
                    } else {
                        $('#nipGroupEdit').hide();
                        $('#emailGroupEdit').show();
                    }

                    var requiredCheckboxesEdit = $('.checkKelasEdit :checkbox[required]');
                    if (requiredCheckboxesEdit.is(':checked')) {
                        requiredCheckboxesEdit.prop('required', false);
                    } else {
                        requiredCheckboxesEdit.prop('required', true);
                    }
                },
                error: function(e) {
                    console.log(e);
                }
            })
            $('#modalEditGuru').modal('show');
        })

        $('#formEditGuru').submit(function() {
            $.ajax({
                url: '../data/guru.php?action=editGuru',
                method: "post",
                type: "ajax",
                data: $('#formEditGuru').serialize(),
                success: function(data) {
                    Swal.fire(
                        '',
                        'Update Guru Berhasil',
                        'success'
                    );
                    table.ajax.reload();
                    $('#modalEditGuru').modal('hide');
                },
                error: function(e) {
                    console.log(e);
                }
            });
            return false;
        })

        $('#guruTable').on('click', '#btn-delete', function() {

            Swal.fire({
                title: "Konfirmasi Hapus Guru?!",
                text: "Apakah anda yakin untuk manghapus data Guru ini?",
                icon: 'warning',
                showDenyButton: true,
                confirmButtonText: 'Ya!',
                denyButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '../data/guru.php?action=hapusGuru',
                        method: 'post',
                        type: 'ajax',
                        data: {
                            id: $(this).attr('data')
                        },
                        success: function(data) {
                            Swal.fire(
                                '',
                                'Hapus Guru Berhasil',
                                'success'
                            );
                            table.ajax.reload();
                            $('#modalEditGuru').modal('hide');
                        },
                        error: function(e) {
                            console.log(e);
                        }
                    })
                } else {
                    Swal.fire(
                        'Cancelled',
                        'Hapus Guru Dibatalkan',
                        'error'
                    );
                }
            })
        })

        $('#guruTable').on('click', '#btn-delete', function() {

            Swal.fire({
                title: "Konfirmasi Hapus Guru?!",
                text: "Apakah anda yakin untuk manghapus data Guru ini?",
                icon: 'warning',
                showDenyButton: true,
                confirmButtonText: 'Ya!',
                denyButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '../data/guru.php?action=hapusGuru',
                        method: 'post',
                        type: 'ajax',
                        data: {
                            id: $(this).attr('data')
                        },
                        success: function(data) {
                            Swal.fire(
                                '',
                                'Hapus Guru Berhasil',
                                'success'
                            );
                            table.ajax.reload();
                            $('#modalEditGuru').modal('hide');
                        },
                        error: function(e) {
                            console.log(e);
                        }
                    })
                } else {
                    Swal.fire(
                        'Cancelled',
                        'Hapus Guru Dibatalkan',
                        'error'
                    );
                }
            })
        })
    });
    </script>
</body>

</html>