<?php
/* ============================================
   LOGOUT
   ============================================ */

// ============================================
// INISIALISASI SESSION
// ============================================
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// ============================================
// HAPUS SEMUA DATA SESSION
// ============================================

// 1. Kosongkan array session
$_SESSION = array();

// 2. Hapus session cookie (opsional tapi direkomendasikan)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(),
        '',
        time() - 42000,
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
    );
}

// 3. Hancurkan session
session_destroy();

// ============================================
// HAPUS FLASH MESSAGE (jika ada)
// ============================================
if (isset($_SESSION)) {
    unset($_SESSION['flash_message']);
}

// ============================================
// REDIRECT KE HALAMAN LOGIN
// ============================================
header('Location: login.php');
exit;
?>