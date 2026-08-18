<?php
/* ============================================
   PROFIL USER
   ============================================ */

// ============================================
// INISIALISASI
// ============================================
require_once __DIR__ . '/app/Config/config.php';
require_once __DIR__ . '/app/Core/auth_check.php';

// ============================================
// AMBIL DATA USER
// ============================================
$ucp_id = $_SESSION['ucp_id'] ?? 0;
$ucp_name = $_SESSION['ucp_name'] ?? 'Guest';

// ============================================
// AMBIL DATA DARI DATABASE
// ============================================
$stmt = $pdo->prepare("SELECT * FROM player_ucp WHERE ID = ?");
$stmt->execute([$ucp_id]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$user) {
    header('Location: logout.php');
    exit;
}

// ============================================
// PROSES GANTI PASSWORD
// ============================================
$message = '';
$messageType = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $old = $_POST['old_password'] ?? '';
    $new = $_POST['new_password'] ?? '';
    $confirm = $_POST['confirm_password'] ?? '';

    // Validasi input
    if (empty($old) || empty($new) || empty($confirm)) {
        $message = 'Harap isi semua field.';
        $messageType = 'error';
    }
    // Verifikasi password lama
    elseif (!password_verify($old, $user['Password'])) {
        $message = 'Password lama salah.';
        $messageType = 'error';
    }
    // Cek password baru minimal 6 karakter
    elseif (strlen($new) < 6) {
        $message = 'Password baru minimal 6 karakter.';
        $messageType = 'error';
    }
    // Cek kecocokan password baru
    elseif ($new !== $confirm) {
        $message = 'Password baru tidak cocok.';
        $messageType = 'error';
    }
    // Update password
    else {
        $hash = password_hash($new, PASSWORD_BCRYPT, ['cost' => BCRYPT_COST ?? 12]);
        $upd = $pdo->prepare("UPDATE player_ucp SET Password = ? WHERE ID = ?");
        $upd->execute([$hash, $ucp_id]);
        
        $message = 'Password berhasil diubah!';
        $messageType = 'success';
        
        // Log aktivitas
        error_log("Password changed for user: " . $ucp_name);
    }
}

// ============================================
// INISIAL AVATAR
// ============================================
$initials = strtoupper(substr($ucp_name, 0, 2));

// ============================================
// FORMAT TANGGAL
// ============================================
$registerDate = !empty($user['Register_Date']) 
    ? date('d F Y H:i', strtotime($user['Register_Date'])) 
    : 'Belum terdaftar';
    
$lastLogin = !empty($user['Last_Login']) 
    ? date('d F Y H:i', strtotime($user['Last_Login'])) 
    : 'Belum pernah login';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil Saya — <?= htmlspecialchars($ucp_name) ?></title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/profile.css">
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
    TOPBAR
    ========================================== -->
    <div class="topbar">
        <div class="container" style="padding:0;">
            <div class="topbar-row">
                <div class="greet">
                    <div class="avatar"><?= htmlspecialchars($initials) ?></div>
                    <div class="greet-text">
                        <p class="hi"><span class="status-dot"></span>Online</p>
                        <p class="name"><?= htmlspecialchars($ucp_name) ?></p>
                    </div>
                </div>
                <div class="topbar-actions">
                    <button type="button" class="sound-toggle" id="soundToggle" title="Aktifkan suara">
                        <i class="fa-solid fa-volume-xmark" id="soundIcon"></i>
                    </button>
                    <a class="logout-btn" href="logout.php" title="Logout">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- ==========================================
    MAIN CONTENT
    ========================================== -->
    <div class="container">
        <!-- FLASH MESSAGE -->
        <?php if ($message): ?>
            <div class="alert <?= $messageType ?>">
                <i class="fa-solid <?= $messageType === 'success' ? 'fa-circle-check' : 'fa-circle-exclamation' ?>"></i>
                <?= htmlspecialchars($message) ?>
            </div>
        <?php endif; ?>

        <!-- INFORMASI AKUN -->
        <div class="section-card">
            <p class="section-title">
                <i class="fa-solid fa-id-badge"></i> Informasi Akun
            </p>

            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-user"></i> UCP
                </span>
                <span class="info-val"><?= htmlspecialchars($user['UCP']) ?></span>
            </div>

            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-envelope"></i> Email
                </span>
                <span class="info-val">
                    <?= !empty($user['Email']) ? htmlspecialchars($user['Email']) : 'Belum diisi' ?>
                </span>
            </div>

            <?php if (!empty($user['IP'])): ?>
            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-network-wired"></i> IP Address
                </span>
                <span class="info-val"><?= htmlspecialchars($user['IP']) ?></span>
            </div>
            <?php endif; ?>

            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-calendar-plus"></i> Register
                </span>
                <span class="info-val"><?= htmlspecialchars($registerDate) ?></span>
            </div>

            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-clock-rotate-left"></i> Last Login
                </span>
                <span class="info-val"><?= htmlspecialchars($lastLogin) ?></span>
            </div>

            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-shield-halved"></i> Status
                </span>
                <?php if (isset($user['Blocked']) && $user['Blocked'] == 1): ?>
                    <span class="status-pill blocked">
                        <i class="fa-solid fa-ban"></i> Diblokir
                    </span>
                <?php else: ?>
                    <span class="status-pill active">
                        <i class="fa-solid fa-circle-check"></i> Aktif
                    </span>
                <?php endif; ?>
            </div>

            <?php if (!empty($user['Admin_Level']) && $user['Admin_Level'] > 0): ?>
            <div class="info-row">
                <span class="info-label">
                    <i class="fa-solid fa-shield-halved"></i> Admin Level
                </span>
                <span class="info-val" style="color: var(--gold);">
                    <?= htmlspecialchars($user['Admin_Level']) ?>
                </span>
            </div>
            <?php endif; ?>
        </div>

        <!-- GANTI PASSWORD -->
        <div class="section-card">
            <p class="section-title">
                <i class="fa-solid fa-lock"></i> Ganti Password
            </p>

            <form method="post">
                <div class="field">
                    <label for="old_password">
                        <i class="fa-solid fa-key"></i> Password Lama
                    </label>
                    <input 
                        type="password" 
                        id="old_password"
                        name="old_password" 
                        placeholder="Masukkan password lama" 
                        required
                        autocomplete="current-password"
                    >
                </div>

                <div class="field">
                    <label for="new_password">
                        <i class="fa-solid fa-lock"></i> Password Baru
                    </label>
                    <input 
                        type="password" 
                        id="new_password"
                        name="new_password" 
                        placeholder="Minimal 6 karakter" 
                        required 
                        minlength="6"
                        autocomplete="new-password"
                    >
                </div>

                <div class="field">
                    <label for="confirm_password">
                        <i class="fa-solid fa-check-circle"></i> Konfirmasi Password Baru
                    </label>
                    <input 
                        type="password" 
                        id="confirm_password"
                        name="confirm_password" 
                        placeholder="Ulangi password baru" 
                        required
                        autocomplete="new-password"
                    >
                </div>

                <button type="submit" class="submit-btn">
                    <i class="fa-solid fa-key"></i> Update Password
                </button>
            </form>

            <!-- Password Requirements -->
            <div style="margin-top: 12px; font-size: 11px; color: var(--muted-dim);">
                <i class="fa-solid fa-circle-info"></i> Password minimal 6 karakter
            </div>
        </div>

    </div>

    <!-- ==========================================
    BOTTOM NAVIGATION
    ========================================== -->
    <div class="bottom-nav">
        <nav class="nav-inner">
            <a class="nav-item" href="index.php">
                <span class="ic"><i class="fa-solid fa-house"></i></span>
                Home
            </a>
            <a class="nav-item" href="characters.php">
                <span class="ic"><i class="fa-solid fa-user"></i></span>
                Karakter
            </a>
            <a class="nav-item" href="vehicles.php">
                <span class="ic"><i class="fa-solid fa-car"></i></span>
                Kendaraan
            </a>
            <a class="nav-item active" href="profile.php">
                <span class="ic"><i class="fa-solid fa-gear"></i></span>
                Profil
            </a>
        </nav>
    </div>

    <!-- ==========================================
    JAVASCRIPT
    ========================================== -->
    <script src="assets/js/main.js"></script>

</body>
</html>