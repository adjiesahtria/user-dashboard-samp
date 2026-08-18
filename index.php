<?php
/* ============================================
   DASHBOARD - INDEX
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
// QUERY TOTAL KARAKTER
// ============================================
$stmt = $pdo->prepare("SELECT COUNT(*) as total FROM player_characters WHERE Char_UCP = ?");
$stmt->execute([$ucp_name]);
$totalChar = $stmt->fetch(PDO::FETCH_ASSOC)['total'] ?? 0;

// ============================================
// QUERY TOTAL UANG (Money + Bank)
// ============================================
$stmt = $pdo->prepare("SELECT SUM(Char_Money + Char_BankMoney) as total_money FROM player_characters WHERE Char_UCP = ?");
$stmt->execute([$ucp_name]);
$totalMoney = $stmt->fetch(PDO::FETCH_ASSOC)['total_money'] ?? 0;

// ============================================
// QUERY TOTAL KENDARAAN
// ============================================
$stmt = $pdo->prepare("
    SELECT COUNT(*) as total_veh 
    FROM player_vehicles v 
    JOIN player_characters c ON v.PVeh_Owner = c.pID 
    WHERE c.Char_UCP = ?
");
$stmt->execute([$ucp_name]);
$totalVeh = $stmt->fetch(PDO::FETCH_ASSOC)['total_veh'] ?? 0;

// ============================================
// HITUNG BAR CHART
// ============================================
$maxRef = max($totalChar, $totalVeh, 1);
$barChar = $totalChar > 0 ? max(12, round(($totalChar / $maxRef) * 100)) : 4;
$barVeh  = $totalVeh > 0 ? max(12, round(($totalVeh / $maxRef) * 100)) : 4;
$barMoney = 100; // Saldo selalu full sebagai acuan

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
    <title>Dashboard — <?= htmlspecialchars($ucp_name) ?></title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
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

        <!-- BALANCE CARD -->
        <div class="balance-card">
            <div class="balance-top">
                <p class="balance-label">Total Saldo</p>
                <span class="balance-badge">
                    <i class="fa-solid fa-shield-halved"></i> Uang + Bank
                </span>
            </div>
            <p class="balance-amount">Rp <?= number_format($totalMoney, 0, ',', '.') ?></p>
            <div class="balance-foot">
                <div class="foot-chip">
                    <i class="fa-solid fa-user-group"></i>
                    <div>
                        <div class="fc-val"><?= $totalChar ?></div>
                        <div class="fc-label">Karakter</div>
                    </div>
                </div>
                <div class="foot-chip">
                    <i class="fa-solid fa-car-side"></i>
                    <div>
                        <div class="fc-val"><?= $totalVeh ?></div>
                        <div class="fc-label">Kendaraan</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- SECTION LABEL -->
        <p class="section-label">Ringkasan Akun</p>

        <!-- STAT GRID -->
        <div class="stat-grid">
            <div class="stat-card">
                <div class="stat-icon"><i class="fa-solid fa-user"></i></div>
                <p class="stat-value"><?= $totalChar ?></p>
                <p class="stat-title">Total Karakter</p>
            </div>
            <div class="stat-card">
                <div class="stat-icon"><i class="fa-solid fa-car"></i></div>
                <p class="stat-value"><?= $totalVeh ?></p>
                <p class="stat-title">Total Kendaraan</p>
            </div>
        </div>

        <!-- CHART CARD -->
        <div class="chart-card">
            <p class="chart-title">
                <i class="fa-solid fa-chart-simple"></i> Perbandingan Kepemilikan
            </p>

            <div class="bar-row gold">
                <span class="bar-label">Saldo</span>
                <div class="bar-track">
                    <div class="bar-fill" style="width:<?= $barMoney ?>%"></div>
                </div>
                <span class="bar-value">
                    Rp<?= $totalMoney >= 1000000 
                        ? round($totalMoney/1000000, 1) . 'jt' 
                        : number_format($totalMoney, 0, ',', '.') ?>
                </span>
            </div>

            <div class="bar-row">
                <span class="bar-label">Karakter</span>
                <div class="bar-track">
                    <div class="bar-fill" style="width:<?= $barChar ?>%"></div>
                </div>
                <span class="bar-value"><?= $totalChar ?></span>
            </div>

            <div class="bar-row">
                <span class="bar-label">Kendaraan</span>
                <div class="bar-track">
                    <div class="bar-fill" style="width:<?= $barVeh ?>%"></div>
                </div>
                <span class="bar-value"><?= $totalVeh ?></span>
            </div>
        </div>

    </div>

    <!-- ==========================================
    BOTTOM NAVIGATION
    ========================================== -->
    <div class="bottom-nav">
        <nav class="nav-inner">
            <a class="nav-item active" href="index.php">
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