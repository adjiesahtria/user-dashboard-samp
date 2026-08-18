<?php
/* ============================================
   DAFTAR KENDARAAN
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
// AMBIL SEMUA KENDARAAN
// ============================================
$stmt = $pdo->prepare("
    SELECT v.*, c.Char_Name 
    FROM player_vehicles v 
    JOIN player_characters c ON v.PVeh_Owner = c.pID 
    WHERE c.Char_UCP = ? 
    ORDER BY v.id DESC
");
$stmt->execute([$ucp_name]);
$vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);

// ============================================
// INISIAL AVATAR
// ============================================
$initials = strtoupper(substr($ucp_name, 0, 2));

// ============================================
// DATA KENDARAAN (Mapping Model ID ke Nama)
// ============================================
$vehicleModels = [
    400 => 'Landstalker',
    401 => 'Bravura',
    402 => 'Buffalo',
    403 => 'Linerunner',
    404 => 'Perennial',
    405 => 'Sentinel',
    406 => 'Dumper',
    407 => 'Firetruck',
    408 => 'Trashmaster',
    409 => 'Stretch',
    410 => 'Manana',
    411 => 'Infernus',
    412 => 'Voodoo',
    413 => 'Pony',
    414 => 'Mule',
    415 => 'Cheetah',
    416 => 'Ambulance',
    417 => 'Leviathan',
    418 => 'Moonbeam',
    419 => 'Esperanto',
    420 => 'Taxi',
    421 => 'Washington',
    422 => 'Bobcat',
    423 => 'Mr Whoopee',
    424 => 'BF Injection',
    425 => 'Hunter',
    426 => 'Premier',
    427 => 'Enforcer',
    428 => 'Securicar',
    429 => 'Banshee',
    430 => 'Predator',
    431 => 'Bus',
    432 => 'Rhino',
    433 => 'Barracks',
    434 => 'Hotknife',
    435 => 'Trailer',
    436 => 'Previon',
    437 => 'Coach',
    438 => 'Cabbie',
    439 => 'Stallion',
    440 => 'Rumpo',
    441 => 'RC Bandit',
    442 => 'Romero',
    443 => 'Packer',
    444 => 'Monster',
    445 => 'Admiral',
    446 => 'Squalo',
    447 => 'Seasparrow',
    448 => 'Pizzaboy',
    449 => 'Tram',
    450 => 'Trailer',
    451 => 'Turismo',
    452 => 'Speeder',
    453 => 'Reefer',
    454 => 'Tropic',
    455 => 'Flatbed',
    456 => 'Yankee',
    457 => 'Caddy',
    458 => 'Solair',
    459 => 'Berkley\'s RC Van',
    460 => 'Skimmer',
    461 => 'PCJ-600',
    462 => 'Faggio',
    463 => 'Freeway',
    464 => 'RC Baron',
    465 => 'RC Raider',
    466 => 'Glendale',
    467 => 'Oceanic',
    468 => 'Sanchez',
    469 => 'Sparrow',
    470 => 'Patriot',
    471 => 'Quad',
    472 => 'Coastguard',
    473 => 'Dinghy',
    474 => 'Hermes',
    475 => 'Sabre',
    476 => 'Rustler',
    477 => 'ZR-350',
    478 => 'Walton',
    479 => 'Regina',
    480 => 'Comet',
    481 => 'BMX',
    482 => 'Burrito',
    483 => 'Camper',
    484 => 'Marquis',
    485 => 'Baggage',
    486 => 'Dozer',
    487 => 'Maverick',
    488 => 'News Chopper',
    489 => 'Rancher',
    490 => 'FBI Rancher',
    491 => 'Virgo',
    492 => 'Greenwood',
    493 => 'Jetmax',
    494 => 'Hotring',
    495 => 'Sandking',
    496 => 'Blista Compact',
    497 => 'Police Maverick',
    498 => 'Boxville',
    499 => 'Benson',
    500 => 'Mesa',
    501 => 'RC Goblin',
    502 => 'Hotring A',
    503 => 'Hotring B',
    504 => 'Bloodring Banger',
    505 => 'Rancher',
    506 => 'Super GT',
    507 => 'Elegant',
    508 => 'Journey',
    509 => 'Bike',
    510 => 'Mountain Bike',
    511 => 'Beagle',
    512 => 'Cropduster',
    513 => 'Stuntplane',
    514 => 'Tanker',
    515 => 'Roadtrain',
    516 => 'Nebula',
    517 => 'Majestic',
    518 => 'Buccaneer',
    519 => 'Shamal',
    520 => 'Hydra',
    521 => 'FCR-900',
    522 => 'NRG-500',
    523 => 'HPV1000',
    524 => 'Cement Truck',
    525 => 'Towtruck',
    526 => 'Fortune',
    527 => 'Cadrona',
    528 => 'FBI Truck',
    529 => 'Willard',
    530 => 'Forklift',
    531 => 'Tractor',
    532 => 'Combine',
    533 => 'Feltzer',
    534 => 'Remington',
    535 => 'Slamvan',
    536 => 'Blade',
    537 => 'Freight',
    538 => 'Streak',
    539 => 'Vortex',
    540 => 'Vincent',
    541 => 'Bullet',
    542 => 'Clover',
    543 => 'Sadler',
    544 => 'Firetruck LA',
    545 => 'Hustler',
    546 => 'Intruder',
    547 => 'Primo',
    548 => 'Cargobob',
    549 => 'Tampa',
    550 => 'Sunrise',
    551 => 'Merit',
    552 => 'Utility',
    553 => 'Nevada',
    554 => 'Yosemite',
    555 => 'Windsor',
    556 => 'Monster A',
    557 => 'Monster B',
    558 => 'Uranus',
    559 => 'Jester',
    560 => 'Sultan',
    561 => 'Stratum',
    562 => 'Elegy',
    563 => 'Raindance',
    564 => 'RC Tiger',
    565 => 'Flash',
    566 => 'Tahoma',
    567 => 'Savanna',
    568 => 'Bandito',
    569 => 'Freight Flat',
    570 => 'Streak Carriage',
    571 => 'Kart',
    572 => 'Mower',
    573 => 'Dune',
    574 => 'Sweeper',
    575 => 'Broadway',
    576 => 'Tornado',
    577 => 'AT-400',
    578 => 'DFT-30',
    579 => 'Huntley',
    580 => 'Stafford',
    581 => 'BF-400',
    582 => 'Newsvan',
    583 => 'Tug',
    584 => 'Petrol Tanker',
    585 => 'Emperor',
    586 => 'Wayfarer',
    587 => 'Euros',
    588 => 'Hotdog',
    589 => 'Club',
    590 => 'Freight Box',
    591 => 'Trailer 3',
    592 => 'Andromada',
    593 => 'Dodo',
    594 => 'RC Cam',
    595 => 'Launch',
    596 => 'Police Car (LSPD)',
    597 => 'Police Car (SFPD)',
    598 => 'Police Car (LVPD)',
    599 => 'Police Ranger',
    600 => 'Picador',
    601 => 'S.W.A.T. Van',
    602 => 'Alpha',
    603 => 'Phoenix',
    604 => 'Glendale Shit',
    605 => 'Sadler Shit',
    606 => 'Baggage Trailer A',
    607 => 'Baggage Trailer B',
    608 => 'Tug Stairs',
    609 => 'Boxville',
    610 => 'Farm Trailer',
    611 => 'Utility Trailer'
];
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kendaraan Saya — <?= htmlspecialchars($ucp_name) ?></title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;600;700;800&family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/vehicles.css">
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
        <!-- VEHICLE LIST -->
        <div class="veh-list">
            
            <?php if (count($vehicles) > 0): ?>
                <?php foreach ($vehicles as $v):
                    // ===== HITUNG HEALTH =====
                    $health = round($v['PVeh_Health'] ?? 1000, 1);
                    $healthPct = max(0, min(100, ($health / 1000) * 100));
                    $healthClass = $healthPct >= 60 ? 'health-good' : ($healthPct >= 30 ? 'health-mid' : 'health-low');
                    
                    // ===== HITUNG FUEL =====
                    $fuel = isset($v['PVeh_Fuel']) ? max(0, min(100, (float)$v['PVeh_Fuel'])) : 100;
                    
                    // ===== MODEL NAME =====
                    $modelName = $vehicleModels[$v['PVeh_ModelID']] ?? 'Model #' . $v['PVeh_ModelID'];
                ?>
                
                <!-- VEHICLE CARD -->
                <div class="veh-card">
                    <div class="veh-head">
                        <div class="veh-icon">
                            <i class="fa-solid fa-car-side"></i>
                        </div>
                        <div>
                            <p class="veh-model"><?= htmlspecialchars($modelName) ?></p>
                            <p class="veh-sub">
                                <i class="fa-solid fa-user"></i> <?= htmlspecialchars($v['Char_Name']) ?>
                                <span style="margin:0 6px;color:var(--muted-dim);">•</span>
                                <i class="fa-solid fa-hashtag"></i> ID: <?= htmlspecialchars($v['id']) ?>
                            </p>
                        </div>
                        <div class="veh-badges">
                            <!-- Locked Status -->
                            <?php if (isset($v['PVeh_Locked']) && $v['PVeh_Locked'] == 1): ?>
                                <span class="badge locked">
                                    <i class="fa-solid fa-lock"></i> Terkunci
                                </span>
                            <?php else: ?>
                                <span class="badge unlocked">
                                    <i class="fa-solid fa-lock-open"></i> Terbuka
                                </span>
                            <?php endif; ?>
                            
                            <!-- Impounded Status -->
                            <?php if (isset($v['PVeh_Impounded']) && $v['PVeh_Impounded'] == 1): ?>
                                <span class="badge impounded">
                                    <i class="fa-solid fa-thumbtack"></i> Disita
                                </span>
                            <?php endif; ?>
                            
                            <!-- Spawned Status -->
                            <?php if (isset($v['PVeh_Spawned']) && $v['PVeh_Spawned'] == 1): ?>
                                <span class="badge spawned">
                                    <i class="fa-solid fa-circle" style="color:#4ade80;font-size:8px;"></i> Di-spawn
                                </span>
                            <?php endif; ?>
                        </div>
                    </div>

                    <!-- PLATE NUMBER -->
                    <span class="veh-plate">
                        <i class="fa-solid fa-id-card"></i> 
                        <?= htmlspecialchars($v['PVeh_Plate'] ?? 'Tidak ada plat') ?>
                    </span>

                    <!-- GAUGE / METER -->
                    <div class="gauge-row">
                        <!-- Fuel Gauge -->
                        <div class="gauge">
                            <span class="label">
                                <i class="fa-solid fa-gas-pump"></i> Bahan Bakar
                            </span>
                            <div class="gauge-track">
                                <div class="gauge-fill fuel" style="width:<?= $fuel ?>%"></div>
                            </div>
                            <span class="gauge-val"><?= round($fuel) ?>%</span>
                        </div>
                        
                        <!-- Health Gauge -->
                        <div class="gauge">
                            <span class="label">
                                <i class="fa-solid fa-heart-pulse"></i> Health
                            </span>
                            <div class="gauge-track">
                                <div class="gauge-fill <?= $healthClass ?>" style="width:<?= $healthPct ?>%"></div>
                            </div>
                            <span class="gauge-val"><?= $health ?></span>
                        </div>
                    </div>
                    
                    <!-- VEHICLE PRICE (Optional) -->
                    <?php if (isset($v['PVeh_Price']) && $v['PVeh_Price'] > 0): ?>
                    <div style="margin-top:12px;font-size:11px;color:var(--muted-dim);">
                        <i class="fa-solid fa-money-bill"></i> 
                        Harga: Rp <?= number_format($v['PVeh_Price'], 0, ',', '.') ?>
                    </div>
                    <?php endif; ?>
                </div>
                
                <?php endforeach; ?>
            <?php else: ?>
                
                <!-- EMPTY STATE -->
                <div class="empty-state">
                    <div class="ic"><i class="fa-solid fa-car-burst"></i></div>
                    <p>Anda belum memiliki kendaraan.</p>
                    <p style="font-size:12px; color:var(--muted-dim); margin-top:8px;">
                        Beli kendaraan di dalam game terlebih dahulu.
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
            <a class="nav-item" href="characters.php">
                <span class="ic"><i class="fa-solid fa-user"></i></span>
                Karakter
            </a>
            <a class="nav-item active" href="vehicles.php">
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