<?php
/* ============================================
   KONFIGURASI DATABASE & APLIKASI
   ============================================ */

// ============================================
// SESSION MANAGEMENT
// ============================================
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// ============================================
// KONFIGURASI DATABASE
// ============================================
define('DB_HOST', 'localhost');
define('DB_NAME', 'samp');
define('DB_USER', 'root');
define('DB_PASS', '');

// ============================================
// KONFIGURASI APLIKASI
// ============================================
define('SITE_NAME', 'SAMP Panel');
define('SITE_URL', 'http://localhost/samp-panel/'); // Ganti dengan domain Anda
define('SITE_VERSION', '1.0.0');

// ============================================
// KONFIGURASI KEAMANAN
// ============================================
define('BCRYPT_COST', 12); // Cost untuk password hash (10-12 recommended)
define('SESSION_LIFETIME', 3600); // 1 jam (dalam detik)
define('MAX_LOGIN_ATTEMPTS', 5); // Maksimal percobaan login
define('LOGIN_TIMEOUT', 900); // 15 menit (dalam detik)

// ============================================
// KONFIGURASI TIMEZONE
// ============================================
date_default_timezone_set('Asia/Jakarta');

// ============================================
// ERROR REPORTING (Matikan di production)
// ============================================
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// ============================================
// KONEKSI DATABASE (PDO)
// ============================================
try {
    $pdo = new PDO(
        "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4",
        DB_USER,
        DB_PASS,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci"
        ]
    );
} catch (PDOException $e) {
    // Log error (jangan tampilkan detail ke user di production)
    error_log("Database connection failed: " . $e->getMessage());
    die("Maaf, terjadi kesalahan pada server. Silakan coba lagi nanti.");
}

// ============================================
// FUNGSI BANTUAN
// ============================================

/**
 * Cek koneksi database masih aktif
 * @return bool
 */
function isDatabaseConnected() {
    global $pdo;
    try {
        $pdo->query("SELECT 1");
        return true;
    } catch (PDOException $e) {
        return false;
    }
}

/**
 * Sanitasi input user
 * @param string $input
 * @return string
 */
function sanitize($input) {
    return htmlspecialchars(trim($input), ENT_QUOTES, 'UTF-8');
}

/**
 * Generate CSRF token
 * @return string
 */
function generateCSRFToken() {
    if (empty($_SESSION['csrf_token'])) {
        $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
    }
    return $_SESSION['csrf_token'];
}

/**
 * Validasi CSRF token
 * @param string $token
 * @return bool
 */
function validateCSRFToken($token) {
    return isset($_SESSION['csrf_token']) && hash_equals($_SESSION['csrf_token'], $token);
}

/**
 * Hash password dengan BCRYPT
 * @param string $password
 * @return string
 */
function hashPassword($password) {
    return password_hash($password, PASSWORD_BCRYPT, ['cost' => BCRYPT_COST]);
}

/**
 * Verifikasi password
 * @param string $password
 * @param string $hash
 * @return bool
 */
function verifyPassword($password, $hash) {
    return password_verify($password, $hash);
}

/**
 * Cek apakah user sudah login
 * @return bool
 */
function isLoggedIn() {
    return isset($_SESSION['user_id']) && !empty($_SESSION['user_id']);
}

/**
 * Redirect jika belum login
 */
function requireLogin() {
    if (!isLoggedIn()) {
        header('Location: login.php');
        exit;
    }
}

/**
 * Redirect jika sudah login (untuk halaman login/register)
 */
function requireGuest() {
    if (isLoggedIn()) {
        header('Location: index.php');
        exit;
    }
}

/**
 * Flash message
 * @param string $message
 * @param string $type (success, error, warning, info)
 */
function setFlashMessage($message, $type = 'success') {
    $_SESSION['flash_message'] = [
        'message' => $message,
        'type' => $type
    ];
}

/**
 * Tampilkan dan hapus flash message
 * @return array|null
 */
function getFlashMessage() {
    if (isset($_SESSION['flash_message'])) {
        $flash = $_SESSION['flash_message'];
        unset($_SESSION['flash_message']);
        return $flash;
    }
    return null;
}

// ============================================
// INISIALISASI
// ============================================

// Generate CSRF token jika belum ada
if (empty($_SESSION['csrf_token'])) {
    generateCSRFToken();
}

// Cek session lifetime
if (isset($_SESSION['last_activity']) && (time() - $_SESSION['last_activity'] > SESSION_LIFETIME)) {
    // Session expired
    session_unset();
    session_destroy();
    session_start();
}
$_SESSION['last_activity'] = time();

// ============================================
// DEBUG INFO (Hapus di production)
// ============================================
// echo "Database connected successfully!";
// echo "PHP Version: " . phpversion();
// echo "PDO Drivers: " . implode(', ', PDO::getAvailableDrivers());
?>