<?php
/* ============================================
   DETAIL KARAKTER
   ============================================ */

// ============================================
// INISIALISASI
// ============================================
require_once __DIR__ . '/app/Config/config.php';
require_once __DIR__ . '/app/Core/auth_check.php';

// ============================================
// AMBIL ID KARAKTER
// ============================================
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$ucp_name = $_SESSION['ucp_name'] ?? 'Guest';

// ============================================
// AMBIL DATA KARAKTER
// ============================================
$stmt = $pdo->prepare("SELECT * FROM player_characters WHERE pID = ? AND Char_UCP = ?");
$stmt->execute([$id, $ucp_name]);
$char = $stmt->fetch(PDO::FETCH_ASSOC);

// ============================================
// CEK KARAKTER
// ============================================
if (!$char) {
    header('Location: characters.php?error=not_found');
    exit;
}

// ============================================
// INISIAL AVATAR
// ============================================
$initials = strtoupper(substr($ucp_name, 0, 2));

// ============================================
// FORMAT GENDER
// ============================================
$gender = $char['Char_Gender'] == 1 ? 'Laki-laki' : 'Perempuan';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail <?= htmlspecialchars($char['Char_Name']) ?> — <?= htmlspecialchars($ucp_name) ?></title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/character.css">
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

        <!-- INFORMASI UMUM -->
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-id-card"></i> Informasi Umum</p>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-hashtag"></i> ID</span>
                <span class="val">#<?= htmlspecialchars($char['pID']) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-user"></i> Nama</span>
                <span class="val"><?= htmlspecialchars($char['Char_Name']) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-star"></i> Level</span>
                <span class="val"><?= htmlspecialchars($char['Char_Level']) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-venus-mars"></i> Gender</span>
                <span class="val"><?= htmlspecialchars($gender) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-shirt"></i> Skin</span>
                <span class="val"><?= htmlspecialchars($char['Char_Skin']) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-calendar"></i> Register</span>
                <span class="val"><?= htmlspecialchars($char['Char_RegisterDate']) ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-clock"></i> Last Online</span>
                <span class="val"><?= htmlspecialchars($char['Char_LastOnline'] ?? 'Belum pernah') ?></span>
            </div>
        </div>

        <!-- KEUANGAN -->
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-wallet"></i> Keuangan</p>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-money-bill"></i> Uang</span>
                <span class="val money">Rp <?= number_format($char['Char_Money'], 0, ',', '.') ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-building-columns"></i> Uang Bank</span>
                <span class="val money">Rp <?= number_format($char['Char_BankMoney'], 0, ',', '.') ?></span>
            </div>
        </div>

        <!-- KONDISI -->
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-heart-pulse"></i> Kondisi</p>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-drumstick-bite"></i> Hunger</span>
                <span class="val"><?= htmlspecialchars($char['Char_Hunger']) ?> / 100</span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-droplet"></i> Thirst</span>
                <span class="val"><?= htmlspecialchars($char['Char_Thirst']) ?> / 100</span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-face-dizzy"></i> Stress</span>
                <span class="val"><?= htmlspecialchars($char['Char_Stress']) ?> / 100</span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-heart"></i> Kesehatan</span>
                <span class="val <?= $char['Char_Health'] < 30 ? 'red' : ($char['Char_Health'] < 60 ? 'orange' : 'green') ?>">
                    <?= round($char['Char_Health'], 1) ?>
                </span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-shield"></i> Armor</span>
                <span class="val"><?= round($char['Char_Armor'], 1) ?></span>
            </div>
        </div>

        <!-- PEKERJAAN & FAKSI -->
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-briefcase"></i> Pekerjaan & Faksi</p>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-flag"></i> Faksi</span>
                <span class="val"><?= htmlspecialchars($char['Char_Faction'] ?: 'Tidak ada') ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-ranking-star"></i> Rank Faksi</span>
                <span class="val"><?= htmlspecialchars($char['Char_FactionRank'] ?: '-') ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-user-tie"></i> Job</span>
                <span class="val"><?= htmlspecialchars($char['Char_Job'] ?: 'Tidak ada') ?></span>
            </div>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-clock"></i> Job Hours</span>
                <span class="val"><?= htmlspecialchars($char['Char_JobHours'] ?? 0) ?> jam</span>
            </div>
        </div>

        <!-- POSISI -->
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-location-dot"></i> Posisi Terakhir</p>
            
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-map"></i> Koordinat</span>
                <span class="val" style="font-size:12px;">
                    X: <?= round($char['Char_PosX'], 2) ?> &bull; 
                    Y: <?= round($char['Char_PosY'], 2) ?> &bull; 
                    Z: <?= round($char['Char_PosZ'], 2) ?>
                </span>
            </div>
            
            <?php if (!empty($char['Char_Interior'])): ?>
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-building"></i> Interior</span>
                <span class="val"><?= htmlspecialchars($char['Char_Interior']) ?></span>
            </div>
            <?php endif; ?>
            
            <?php if (!empty($char['Char_VirtualWorld'])): ?>
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-globe"></i> Virtual World</span>
                <span class="val"><?= htmlspecialchars($char['Char_VirtualWorld']) ?></span>
            </div>
            <?php endif; ?>
        </div>

        <!-- STATISTIK TAMBAHAN -->
        <?php if (isset($char['Char_Kills']) || isset($char['Char_Deaths'])): ?>
        <div class="detail-card">
            <p class="card-title"><i class="fa-solid fa-chart-simple"></i> Statistik</p>
            
            <?php if (isset($char['Char_Kills'])): ?>
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-skull"></i> Kills</span>
                <span class="val"><?= number_format($char['Char_Kills']) ?></span>
            </div>
            <?php endif; ?>
            
            <?php if (isset($char['Char_Deaths'])): ?>
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-heart-crack"></i> Deaths</span>
                <span class="val"><?= number_format($char['Char_Deaths']) ?></span>
            </div>
            <?php endif; ?>
            
            <?php if (isset($char['Char_PlayTime'])): ?>
            <div class="info-row">
                <span class="label"><i class="fa-solid fa-clock"></i> Play Time</span>
                <span class="val"><?= gmdate("H:i:s", $char['Char_PlayTime']) ?></span>
            </div>
            <?php endif; ?>
        </div>
        <?php endif; ?>

        <!-- BACK BUTTON -->
        <a href="characters.php" class="back-btn">
            <i class="fa-solid fa-arrow-left"></i> Kembali ke Daftar Karakter
        </a>

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