<?php
/* ============================================
   LOGIN
   ============================================ */

// ============================================
// INISIALISASI
// ============================================
require_once __DIR__ . '/app/Config/config.php';

// ============================================
// CEK SESSION
// ============================================
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Redirect jika sudah login
if (isset($_SESSION['ucp_id']) && isset($_SESSION['ucp_name'])) {
    header('Location: index.php');
    exit;
}

// ============================================
// PROSES LOGIN
// ============================================
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $ucp = trim($_POST['ucp'] ?? '');
    $password = $_POST['password'] ?? '';

    // Validasi input kosong
    if (empty($ucp) || empty($password)) {
        $error = 'Harap isi semua field.';
    } else {
        // Cari user di database
        $stmt = $pdo->prepare("SELECT * FROM player_ucp WHERE UCP = ?");
        $stmt->execute([$ucp]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user && password_verify($password, $user['Password'])) {
            // Cek apakah akun diblokir
            if (isset($user['Blocked']) && $user['Blocked'] == 1) {
                $error = 'Akun Anda diblokir. Hubungi administrator.';
            } else {
                // Set session
                $_SESSION['ucp_id'] = $user['ID'];
                $_SESSION['ucp_name'] = $user['UCP'];
                $_SESSION['login_time'] = time();

                // Update Last Login
                $upd = $pdo->prepare("UPDATE player_ucp SET Last_Login = ? WHERE ID = ?");
                $upd->execute([date('Y-m-d H:i:s'), $user['ID']]);

                // Redirect ke dashboard
                header('Location: index.php');
                exit;
            }
        } else {
            $error = 'UCP atau Password salah.';
            
            // Optional: Log percobaan login gagal
            error_log("Login failed for UCP: " . $ucp . " - IP: " . $_SERVER['REMOTE_ADDR']);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Roleplay UCP</title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>

    <!-- ==========================================
    VIDEO BACKGROUND
    ========================================== -->
    <div class="bg-video-wrap">
        <video id="bgVideo" autoplay muted loop playsinline preload="metadata">
            <source src="assets/video/bg.mp4" type="video/mp4">
        </video>
        <div class="bg-video-overlay"></div>
    </div>

    <!-- ==========================================
    GRID & GLOW ORBS
    ========================================== -->
    <div class="grid-overlay"></div>
    <div class="glow-orb orb-1"></div>
    <div class="glow-orb orb-2"></div>

    <!-- ==========================================
    LOGIN WRAPPER
    ========================================== -->
    <div class="login-wrap">

        <!-- BRAND -->
        <div class="brand">
            <div class="logo">
                <img src="assets/images/logo.png" alt="Logo Roleplay">
            </div>
            <h1>MYFLIZ ROLEPLAY</h1>
            <p class="sub">Masuk untuk mengakses panel akun Anda</p>
        </div>

        <!-- LOGIN CARD -->
        <div class="login-card">
            
            <!-- ERROR MESSAGE -->
            <?php if ($error): ?>
                <div class="alert-error">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <?= htmlspecialchars($error) ?>
                </div>
            <?php endif; ?>

            <!-- LOGIN FORM -->
            <form method="post" autocomplete="on">
                
                <!-- UCP FIELD -->
                <div class="field">
                    <label for="ucp">
                        <i class="fa-solid fa-user"></i> UCP
                    </label>
                    <div class="input-wrap">
                        <input 
                            type="text" 
                            id="ucp"
                            name="ucp" 
                            placeholder="Masukkan username UCP" 
                            required 
                            autocomplete="username" 
                            value="<?= htmlspecialchars($_POST['ucp'] ?? '') ?>"
                        >
                    </div>
                </div>

                <!-- PASSWORD FIELD -->
                <div class="field">
                    <label for="password">
                        <i class="fa-solid fa-lock"></i> Password
                    </label>
                    <div class="input-wrap">
                        <input 
                            type="password" 
                            id="password"
                            name="password" 
                            placeholder="••••••••" 
                            required 
                            autocomplete="current-password"
                        >
                    </div>
                </div>

                <!-- SUBMIT BUTTON -->
                <button type="submit" class="login-btn">
                    <i class="fa-solid fa-right-to-bracket"></i> Masuk
                </button>
            </form>

            <!-- DIVIDER -->
            <div class="divider">atau</div>

            <!-- REGISTER LINK -->
            <div class="register-hint">
                Belum punya akun? <a href="register.php">Daftar sekarang</a>
            </div>
        </div>

        <!-- FOOTER -->
        <p class="footer-note">
            <i class="fa-solid fa-shield-halved"></i>
            &copy; <?= date('Y') ?> Roleplay Server &middot; Powered by adjiesahtria
        </p>
    </div>

    <!-- ==========================================
    JAVASCRIPT
    ========================================== -->
    <script src="assets/js/main.js"></script>

</body>
</html>