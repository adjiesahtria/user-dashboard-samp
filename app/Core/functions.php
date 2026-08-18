<?php
function sanitize($input) {
    return htmlspecialchars(strip_tags(trim($input)));
}

function rupiah($angka) {
    return "Rp " . number_format($angka, 0, ',', '.');
}
?>
