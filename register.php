<?php
/* ============================================
   REGISTER / DAFTAR AKUN
   ============================================ */

// ============================================
// INISIALISASI
// ============================================
require_once 'app/Config/config.php';

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
// PROSES REGISTER
// ============================================
$error = '';
$success = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $ucp = trim($_POST['ucp'] ?? '');
    $password = $_POST['password'] ?? '';
    $confirm = $_POST['confirm_password'] ?? '';

    // ===== VALIDASI INPUT =====
    
    // 1. Cek UCP minimal 3 karakter
    if (empty($ucp) || strlen($ucp) < 3) {
        $error = 'UCP minimal 3 karakter.';
    }
    // 2. Cek UCP hanya huruf, angka, dan underscore
    elseif (!preg_match('/^[a-zA-Z0-9_]+$/', $ucp)) {
        $error = 'UCP hanya boleh huruf, angka, dan underscore.';
    }
    // 3. Cek password minimal 6 karakter
    elseif (strlen($password) < 6) {
        $error = 'Password minimal 6 karakter.';
    }
    // 4. Cek kecocokan password
    elseif ($password !== $confirm) {
        $error = 'Password dan konfirmasi tidak cocok.';
    }
    // 5. Cek duplikat UCP di database
    else {
        $stmt = $pdo->prepare("SELECT COUNT(*) FROM player_ucp WHERE UCP = ?");
        $stmt->execute([$ucp]);
        
        if ($stmt->fetchColumn() > 0) {
            $error = 'UCP sudah terdaftar, silakan gunakan yang lain.';
        } else {
            // ===== SIMPAN DATA =====
            
            // Hash password dengan BCRYPT
            $hash = password_hash($password, PASSWORD_DEFAULT);
            
            // Data tambahan
            $now = date('Y-m-d H:i:s');
            $ip = $_SERVER['REMOTE_ADDR'] ?? '0.0.0.0';
            
            // Insert ke database (TANPA Email)
            $stmt = $pdo->prepare("
                INSERT INTO player_ucp 
                (UCP, Password, Register_Date, Last_Login, IP, Blocked) 
                VALUES (?, ?, ?, ?, ?, 0)
            ");
            $stmt->execute([$ucp, $hash, $now, $now, $ip]);

            // Log aktivitas
            error_log("New user registered: " . $ucp . " - IP: " . $ip);

            $success = 'Akun berhasil dibuat! Silakan <a href="login.php" style="color:var(--violet);font-weight:700;text-decoration:none;">login</a>.';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar | Roleplay UCP</title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/register.css">
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
    REGISTER WRAPPER
    ========================================== -->
    <div class="register-wrap">

        <!-- BRAND -->
        <div class="brand">
            <div class="logo">
                <img src="assets/images/logo.png" alt="Logo Roleplay">
            </div>
            <h1>MYFLIZ ROLEPLAY</h1>
            <p class="sub">Daftar akun baru untuk bergabung</p>
        </div>

        <!-- REGISTER CARD -->
        <div class="register-card">
            
            <!-- ERROR MESSAGE -->
            <?php if ($error): ?>
                <div class="alert alert-error">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <?= htmlspecialchars($error) ?>
                </div>
            <?php endif; ?>

            <!-- SUCCESS MESSAGE -->
            <?php if ($success): ?>
                <div class="alert alert-success">
                    <i class="fa-solid fa-circle-check"></i>
                    <?= $success ?>
                </div>
            <?php else: ?>
                
                <!-- REGISTER FORM -->
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
                                placeholder="Contoh: John_Doe" 
                                required 
                                autocomplete="username"
                                value="<?= htmlspecialchars($_POST['ucp'] ?? '') ?>"
                            >
                        </div>
                        <span class="hint">
                            <i class="fa-solid fa-info-circle"></i> 
                            Hanya huruf, angka, dan underscore (min 3 karakter)
                        </span>
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
                                placeholder="Minimal 6 karakter" 
                                required 
                                minlength="6"
                                autocomplete="new-password"
                            >
                        </div>
                        <span class="hint">
                            <i class="fa-solid fa-info-circle"></i> 
                            Minimal 6 karakter
                        </span>
                    </div>

                    <!-- CONFIRM PASSWORD FIELD -->
                    <div class="field">
                        <label for="confirm_password">
                            <i class="fa-solid fa-check-double"></i> Konfirmasi Password
                        </label>
                        <div class="input-wrap">
                            <input 
                                type="password" 
                                id="confirm_password"
                                name="confirm_password" 
                                placeholder="Ulangi password" 
                                required
                                autocomplete="new-password"
                            >
                        </div>
                    </div>

                    <!-- SUBMIT BUTTON -->
                    <button type="submit" class="register-btn">
                        <i class="fa-solid fa-user-plus"></i> Daftar
                    </button>
                </form>

                <!-- DIVIDER -->
                <div class="divider">atau</div>

                <!-- LOGIN LINK -->
                <div class="login-hint">
                    Sudah punya akun? <a href="login.php">Login di sini</a>
                </div>
                
            <?php endif; ?>
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