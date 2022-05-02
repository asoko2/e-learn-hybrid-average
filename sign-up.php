<?php

session_start();
session_destroy();

if (isset($_SESSION['name'])) {
    header('location: index.php');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Register | Adaptive Learning</title>
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <main class="form-signin">
        <form method="POST" action="action/register.php">
            <h1 class="h3 mb-3 fw-normal text-center">Register</h1>
            <?php if (isset($_SESSION['error_message'])) { ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $_SESSION['error_message'] ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php } ?>
            <!-- <input type="text" class="form-control" id="floatingInput" name="login" placeholder="name@example.com"> -->
            <select class="form-select form-select-lg" id="level" name="level" aria-label="Default select example">
                <option selected>--Pilih Jenis User--</option>
                <option value="2">Guru</option>
                <option value="3">Murid</option>
            </select>
            <div id="registerForm" hidden class="my-2">

                <div id="nipForm">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="tipeguru" id="tipeguru1" value="1">
                        <label class="form-check-label" for="tipeguru1">PNS</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="tipeguru" id="tipeguru2" value="2">
                        <label class="form-check-label" for="tipeguru2">Honorer</label>
                    </div>
                    <div id="selectedGuru" hidden>
                        <div class="form-floating" id="nipGroup">
                            <input type="text" class="form-control" id="nip" name="nip" placeholder="NIP">
                            <label for="nip">NIP</label>
                        </div>
                        <div class="form-floating" id="emailGroup">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                            <label for="email">Email</label>
                        </div>
                    </div>

                </div>
                <div class="form-floating" id="nisForm">
                    <input type="text" class="form-control" id="nis" name="nis" placeholder="NIS">
                    <label for="floatingInput">NIS</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Nama" required>
                    <label for="floatingInput">Nama</label>
                </div>
                <div class="form-floating">
                    <textarea type="text" class="form-control" id="floatingInput" name="address"
                        placeholder="name@example.com" required></textarea>
                    <label for="address">Alamat</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="phone_number" name="phone_number"
                        placeholder="0812345678" required>
                    <label for="floatingInput">Phone Number</label>
                </div>
                <!-- <select class="form-select form-select-lg" id="clas_id" name="class_id"
                    aria-label="Default select example" required>
                    <option selected>--Pilih Kelas--</option>
                    <option value="1">A</option>
                    <option value="2">B</option>
                    <option value="3">C</option>
                    <option value="4">D</option>
                    <option value="5">E</option>
                </select> -->
                <div class="form-control checkKelas">
                    <label>Pilih Kelas</label><br />
                    <div class="form-check-inline">
                        <input class="form-check-input" type="checkbox" id="kelas1" name="kelas1" value="1" required>
                        <label class="form-check-label" for="kelas1">A</label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="checkbox" id="kelas2" name="kelas2" value="2" required>
                        <label class="form-check-label" for="kelas1">B</label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="checkbox" id="kelas3" name="kelas3" value="3" required>
                        <label class="form-check-label" for="kelas1">C</label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="checkbox" id="kelas4" name="kelas4" value="4" required>
                        <label class="form-check-label" for="kelas1">D</label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="checkbox" id="kelas5" name="kelas5" value="5" required>
                        <label class="form-check-label" for="kelas1">E</label>
                    </div>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" name="password" id="floatingPassword"
                        placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                </div>

            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
            <hr />
            <a href="sign-in.php" class="btn btn-lg btn-dark w-100" style="text-decoration: none;">Sign In</a>
        </form>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
</body>
<script src="assets/js/jquery.js"></script>
<script>
$(document).ready(function() {
    // alert('ready');
    $('#level').on('change', function() {
        $('#registerForm').removeAttr('hidden').slideDown();
        if ($(this).val() == 2) {
            $('#nipForm').show();
            $('#nisForm').hide();
        } else if ($(this).val() == 3) {
            $('#nisForm').show();
            $('#nipForm').hide();
        }
    })
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
        requiredCheckboxes.on('change', function() {
            if (requiredCheckboxes.is(':checked')) {
                requiredCheckboxes.prop('required', false);
                alert('checkbox checked');
            } else {
                requiredCheckboxes.prop('required', true);
                alert('no checkbox checked');
            }
        })
    })
})
</script>

</html>