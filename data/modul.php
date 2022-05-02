<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}


include('../config/db.php');
session_start();

if ($_GET['action'] == 'selesai') {
    $s_id = mysqli_real_escape_string($conn, $_SESSION['student_id']);
    $m_id = mysqli_real_escape_string($conn, $_POST['module']);
    $sql = "INSERT INTO module_learned (module_id, student_id) VALUES('{$m_id}', '{$s_id}')";
    $query = mysqli_query($conn, $sql);
    if ($query) {
        header("location: ../student/modul.php");
    } else {
        echo mysqli_error($conn);
    }
}

if ($_GET['action'] == 'submitPostTest') {
    $total_soal = 0;
    $jawaban_benar = 0;
    foreach ($_POST as $key => $p) {
        if ($key == 'module') {
        } else {
            $question_id = substr($key, 8);
            $sql = "SELECT * FROM module_question WHERE id = '{$question_id}'";
            $query = mysqli_query($conn, $sql);
            $question = mysqli_fetch_array($query, MYSQLI_ASSOC);
            if ($question['answer'] == $p) {
                $jawaban_benar++;
            }
            $total_soal++;
        }
    }
    $presentasi = $jawaban_benar / $total_soal;
    if ($presentasi > 0.75) {
        // echo "LULUS POST TEST";
        $s_id = mysqli_real_escape_string($conn, $_SESSION['student_id']);
        $m_id = mysqli_real_escape_string($conn, $_POST['module']);
        $sql = "INSERT INTO module_learned (module_id, student_id) VALUES('{$m_id}', '{$s_id}')";
        $query = mysqli_query($conn, $sql);
        if ($query) {
            header("location: ../student/modul.php");
        } else {
            echo mysqli_error($conn);
        }
    } else {
        $_SESSION['gagal_post_test'] = true;
        header("location: ../student/modul.php");
    }
}