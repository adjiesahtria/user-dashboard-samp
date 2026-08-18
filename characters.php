<?php
/* ============================================
   DAFTAR KARAKTER
   ============================================ */

// ============================================
// INISIALISASI
// ============================================
require_once __DIR__ . '/app/Config/config.php';
require_once __DIR__ . '/app/Core/auth_check.php';

// ============================================
// AMBIL DATA USER
// ============================================
$ucp_name = $_SESSION['ucp_name'] ?? 'Guest';

// ============================================
// AMBIL SEMUA KARAKTER
// ============================================
$stmt = $pdo->prepare("SELECT * FROM player_characters WHERE Char_UCP = ? ORDER BY pID DESC");
$stmt->execute([$ucp_name]);
$chars = $stmt->fetchAll(PDO::FETCH_ASSOC);

// ============================================
// INISIAL AVATAR
// ============================================
$initials = strtoupper(substr($ucp_name, 0, 2));
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Karakter Saya — <?= htmlspecialchars($ucp_name) ?></title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/characters.css">
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
                        <p class="hi"><span class="status-dot"></span>Halo</p>
                        <p class="name"><?= htmlspecialchars($ucp_name) ?></p>
                    </div>
                </div>
                <div class="topbar-actions">
                    <button type="button" class="icon-btn sound" id="soundToggle" title="Aktifkan suara">
                        <i class="fa-solid fa-volume-xmark" id="soundIcon"></i>
                    </button>
                    <a class="icon-btn" href="logout.php" title="Logout">
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
        <div class="char-list">
            
            <?php if (count($chars) > 0): ?>
                <?php foreach ($chars as $c): ?>
                
                <!-- CHARACTER CARD -->
                <div class="char-card">
                    <div class="char-head">
                        <div class="char-avatar">
                            <i class="fa-solid fa-user"></i>
                        </div>
                        <div>
                            <p class="char-name"><?= htmlspecialchars($c['Char_Name']) ?></p>
                            <p class="char-id">ID #<?= htmlspecialchars($c['pID']) ?></p>
                        </div>
                        <div class="char-badges">
                            <!-- Level Badge -->
                            <span class="badge">Lv <?= htmlspecialchars($c['Char_Level']) ?></span>
                            
                            <!-- Faction Badge -->
                            <?php if (!empty($c['Char_Faction'])): ?>
                                <span class="badge faction"><?= htmlspecialchars($c['Char_Faction']) ?></span>
                            <?php endif; ?>
                            
                            <!-- Admin Badge -->
                            <?php if (!empty($c['Char_Admin']) && $c['Char_Admin'] > 0): ?>
                                <span class="badge admin">
                                    <i class="fa-solid fa-shield-halved"></i> Admin <?= htmlspecialchars($c['Char_Admin']) ?>
                                </span>
                            <?php endif; ?>
                            
                            <!-- Online Status -->
                            <?php if (!empty($c['Char_Online']) && $c['Char_Online'] == 1): ?>
                                <span class="badge online">
                                    <i class="fa-solid fa-circle" style="color:#4ade80; font-size:8px;"></i> Online
                                </span>
                            <?php endif; ?>
                        </div>
                    </div>

                    <!-- Character Stats -->
                    <div class="char-stats">
                        <div class="mini-stat">
                            <p class="label"><i class="fa-solid fa-wallet"></i> Uang</p>
                            <p class="val">Rp <?= number_format($c['Char_Money'], 0, ',', '.') ?></p>
                        </div>
                        <div class="mini-stat">
                            <p class="label"><i class="fa-solid fa-building-columns"></i> Bank</p>
                            <p class="val">Rp <?= number_format($c['Char_BankMoney'], 0, ',', '.') ?></p>
                        </div>
                    </div>

                    <!-- Detail Button -->
                    <a href="character.php?id=<?= $c['pID'] ?>" class="char-detail-btn">
                        <i class="fa-solid fa-circle-info"></i> Lihat Detail
                    </a>
                </div>
                
                <?php endforeach; ?>
            <?php else: ?>
                
                <!-- EMPTY STATE -->
                <div class="empty-state">
                    <div class="ic"><i class="fa-solid fa-user-slash"></i></div>
                    <p>Anda belum memiliki karakter.</p>
                    <p style="font-size:12px; color:var(--muted-dim); margin-top:8px;">
                        Buat karakter di dalam game terlebih dahulu.
                    </p>
                </div>
                
            <?php endif; ?>
            
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
            <a class="nav-item active" href="characters.php">
                <span class="ic"><i class="fa-solid fa-user"></i></span>
                Karakter
            </a>
            <a class="nav-item" href="vehicles.php">
                <span class="ic"><i class="fa-solid fa-car"></i></span>
                Kendaraan
            </a>
            <a class="nav-item" href="profile.php">
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