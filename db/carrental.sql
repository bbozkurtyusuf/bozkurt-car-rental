-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2025 at 09:15 AM
-- Server version: 8.3.0
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2025-05-14 18:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int NOT NULL,
  `BookingNumber` bigint DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2020-07-07 14:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Bursa, Inegol', 'ysfbzkrt2015@gmail.com', '05445270355');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																								<p class=\"whitespace-normal\"><strong>BOZKURT OTOMOTIV SARTLAR VE KOSULLAR</strong></p><p class=\"whitespace-normal\"><strong>1. GENEL KOSULLAR</strong>\r\nBu sartlar ve kosullar Bozkurt Otomotiv ile yapilan tum islemler icin gecerlidir. Hizmetlerimizden faydalanarak bu kosullari kabul etmis sayilirsiniz.</p><p class=\"whitespace-normal\"><strong>2. REZERVASYON VE KIRALAMA</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Arac kiralamak icin gecerli ehliyet ve kimlik belgesi gereklidir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Minimum yas 21, asgari 2 yillik surucu belgesi sarti vardir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Rezervasyon icin kredi karti ile depozito alinir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Kiralama suresi gunluk, haftalik veya aylik olarak belirlenir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>3. ODEME KOSULLARI</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Odeme nakit veya kredi karti ile yapilabilir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Toplam tutar kiralama baslangici oncesinde tamamen odenir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Ek hizmetler (navigasyon, bebek koltugu) ayrica ucretlendirilir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Depozito islem sonrasinda 7-10 is gunu icinde iade edilir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>4. SURUCU SORUMLULUGU</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Arac teslim alindigi gibi teslim edilmelidir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Trafik cezalarindan surucu sorumludur</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Kaza durumunda derhal Bozkurt Otomotiv\'e bildirim yapilir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Yakit deposu teslim alindigi seviyede teslim edilir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>5. HASAR VE KAZA DURUMU</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Kaza halinde polis raporu alinmalidir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Hasar bedeli surucu tarafindan karsilanir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Sigorta kapsamindaki hasarlar sigorta ile karsilanir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Kritik hasarlar icin ek ucret uygulanabilir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>6. IPTAL VE DEGISIKLIK</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Rezervasyon iptali 24 saat oncesine kadar ucretsizdir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">24 saatten sonraki iptallerde %50 ucret alinir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Kiralama suresi uzatma durumunda ek ucret uygulanir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Erken teslimde iade yapilmaz</li>\r\n</ul><p class=\"whitespace-normal\"><strong>7. SINIRLI ALANLAR</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Belirli bolgelere gidis yasaktir (sirket tarafindan belirtilen)</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Yurt disi cikis onceden izin alinmalidir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Arac baska kisiye devredilmesi yasaktir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Ticari kullanim soz konusu degildir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>8. GARANTI VE SIGORTA</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Tum araclarimiz kapsamli sigorta ile kaplidadir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Mekanik arizalar Bozkurt Otomotiv tarafindan karsilanir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Kisisel esyalar icin sorumluluk alinmaz</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Gecikme ve iptal durumlarinda tazminat talep edilemez</li>\r\n</ul><p class=\"whitespace-normal\"><strong>9. GENEL HUKUMLER</strong></p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Bu sartlar Turk Hukuku\'na tabidir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">Anlasmali mahkemeler Istanbul mahkemeleridir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Sartlarda degisiklik yapma hakki sirketin elindedir</li>\r\n<li class=\"whitespace-normal break-words\" index=\"3\">Ozel durumlar sirket yoneticileri tarafindan degerlendirilir</li>\r\n</ul><p class=\"whitespace-normal\"><strong>10. ILETISIM BILGILERI</strong>\r\nSorulariniz icin:</p><ul class=\"[&amp;:not(:last-child)_ul]:pb-1 [&amp;:not(:last-child)_ol]:pb-1 list-disc space-y-1.5 pl-7\" depth=\"0\">\r\n<li class=\"whitespace-normal break-words\" index=\"0\">Telefon: [XXX] XXX-XX-XX</li>\r\n<li class=\"whitespace-normal break-words\" index=\"1\">E-posta: <a class=\"underline\" href=\"mailto:info@bozkurtotomotiv.com\">info@bozkurtotomotiv.com</a></li>\r\n<li class=\"whitespace-normal break-words\" index=\"2\">Adres: [Sirket Adresi]</li>\r\n</ul><p class=\"whitespace-normal\">Bu sartlar [Tarih] tarihinden itibaren gecerlidir.</p><p align=\"justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"whitespace-normal\"><strong>BOZKURT OTOMOTIV</strong>\r\n<em>Guvenin Adresi</em></p>\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<p class=\"whitespace-normal\"><strong>Bozkurt Otomotiv</strong> olarak, siz degerli musterilerimize genis arac filomuz ile hizmet vermenin gururunu yasiyoruz. Kaliteli ve guvenilir arac seceneklerimiz sayesinde yolculugunuzu konforlu ve guvenli bir sekilde tamamlamanizi sagliyoruz. Modern ekipmanlarla donatilmis araclarimiz, uzman teknisyenlerimiz tarafindan duzenli olarak bakimi yapilarak size en iyi hizmeti sunmayi hedefliyoruz.</p>\r\n<p class=\"whitespace-normal\">Musteri memnuniyetini on planda tutan yaklasimimiz ile her zaman durst ve seffaf ticaret anlayisimizdan odun vermeyiz. Bozkurt Otomotiv ailesi olarak, her musterimizin ozel ihtiyaclarini anlayip, en uygun cozumleri sunmak icin titizlikle calisiyoruz. Genis arac seceneklerimiz arasindan butcenize ve ihtiyaclariniza en uygun olanini kolayca bulabilirsiniz.</p>\r\n<p class=\"whitespace-normal\">Sektordeki deneyimimiz ve uzman kadromuz sayesinde satis oncesi, satis ani ve satis sonrasi hizmetlerimizle fark yaratiyoruz. Bozkurt Otomotiv\'i tercih etmeniz halinde sadece bir arac satin almakla kalmayip, ayni zamanda guvenilir bir is ortakliginin da parcasi olursunuz. Musterilerimizin bize duydugu guven bizim en degerli sermayemizdir ve bu guveni hak etmek icin surekli gelismeye odaklaniyoruz.</p>\r\n<p class=\"whitespace-normal\"><strong>Bozkurt Otomotiv</strong> - Guven veren surus deneyimi!</p>\r\n										'),
(3, 'Hakkimizda', 'aboutus', 'Kompaktan genis bir arac filosu sunuyoruz. Tum araclarimizda klima, hidrolik direksiyon, elektrikli camlar bulunur. Tum araclarimiz yalnizca resmi bayilerden satin alinir ve bakimi yapilir. Otomatik sanzimanli araclar her rezervasyon sinifinda mevcuttur. Belirli bir otomobil ureticisine bagli olmadigimiz icin musterilerimize kiralayabilecekleri cesitli arac markalari ve modelleri sunabiliyoruz. Misyonumuz, musterilerimizle ortaklik kurarak en iyi ve en verimli Taksi Kiralama cozumlerini sunmak ve hizmet mukemmelligine ulasmak suretiyle sirketler, kamu ve ozel sektor icin Arac Kiralama alaninda kuresel lider olarak taninmaktir.'),
(11, 'Sikca Sorulan Sorular(SSS)', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Adres&nbsp; &nbsp;</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'bbozkurt.yusuf@gmail.com', '2025-05-15 08:26:12'),
(7, 'enesss@gmail.com', '2025-05-15 08:26:48'),
(8, 'sedat.tokus@gmail.com', '2025-05-15 08:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Cok temiz araclar, hizli teslimat. 5 gundur kullaniyorum, hic sorun yasamadim. Kesinlikle tavsiye ederim.', '2020-07-07 14:30:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2020-07-07 14:00:49', '2020-07-12 05:44:29'),
(2, 'Yusuf Bozkurt', 'bbozkurt.yusuf@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '5445270355', NULL, NULL, NULL, NULL, '2025-05-14 18:28:40', NULL),
(3, 'Enes Bekik', 'enesss@gmail.com', '02e74f10e0327ad868d138f2b4fdd6f0', '0123131231', NULL, NULL, NULL, NULL, '2025-05-14 19:07:04', NULL),
(4, 'Baran', 'baran_bkk@gmail.com', '579f7f6e16df8aa97c46e6f1e6d2d0df', '0124141', NULL, NULL, NULL, NULL, '2025-05-14 19:09:31', NULL),
(5, 'Baran', 'baran_bkk@gmail.com', '579f7f6e16df8aa97c46e6f1e6d2d0df', '0124141', NULL, NULL, NULL, NULL, '2025-05-14 19:12:39', NULL),
(6, 'Baran', 'baran_bkk@gmail.com', '579f7f6e16df8aa97c46e6f1e6d2d0df', '0124141', NULL, NULL, NULL, NULL, '2025-05-14 19:12:41', NULL),
(7, 'Baran', 'baran_bkk@gmail.com', '579f7f6e16df8aa97c46e6f1e6d2d0df', '0124141', NULL, NULL, NULL, NULL, '2025-05-14 19:12:48', NULL),
(8, 'Baran', 'baran_bkk@gmail.com', '579f7f6e16df8aa97c46e6f1e6d2d0df', '0124141', NULL, NULL, NULL, NULL, '2025-05-14 19:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int DEFAULT NULL,
  `SeatingCapacity` int DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int DEFAULT NULL,
  `PowerDoorLocks` int DEFAULT NULL,
  `AntiLockBrakingSystem` int DEFAULT NULL,
  `BrakeAssist` int DEFAULT NULL,
  `PowerSteering` int DEFAULT NULL,
  `DriverAirbag` int DEFAULT NULL,
  `PassengerAirbag` int DEFAULT NULL,
  `PowerWindows` int DEFAULT NULL,
  `CDPlayer` int DEFAULT NULL,
  `CentralLocking` int DEFAULT NULL,
  `CrashSensor` int DEFAULT NULL,
  `LeatherSeats` int DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Ekonomik ve pratik sehir arabasi. Yakit tasarruflu motor ve genis ic hacim sunar. Gunluk sehir ici kullanim icin ideal.', 450, 'Benzin', 2023, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, '2020-07-07 07:04:35', '2025-05-14 20:02:34'),
(2, 'BMW 5 Series', 2, 'Luks executive sedan. Premium konfor, gelismis teknoloji ve ustun performans. Is toplantilari ve ozel etkinlikler icin mukemmel.', 1200, 'Dizel', 2023, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:12:02', '2025-05-14 20:02:34'),
(3, 'Audi Q8', 3, 'Sportif luks SUV. Coupe tasarim, gelismis quattro dort ceker sistem. Hem sehir hem de arazi icin ideal, genis bagaj hacmi.', 1500, 'Benzin', 2023, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2025-05-14 20:02:34'),
(4, 'Nissan Kicks', 4, 'Kompakt SUV, sehir ici kullanim icin tasarlanmis. Yuksek surus pozisyonu, modern ic tasarim. Genc aileler icin uygun.', 550, 'Benzin', 2022, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', NULL, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, '2020-07-07 07:25:28', '2025-05-14 20:02:34'),
(5, 'Nissan GT-R', 4, 'Efsanevi spor otomobil. 600 HP guc, 0-100 km/h 2.8 saniye. Ozel etkinlikler ve unutulmaz deneyimler icin.', 2500, 'Benzin', 2023, 4, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', '2025-05-14 20:02:34'),
(6, 'Nissan Sunny 2020', 4, 'Guvenilir orta sinif sedan. Konforlu ic mekan, genis bagaj hacmi. Uzun yol seyahatleri icin uygun secim.', 500, 'Benzin', 2020, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, '2020-07-07 09:12:49', '2025-05-14 20:02:34'),
(7, 'Toyota Fortuner', 5, 'Buyuk SUV, 7 kisilik oturma kapasitesi. Guclu motor, arazi kapasitesi. Buyuk aileler ve grup seyahatleri icin ideal.', 800, 'Dizel', 2023, 7, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2020-07-07 09:17:46', '2025-05-14 20:02:34'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'Kompakt SUV, sehir ici kullanim icin mukemmel. Modern tasarim, ekonomik yakit tuketimi. Ilk SUV deneyimi icin ideal.', 600, 'Benzin', 2023, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, '2020-07-07 09:23:11', '2025-05-14 20:02:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
