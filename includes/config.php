<?php 
// Veritabanı bağlantı bilgilerini gerçek değerlerle değiştirin
define('DB_HOST','localhost');
define('DB_USER','root'); // MySQL kullanıcı adınız, genellikle "root"
define('DB_PASS','skoda0249'); // MySQL şifreniz, localhost'ta genellikle boş olabilir
define('DB_NAME','carrental'); // Veritabanı adınız, muhtemelen "carrental" olmalı

// PDO bağlantısı oluşturma
try {
    $dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PASS);
    // Hata modunu ayarla
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Karakter setini ayarla
    $dbh->exec("SET NAMES 'utf8'");
} catch(PDOException $e) {
    // Hata durumunda ne yapılacağı
    echo "Bağlantı hatası: " . $e->getMessage();
    die();
}
?>