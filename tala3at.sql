-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 10:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tala3at`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `links` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `links`, `created_at`, `updated_at`) VALUES
(1, 'zUeuY', 'aQYbIyFSm52dYX2jGkflvcAmkOk9GRe5FU6uOz8ZfAOfJ83qej', 'bY0Gi.jpg', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\"}', '2024-01-12 19:07:19', '2024-01-12 19:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IotP3', '70gvIEX1fzFD2JRgyFO6PNaqJN93NwOQ3SlWMrbG9S6FVfJieC5rcbH4Y71flkHdaFn9eHN5BNUoSy9FQBfVECQKjvOxRe6XQBft', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(2, 'v8gP2', 'tQHS9Be9UlL9ExbSgCNmupPqhulEqe3Uyd5QkrqkICr5qlo1jC3ilYYYN3oLNVOJNWSxlwFHBo4HjJtsO4hhXhO5lPqvX2Cer9Qb', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(3, 'uZ4od', 'mUyMZx8wt8ZupQ41uxeSAUNspqi4PVIf5yhfgojuiMO8IizeFQLuoS2oMCjcSVloK1y54WTXGOd4pluhpeyQMHC3fKgKrvCTASEA', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(4, 'VIZbZ', 'fqmxnDXwvhPPIxqSK6XXg02kLgHj1FqoyDS6BmGMXySCLCYSI7TPSq7aSukZHowtw1xfgsIik2igD65dYOjn7EbYgV17wKDCinpe', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(5, '8VFkQ', 'w37L4uQsQCeuCgJbugNLemb8SIg55cCFFs0XSsXP2fV6Yq47aJl8icEchtucvpw34GfP0Re6tfI9J53b2BDTkOAPDVUvnkttGeBB', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(6, 'S7GSs', 'WEsG4yx0vaVXbiVoolf7hQwnCxtLP3cNOnbpGsNvNPYtcWtHiZGvF4IElwCjGydzKfv1FYzA7H0GTSMHT63LE4liQMRItk0USIxe', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(7, '642io', 'RnJlsqhQ04bePk0Rb2YBDDsovAJsx0qrEBgZV59hVAawMgzOnBUcw8KAVs1iH7QSRREa9IXF5mZPMAhKKTA6P7Dpb4bThmhD9CVw', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(8, 'K3YjS', 'vA7jbTgs6MjI3nrVsZp4m4pcKYPPAlJNv97N7epOm9Njz8Vvmf26oHrS86Qne5KB8rd1kabJpPVhehNjMF8MSrm2FMy1pmY1vVdd', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(9, 'zgZc4', 'tHxW9L2yjJ2wGzKokPaissIOyevKGEQNFKgx9702RgipXGYdXFbyAy7BwI1D4pTDnrt09wqkSQJjBAZ0EnY69rUZlOQA42ycHtQr', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(10, 'Sq4Be', 'TnTK2JiTx4VOZapqKLtCi1KjIDpcXAchHQITrspmnlbbIFpro9egjNSykqNxQEz30wraJf4NMIq4p24JqRSBkQ8CHzOEH7TmCyMC', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(11, '7zZ4u', 'd1u7RWboVcmT8lG87uHKG0awRQZ0E2d37dnQZAC2EocsXSlPejbKhBwjLIE1wGFsnErQrqxvszWp2Be9oyc4kUNYWnnI3WkNE4bD', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(12, 'hBi9W', 'zZ0tIT0ucRvf76aK8eUYwXUWMBqcS2AFRZYjr9t13QAi6SgA7cnuHlJ31Oaz3N9HkOXJYlhJFOfUKNK3NrtYtmHmmyVs7tp97kia', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(13, 'twDRM', 'SlWTZGzxzigDbhTT3mG8he0GWnnwUXaT4d6xeQNI4Xi9nCa0AupfpnWyoK3q4P6Dh5aEyc9QJ19qfF7BW8jpaNWNbxJg417EgHLc', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(14, 'oWoVL', 'o0lSdcrK6uQjFG9s0DJ2ZTlfepTMILgXEmOfDn5SBQmmL4pcptTkobcUnOBc6LypVJA2aBXtjVi0oSaH5EA80X6TSMQ2dZ3WhnnN', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(15, '1x4dv', 'nD3Tl2WSBGRmxtw4rr8NOCuaZgcd1OrvNxHq5Dv3kYp38Ffa7CmKxK53SrBEHpfIoycVmdBzn7JQYKpqUcysl5jyj60avQtFAZds', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(16, 'eCSL6', 'xm5vLFwrWAo9zzr8U0MmoxxO3SyRGnl1g88zDwhOTvutGXhCbjcBMx2rtH4OhkFPdkpIxwkhrFYDHlc0Kqx20QuNWmtwQnH042aY', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(17, 'LL9uQ', 'CEfiMWHlhFIxsWqumhIi88dFEfwSI75MIaHIEZ8nffmhjJIf1f0I4MheIATAFYSiEXXL7OAPdCS9iXKsjNV6JD4Vd7n5w0yNzf2h', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(18, '8sYTG', 'IzkRiJNxLEv2UpXZ4Qjq79jF00ULn4oJvdbhaaTjINWxct9HSscHwHadaWh2H5JOfDZa1MHu3QockC6HL1VL5fDIBvtMdJkI5mju', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(19, 'EU4yq', '9Ryaeql1TYyc6ZfJNDrZdwt1TufnuX5qcJGi0oJCy1Gh3HPGTej6A1BB6OSS0QS9Z3IdYlY2cQTaRIePtSAmWQFCnrjhijj477XB', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(20, 'SaFBh', 'MpIxqyxuhEiPzAT42CJ2ouS7XYi2L4BCcr9BFRBO9BrNruith5KeutE4nlU4Kw7ZqCUB6JpcPWO3afgcZFiJfF7Lmpsw94YuzsDa', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(21, 'GiaUW', '1t36PWVNstZPFRyeREithk6FJs0YGA8GIHc7KqO4147dfN4o0vDxTQ8IsJHQOFekezXTPIs9N06selACjsr8psfwHgucI9duLmlw', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(22, 'Obl5Y', '9tI8I0mbcNCzSxJ3IPBH6vpsdUauUupSZVQmzxiGHa9cCdKklqNe1M6xuSbqNxg4uL5oIxeyhTQWp4CjlNZ0x7CEKjrKDpWLJZjz', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(23, 'eo8g8', '0dcstnceLuCAZIDozAE8smvzipRSDqTXBNSpoe7P6AUIBNnSgzj6mH85GRYzRKnqcOwtM4Hmmgw353lUZ0Ct0DAA2TDfuJokbgam', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(24, '6zeKi', 'wasmLa2zRxT2TuJ7nOUiU5fpIIRVQcEypkJMrXqwQmBDllhYe9zNNqlEHfd2U8kuy8fiThZfGpsBCnuncZ1Zizu6s519L3IJvni9', '2024-01-12 19:07:19', '2024-01-12 19:07:19'),
(25, 'Gji8F', 'o5Wwhgk2We9Q4KhUW4aZtsp0ZQ9YvA1TTyXiDcm4XzXWfdqEsgqkHg7SPFuPAZRaFxBbMotiFON2e9uof1roZ7x4BMXDKLYNZxgs', '2024-01-12 19:07:19', '2024-01-12 19:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name_ar` varchar(255) NOT NULL,
  `city_name_en` varchar(255) NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name_ar`, `city_name_en`, `state_id`, `created_at`, `updated_at`) VALUES
(1, '15 مايو', '15 May', 1, NULL, NULL),
(2, 'الازبكية', 'Al Azbakeyah', 1, NULL, NULL),
(3, 'البساتين', 'Al Basatin', 1, NULL, NULL),
(4, 'التبين', 'Tebin', 1, NULL, NULL),
(5, 'الخليفة', 'El-Khalifa', 1, NULL, NULL),
(6, 'الدراسة', 'El darrasa', 1, NULL, NULL),
(7, 'الدرب الاحمر', 'Aldarb Alahmar', 1, NULL, NULL),
(8, 'الزاوية الحمراء', 'Zawya al-Hamra', 1, NULL, NULL),
(9, 'الزيتون', 'El-Zaytoun', 1, NULL, NULL),
(10, 'الساحل', 'Sahel', 1, NULL, NULL),
(11, 'السلام', 'El Salam', 1, NULL, NULL),
(12, 'السيدة زينب', 'Sayeda Zeinab', 1, NULL, NULL),
(13, 'الشرابية', 'El Sharabeya', 1, NULL, NULL),
(14, 'مدينة الشروق', 'Shorouk', 1, NULL, NULL),
(15, 'الظاهر', 'El Daher', 1, NULL, NULL),
(16, 'العتبة', 'Ataba', 1, NULL, NULL),
(17, 'القاهرة الجديدة', 'New Cairo', 1, NULL, NULL),
(18, 'المرج', 'El Marg', 1, NULL, NULL),
(19, 'عزبة النخل', 'Ezbet el Nakhl', 1, NULL, NULL),
(20, 'المطرية', 'Matareya', 1, NULL, NULL),
(21, 'المعادى', 'Maadi', 1, NULL, NULL),
(22, 'المعصرة', 'Maasara', 1, NULL, NULL),
(23, 'المقطم', 'Mokattam', 1, NULL, NULL),
(24, 'المنيل', 'Manyal', 1, NULL, NULL),
(25, 'الموسكى', 'Mosky', 1, NULL, NULL),
(26, 'النزهة', 'Nozha', 1, NULL, NULL),
(27, 'الوايلى', 'Waily', 1, NULL, NULL),
(28, 'باب الشعرية', 'Bab al-Shereia', 1, NULL, NULL),
(29, 'بولاق', 'Bolaq', 1, NULL, NULL),
(30, 'جاردن سيتى', 'Garden City', 1, NULL, NULL),
(31, 'حدائق القبة', 'Hadayek El-Kobba', 1, NULL, NULL),
(32, 'حلوان', 'Helwan', 1, NULL, NULL),
(33, 'دار السلام', 'Dar Al Salam', 1, NULL, NULL),
(34, 'شبرا', 'Shubra', 1, NULL, NULL),
(35, 'طره', 'Tura', 1, NULL, NULL),
(36, 'عابدين', 'Abdeen', 1, NULL, NULL),
(37, 'عباسية', 'Abaseya', 1, NULL, NULL),
(38, 'عين شمس', 'Ain Shams', 1, NULL, NULL),
(39, 'مدينة نصر', 'Nasr City', 1, NULL, NULL),
(40, 'مصر الجديدة', 'New Heliopolis', 1, NULL, NULL),
(41, 'مصر القديمة', 'Masr Al Qadima', 1, NULL, NULL),
(42, 'منشية ناصر', 'Mansheya Nasir', 1, NULL, NULL),
(43, 'مدينة بدر', 'Badr City', 1, NULL, NULL),
(44, 'مدينة العبور', 'Obour City', 1, NULL, NULL),
(45, 'وسط البلد', 'Cairo Downtown', 1, NULL, NULL),
(46, 'الزمالك', 'Zamalek', 1, NULL, NULL),
(47, 'قصر النيل', 'Kasr El Nile', 1, NULL, NULL),
(48, 'الرحاب', 'Rehab', 1, NULL, NULL),
(49, 'القطامية', 'Katameya', 1, NULL, NULL),
(50, 'مدينتي', 'Madinty', 1, NULL, NULL),
(51, 'روض الفرج', 'Rod Alfarag', 1, NULL, NULL),
(52, 'شيراتون', 'Sheraton', 1, NULL, NULL),
(53, 'الجمالية', 'El-Gamaleya', 1, NULL, NULL),
(54, 'العاشر من رمضان', '10th of Ramadan City', 1, NULL, NULL),
(55, 'الحلمية', 'Helmeyat Alzaytoun', 1, NULL, NULL),
(56, 'النزهة الجديدة', 'New Nozha', 1, NULL, NULL),
(57, 'العاصمة الإدارية', 'Capital New', 1, NULL, NULL),
(58, 'الجيزة', 'Giza', 2, NULL, NULL),
(59, 'السادس من أكتوبر', 'Sixth of October', 2, NULL, NULL),
(60, 'الشيخ زايد', 'Cheikh Zayed', 2, NULL, NULL),
(61, 'الحوامدية', 'Hawamdiyah', 2, NULL, NULL),
(62, 'البدرشين', 'Al Badrasheen', 2, NULL, NULL),
(63, 'الصف', 'Saf', 2, NULL, NULL),
(64, 'أطفيح', 'Atfih', 2, NULL, NULL),
(65, 'العياط', 'Al Ayat', 2, NULL, NULL),
(66, 'الباويطي', 'Al-Bawaiti', 2, NULL, NULL),
(67, 'منشأة القناطر', 'ManshiyetAl Qanater', 2, NULL, NULL),
(68, 'أوسيم', 'Oaseem', 2, NULL, NULL),
(69, 'كرداسة', 'Kerdasa', 2, NULL, NULL),
(70, 'أبو النمرس', 'Abu Nomros', 2, NULL, NULL),
(71, 'كفر غطاطي', 'Kafr Ghati', 2, NULL, NULL),
(72, 'منشأة البكاري', 'Manshiyet Al Bakari', 2, NULL, NULL),
(73, 'الدقى', 'Dokki', 2, NULL, NULL),
(74, 'العجوزة', 'Agouza', 2, NULL, NULL),
(75, 'الهرم', 'Haram', 2, NULL, NULL),
(76, 'الوراق', 'Warraq', 2, NULL, NULL),
(77, 'امبابة', 'Imbaba', 2, NULL, NULL),
(78, 'بولاق الدكرور', 'Boulaq Dakrour', 2, NULL, NULL),
(79, 'الواحات البحرية', 'Al Wahat Al Baharia', 2, NULL, NULL),
(80, 'العمرانية', 'Omraneya', 2, NULL, NULL),
(81, 'المنيب', 'Moneeb', 2, NULL, NULL),
(82, 'بين السرايات', 'Bin Alsarayat', 2, NULL, NULL),
(83, 'الكيت كات', 'Kit Kat', 2, NULL, NULL),
(84, 'المهندسين', 'Mohandessin', 2, NULL, NULL),
(85, 'فيصل', 'Faisal', 2, NULL, NULL),
(86, 'أبو رواش', 'Abu Rawash', 2, NULL, NULL),
(87, 'حدائق الأهرام', 'Hadayek Alahram', 2, NULL, NULL),
(88, 'الحرانية', 'Haraneya', 2, NULL, NULL),
(89, 'حدائق اكتوبر', 'Hadayek October', 2, NULL, NULL),
(90, 'صفط اللبن', 'Saft Allaban', 2, NULL, NULL),
(91, 'القرية الذكية', 'Smart Village', 2, NULL, NULL),
(92, 'ارض اللواء', 'Ard Ellwaa', 2, NULL, NULL),
(93, 'ابو قير', 'Abu Qir', 3, NULL, NULL),
(94, 'الابراهيمية', 'Al Ibrahimeyah', 3, NULL, NULL),
(95, 'الأزاريطة', 'Azarita', 3, NULL, NULL),
(96, 'الانفوشى', 'Anfoushi', 3, NULL, NULL),
(97, 'الدخيلة', 'Dekheila', 3, NULL, NULL),
(98, 'السيوف', 'El Soyof', 3, NULL, NULL),
(99, 'العامرية', 'Ameria', 3, NULL, NULL),
(100, 'اللبان', 'El Labban', 3, NULL, NULL),
(101, 'المفروزة', 'Al Mafrouza', 3, NULL, NULL),
(102, 'المنتزه', 'El Montaza', 3, NULL, NULL),
(103, 'المنشية', 'Mansheya', 3, NULL, NULL),
(104, 'الناصرية', 'Naseria', 3, NULL, NULL),
(105, 'امبروزو', 'Ambrozo', 3, NULL, NULL),
(106, 'باب شرق', 'Bab Sharq', 3, NULL, NULL),
(107, 'برج العرب', 'Bourj Alarab', 3, NULL, NULL),
(108, 'ستانلى', 'Stanley', 3, NULL, NULL),
(109, 'سموحة', 'Smouha', 3, NULL, NULL),
(110, 'سيدى بشر', 'Sidi Bishr', 3, NULL, NULL),
(111, 'شدس', 'Shads', 3, NULL, NULL),
(112, 'غيط العنب', 'Gheet Alenab', 3, NULL, NULL),
(113, 'فلمينج', 'Fleming', 3, NULL, NULL),
(114, 'فيكتوريا', 'Victoria', 3, NULL, NULL),
(115, 'كامب شيزار', 'Camp Shizar', 3, NULL, NULL),
(116, 'كرموز', 'Karmooz', 3, NULL, NULL),
(117, 'محطة الرمل', 'Mahta Alraml', 3, NULL, NULL),
(118, 'مينا البصل', 'Mina El-Basal', 3, NULL, NULL),
(119, 'العصافرة', 'Asafra', 3, NULL, NULL),
(120, 'العجمي', 'Agamy', 3, NULL, NULL),
(121, 'بكوس', 'Bakos', 3, NULL, NULL),
(122, 'بولكلي', 'Boulkly', 3, NULL, NULL),
(123, 'كليوباترا', 'Cleopatra', 3, NULL, NULL),
(124, 'جليم', 'Glim', 3, NULL, NULL),
(125, 'المعمورة', 'Al Mamurah', 3, NULL, NULL),
(126, 'المندرة', 'Al Mandara', 3, NULL, NULL),
(127, 'محرم بك', 'Moharam Bek', 3, NULL, NULL),
(128, 'الشاطبي', 'Elshatby', 3, NULL, NULL),
(129, 'سيدي جابر', 'Sidi Gaber', 3, NULL, NULL),
(130, 'الساحل الشمالي', 'North Coast/sahel', 3, NULL, NULL),
(131, 'الحضرة', 'Alhadra', 3, NULL, NULL),
(132, 'العطارين', 'Alattarin', 3, NULL, NULL),
(133, 'سيدي كرير', 'Sidi Kerir', 3, NULL, NULL),
(134, 'الجمرك', 'Elgomrok', 3, NULL, NULL),
(135, 'المكس', 'Al Max', 3, NULL, NULL),
(136, 'مارينا', 'Marina', 3, NULL, NULL),
(137, 'المنصورة', 'Mansoura', 4, NULL, NULL),
(138, 'طلخا', 'Talkha', 4, NULL, NULL),
(139, 'ميت غمر', 'Mitt Ghamr', 4, NULL, NULL),
(140, 'دكرنس', 'Dekernes', 4, NULL, NULL),
(141, 'أجا', 'Aga', 4, NULL, NULL),
(142, 'منية النصر', 'Menia El Nasr', 4, NULL, NULL),
(143, 'السنبلاوين', 'Sinbillawin', 4, NULL, NULL),
(144, 'الكردي', 'El Kurdi', 4, NULL, NULL),
(145, 'بني عبيد', 'Bani Ubaid', 4, NULL, NULL),
(146, 'المنزلة', 'Al Manzala', 4, NULL, NULL),
(147, 'تمي الأمديد', 'tami al\'amdid', 4, NULL, NULL),
(148, 'الجمالية', 'aljamalia', 4, NULL, NULL),
(149, 'شربين', 'Sherbin', 4, NULL, NULL),
(150, 'المطرية', 'Mataria', 4, NULL, NULL),
(151, 'بلقاس', 'Belqas', 4, NULL, NULL),
(152, 'ميت سلسيل', 'Meet Salsil', 4, NULL, NULL),
(153, 'جمصة', 'Gamasa', 4, NULL, NULL),
(154, 'محلة دمنة', 'Mahalat Damana', 4, NULL, NULL),
(155, 'نبروه', 'Nabroh', 4, NULL, NULL),
(156, 'الغردقة', 'Hurghada', 5, NULL, NULL),
(157, 'رأس غارب', 'Ras Ghareb', 5, NULL, NULL),
(158, 'سفاجا', 'Safaga', 5, NULL, NULL),
(159, 'القصير', 'El Qusiar', 5, NULL, NULL),
(160, 'مرسى علم', 'Marsa Alam', 5, NULL, NULL),
(161, 'الشلاتين', 'Shalatin', 5, NULL, NULL),
(162, 'حلايب', 'Halaib', 5, NULL, NULL),
(163, 'الدهار', 'Aldahar', 5, NULL, NULL),
(164, 'دمنهور', 'Damanhour', 6, NULL, NULL),
(165, 'كفر الدوار', 'Kafr El Dawar', 6, NULL, NULL),
(166, 'رشيد', 'Rashid', 6, NULL, NULL),
(167, 'إدكو', 'Edco', 6, NULL, NULL),
(168, 'أبو المطامير', 'Abu al-Matamir', 6, NULL, NULL),
(169, 'أبو حمص', 'Abu Homs', 6, NULL, NULL),
(170, 'الدلنجات', 'Delengat', 6, NULL, NULL),
(171, 'المحمودية', 'Mahmoudiyah', 6, NULL, NULL),
(172, 'الرحمانية', 'Rahmaniyah', 6, NULL, NULL),
(173, 'إيتاي البارود', 'Itai Baroud', 6, NULL, NULL),
(174, 'حوش عيسى', 'Housh Eissa', 6, NULL, NULL),
(175, 'شبراخيت', 'Shubrakhit', 6, NULL, NULL),
(176, 'كوم حمادة', 'Kom Hamada', 6, NULL, NULL),
(177, 'بدر', 'Badr', 6, NULL, NULL),
(178, 'وادي النطرون', 'Wadi Natrun', 6, NULL, NULL),
(179, 'النوبارية الجديدة', 'New Nubaria', 6, NULL, NULL),
(180, 'النوبارية', 'Alnoubareya', 6, NULL, NULL),
(181, 'الفيوم', 'Fayoum', 7, NULL, NULL),
(182, 'الفيوم الجديدة', 'Fayoum El Gedida', 7, NULL, NULL),
(183, 'طامية', 'Tamiya', 7, NULL, NULL),
(184, 'سنورس', 'Snores', 7, NULL, NULL),
(185, 'إطسا', 'Etsa', 7, NULL, NULL),
(186, 'إبشواي', 'Epschway', 7, NULL, NULL),
(187, 'يوسف الصديق', 'Yusuf El Sediaq', 7, NULL, NULL),
(188, 'الحادقة', 'Hadqa', 7, NULL, NULL),
(189, 'اطسا', 'Atsa', 7, NULL, NULL),
(190, 'الجامعة', 'Algamaa', 7, NULL, NULL),
(191, 'السيالة', 'Sayala', 7, NULL, NULL),
(192, 'طنطا', 'Tanta', 8, NULL, NULL),
(193, 'المحلة الكبرى', 'Al Mahalla Al Kobra', 8, NULL, NULL),
(194, 'كفر الزيات', 'Kafr El Zayat', 8, NULL, NULL),
(195, 'زفتى', 'Zefta', 8, NULL, NULL),
(196, 'السنطة', 'El Santa', 8, NULL, NULL),
(197, 'قطور', 'Qutour', 8, NULL, NULL),
(198, 'بسيون', 'Basion', 8, NULL, NULL),
(199, 'سمنود', 'Samannoud', 8, NULL, NULL),
(200, 'الإسماعيلية', 'Ismailia', 9, NULL, NULL),
(201, 'فايد', 'Fayed', 9, NULL, NULL),
(202, 'القنطرة شرق', 'Qantara Sharq', 9, NULL, NULL),
(203, 'القنطرة غرب', 'Qantara Gharb', 9, NULL, NULL),
(204, 'التل الكبير', 'El Tal El Kabier', 9, NULL, NULL),
(205, 'أبو صوير', 'Abu Sawir', 9, NULL, NULL),
(206, 'القصاصين الجديدة', 'Kasasien El Gedida', 9, NULL, NULL),
(207, 'نفيشة', 'Nefesha', 9, NULL, NULL),
(208, 'الشيخ زايد', 'Sheikh Zayed', 9, NULL, NULL),
(209, 'شبين الكوم', 'Shbeen El Koom', 10, NULL, NULL),
(210, 'مدينة السادات', 'Sadat City', 10, NULL, NULL),
(211, 'منوف', 'Menouf', 10, NULL, NULL),
(212, 'سرس الليان', 'Sars El-Layan', 10, NULL, NULL),
(213, 'أشمون', 'Ashmon', 10, NULL, NULL),
(214, 'الباجور', 'Al Bagor', 10, NULL, NULL),
(215, 'قويسنا', 'Quesna', 10, NULL, NULL),
(216, 'بركة السبع', 'Berkat El Saba', 10, NULL, NULL),
(217, 'تلا', 'Tala', 10, NULL, NULL),
(218, 'الشهداء', 'Al Shohada', 10, NULL, NULL),
(219, 'المنيا', 'Minya', 11, NULL, NULL),
(220, 'المنيا الجديدة', 'Minya El Gedida', 11, NULL, NULL),
(221, 'العدوة', 'El Adwa', 11, NULL, NULL),
(222, 'مغاغة', 'Magagha', 11, NULL, NULL),
(223, 'بني مزار', 'Bani Mazar', 11, NULL, NULL),
(224, 'مطاي', 'Mattay', 11, NULL, NULL),
(225, 'سمالوط', 'Samalut', 11, NULL, NULL),
(226, 'المدينة الفكرية', 'Madinat El Fekria', 11, NULL, NULL),
(227, 'ملوي', 'Meloy', 11, NULL, NULL),
(228, 'دير مواس', 'Deir Mawas', 11, NULL, NULL),
(229, 'ابو قرقاص', 'Abu Qurqas', 11, NULL, NULL),
(230, 'ارض سلطان', 'Ard Sultan', 11, NULL, NULL),
(231, 'بنها', 'Banha', 12, NULL, NULL),
(232, 'قليوب', 'Qalyub', 12, NULL, NULL),
(233, 'شبرا الخيمة', 'Shubra Al Khaimah', 12, NULL, NULL),
(234, 'القناطر الخيرية', 'Al Qanater Charity', 12, NULL, NULL),
(235, 'الخانكة', 'Khanka', 12, NULL, NULL),
(236, 'كفر شكر', 'Kafr Shukr', 12, NULL, NULL),
(237, 'طوخ', 'Tukh', 12, NULL, NULL),
(238, 'قها', 'Qaha', 12, NULL, NULL),
(239, 'العبور', 'Obour', 12, NULL, NULL),
(240, 'الخصوص', 'Khosous', 12, NULL, NULL),
(241, 'شبين القناطر', 'Shibin Al Qanater', 12, NULL, NULL),
(242, 'مسطرد', 'Mostorod', 12, NULL, NULL),
(243, 'الخارجة', 'El Kharga', 13, NULL, NULL),
(244, 'باريس', 'Paris', 13, NULL, NULL),
(245, 'موط', 'Mout', 13, NULL, NULL),
(246, 'الفرافرة', 'Farafra', 13, NULL, NULL),
(247, 'بلاط', 'Balat', 13, NULL, NULL),
(248, 'الداخلة', 'Dakhla', 13, NULL, NULL),
(249, 'السويس', 'Suez', 14, NULL, NULL),
(250, 'الجناين', 'Alganayen', 14, NULL, NULL),
(251, 'عتاقة', 'Ataqah', 14, NULL, NULL),
(252, 'العين السخنة', 'Ain Sokhna', 14, NULL, NULL),
(253, 'فيصل', 'Faysal', 14, NULL, NULL),
(254, 'أسوان', 'Aswan', 15, NULL, NULL),
(255, 'أسوان الجديدة', 'Aswan El Gedida', 15, NULL, NULL),
(256, 'دراو', 'Drau', 15, NULL, NULL),
(257, 'كوم أمبو', 'Kom Ombo', 15, NULL, NULL),
(258, 'نصر النوبة', 'Nasr Al Nuba', 15, NULL, NULL),
(259, 'كلابشة', 'Kalabsha', 15, NULL, NULL),
(260, 'إدفو', 'Edfu', 15, NULL, NULL),
(261, 'الرديسية', 'Al-Radisiyah', 15, NULL, NULL),
(262, 'البصيلية', 'Al Basilia', 15, NULL, NULL),
(263, 'السباعية', 'Al Sibaeia', 15, NULL, NULL),
(264, 'ابوسمبل السياحية', 'Abo Simbl Al Siyahia', 15, NULL, NULL),
(265, 'مرسى علم', 'Marsa Alam', 15, NULL, NULL),
(266, 'أسيوط', 'Assiut', 16, NULL, NULL),
(267, 'أسيوط الجديدة', 'Assiut El Gedida', 16, NULL, NULL),
(268, 'ديروط', 'Dayrout', 16, NULL, NULL),
(269, 'منفلوط', 'Manfalut', 16, NULL, NULL),
(270, 'القوصية', 'Qusiya', 16, NULL, NULL),
(271, 'أبنوب', 'Abnoub', 16, NULL, NULL),
(272, 'أبو تيج', 'Abu Tig', 16, NULL, NULL),
(273, 'الغنايم', 'El Ghanaim', 16, NULL, NULL),
(274, 'ساحل سليم', 'Sahel Selim', 16, NULL, NULL),
(275, 'البداري', 'El Badari', 16, NULL, NULL),
(276, 'صدفا', 'Sidfa', 16, NULL, NULL),
(277, 'بني سويف', 'Bani Sweif', 17, NULL, NULL),
(278, 'بني سويف الجديدة', 'Beni Suef El Gedida', 17, NULL, NULL),
(279, 'الواسطى', 'Al Wasta', 17, NULL, NULL),
(280, 'ناصر', 'Naser', 17, NULL, NULL),
(281, 'إهناسيا', 'Ehnasia', 17, NULL, NULL),
(282, 'ببا', 'beba', 17, NULL, NULL),
(283, 'الفشن', 'Fashn', 17, NULL, NULL),
(284, 'سمسطا', 'Somasta', 17, NULL, NULL),
(285, 'الاباصيرى', 'Alabbaseri', 17, NULL, NULL),
(286, 'مقبل', 'Mokbel', 17, NULL, NULL),
(287, 'بورسعيد', 'PorSaid', 18, NULL, NULL),
(288, 'بورفؤاد', 'Port Fouad', 18, NULL, NULL),
(289, 'العرب', 'Alarab', 18, NULL, NULL),
(290, 'حى الزهور', 'Zohour', 18, NULL, NULL),
(291, 'حى الشرق', 'Alsharq', 18, NULL, NULL),
(292, 'حى الضواحى', 'Aldawahi', 18, NULL, NULL),
(293, 'حى المناخ', 'Almanakh', 18, NULL, NULL),
(294, 'حى مبارك', 'Mubarak', 18, NULL, NULL),
(295, 'دمياط', 'Damietta', 19, NULL, NULL),
(296, 'دمياط الجديدة', 'New Damietta', 19, NULL, NULL),
(297, 'رأس البر', 'Ras El Bar', 19, NULL, NULL),
(298, 'فارسكور', 'Faraskour', 19, NULL, NULL),
(299, 'الزرقا', 'Zarqa', 19, NULL, NULL),
(300, 'السرو', 'alsaru', 19, NULL, NULL),
(301, 'الروضة', 'alruwda', 19, NULL, NULL),
(302, 'كفر البطيخ', 'Kafr El-Batikh', 19, NULL, NULL),
(303, 'عزبة البرج', 'Azbet Al Burg', 19, NULL, NULL),
(304, 'ميت أبو غالب', 'Meet Abou Ghalib', 19, NULL, NULL),
(305, 'كفر سعد', 'Kafr Saad', 19, NULL, NULL),
(306, 'الزقازيق', 'Zagazig', 20, NULL, NULL),
(307, 'العاشر من رمضان', 'Al Ashr Men Ramadan', 20, NULL, NULL),
(308, 'منيا القمح', 'Minya Al Qamh', 20, NULL, NULL),
(309, 'بلبيس', 'Belbeis', 20, NULL, NULL),
(310, 'مشتول السوق', 'Mashtoul El Souq', 20, NULL, NULL),
(311, 'القنايات', 'Qenaiat', 20, NULL, NULL),
(312, 'أبو حماد', 'Abu Hammad', 20, NULL, NULL),
(313, 'القرين', 'El Qurain', 20, NULL, NULL),
(314, 'ههيا', 'Hehia', 20, NULL, NULL),
(315, 'أبو كبير', 'Abu Kabir', 20, NULL, NULL),
(316, 'فاقوس', 'Faccus', 20, NULL, NULL),
(317, 'الصالحية الجديدة', 'El Salihia El Gedida', 20, NULL, NULL),
(318, 'الإبراهيمية', 'Al Ibrahimiyah', 20, NULL, NULL),
(319, 'ديرب نجم', 'Deirb Negm', 20, NULL, NULL),
(320, 'كفر صقر', 'Kafr Saqr', 20, NULL, NULL),
(321, 'أولاد صقر', 'Awlad Saqr', 20, NULL, NULL),
(322, 'الحسينية', 'Husseiniya', 20, NULL, NULL),
(323, 'صان الحجر القبلية', 'san alhajar alqablia', 20, NULL, NULL),
(324, 'منشأة أبو عمر', 'Manshayat Abu Omar', 20, NULL, NULL),
(325, 'الطور', 'Al Toor', 21, NULL, NULL),
(326, 'شرم الشيخ', 'Sharm El-Shaikh', 21, NULL, NULL),
(327, 'دهب', 'Dahab', 21, NULL, NULL),
(328, 'نويبع', 'Nuweiba', 21, NULL, NULL),
(329, 'طابا', 'Taba', 21, NULL, NULL),
(330, 'سانت كاترين', 'Saint Catherine', 21, NULL, NULL),
(331, 'أبو رديس', 'Abu Redis', 21, NULL, NULL),
(332, 'أبو زنيمة', 'Abu Zenaima', 21, NULL, NULL),
(333, 'رأس سدر', 'Ras Sidr', 21, NULL, NULL),
(334, 'كفر الشيخ', 'Kafr El Sheikh', 22, NULL, NULL),
(335, 'وسط البلد كفر الشيخ', 'Kafr El Sheikh Downtown', 22, NULL, NULL),
(336, 'دسوق', 'Desouq', 22, NULL, NULL),
(337, 'فوه', 'Fooh', 22, NULL, NULL),
(338, 'مطوبس', 'Metobas', 22, NULL, NULL),
(339, 'برج البرلس', 'Burg Al Burullus', 22, NULL, NULL),
(340, 'بلطيم', 'Baltim', 22, NULL, NULL),
(341, 'مصيف بلطيم', 'Masief Baltim', 22, NULL, NULL),
(342, 'الحامول', 'Hamol', 22, NULL, NULL),
(343, 'بيلا', 'Bella', 22, NULL, NULL),
(344, 'الرياض', 'Riyadh', 22, NULL, NULL),
(345, 'سيدي سالم', 'Sidi Salm', 22, NULL, NULL),
(346, 'قلين', 'Qellen', 22, NULL, NULL),
(347, 'سيدي غازي', 'Sidi Ghazi', 22, NULL, NULL),
(348, 'مرسى مطروح', 'Marsa Matrouh', 23, NULL, NULL),
(349, 'الحمام', 'El Hamam', 23, NULL, NULL),
(350, 'العلمين', 'Alamein', 23, NULL, NULL),
(351, 'الضبعة', 'Dabaa', 23, NULL, NULL),
(352, 'النجيلة', 'Al-Nagila', 23, NULL, NULL),
(353, 'سيدي براني', 'Sidi Brani', 23, NULL, NULL),
(354, 'السلوم', 'Salloum', 23, NULL, NULL),
(355, 'سيوة', 'Siwa', 23, NULL, NULL),
(356, 'مارينا', 'Marina', 23, NULL, NULL),
(357, 'الساحل الشمالى', 'North Coast', 23, NULL, NULL),
(358, 'الأقصر', 'Luxor', 24, NULL, NULL),
(359, 'الأقصر الجديدة', 'New Luxor', 24, NULL, NULL),
(360, 'إسنا', 'Esna', 24, NULL, NULL),
(361, 'طيبة الجديدة', 'New Tiba', 24, NULL, NULL),
(362, 'الزينية', 'Al ziynia', 24, NULL, NULL),
(363, 'البياضية', 'Al Bayadieh', 24, NULL, NULL),
(364, 'القرنة', 'Al Qarna', 24, NULL, NULL),
(365, 'أرمنت', 'Armant', 24, NULL, NULL),
(366, 'الطود', 'Al Tud', 24, NULL, NULL),
(367, 'قنا', 'Qena', 25, NULL, NULL),
(368, 'قنا الجديدة', 'New Qena', 25, NULL, NULL),
(369, 'ابو طشت', 'Abu Tesht', 25, NULL, NULL),
(370, 'نجع حمادي', 'Nag Hammadi', 25, NULL, NULL),
(371, 'دشنا', 'Deshna', 25, NULL, NULL),
(372, 'الوقف', 'Alwaqf', 25, NULL, NULL),
(373, 'قفط', 'Qaft', 25, NULL, NULL),
(374, 'نقادة', 'Naqada', 25, NULL, NULL),
(375, 'فرشوط', 'Farshout', 25, NULL, NULL),
(376, 'قوص', 'Quos', 25, NULL, NULL),
(377, 'العريش', 'Arish', 26, NULL, NULL),
(378, 'الشيخ زويد', 'Sheikh Zowaid', 26, NULL, NULL),
(379, 'نخل', 'Nakhl', 26, NULL, NULL),
(380, 'رفح', 'Rafah', 26, NULL, NULL),
(381, 'بئر العبد', 'Bir al-Abed', 26, NULL, NULL),
(382, 'الحسنة', 'Al Hasana', 26, NULL, NULL),
(383, 'سوهاج', 'Sohag', 27, NULL, NULL),
(384, 'سوهاج الجديدة', 'Sohag El Gedida', 27, NULL, NULL),
(385, 'أخميم', 'Akhmeem', 27, NULL, NULL),
(386, 'أخميم الجديدة', 'Akhmim El Gedida', 27, NULL, NULL),
(387, 'البلينا', 'Albalina', 27, NULL, NULL),
(388, 'المراغة', 'El Maragha', 27, NULL, NULL),
(389, 'المنشأة', 'almunsha\'a', 27, NULL, NULL),
(390, 'دار السلام', 'Dar AISalaam', 27, NULL, NULL),
(391, 'جرجا', 'Gerga', 27, NULL, NULL),
(392, 'جهينة الغربية', 'Jahina Al Gharbia', 27, NULL, NULL),
(393, 'ساقلته', 'Saqilatuh', 27, NULL, NULL),
(394, 'طما', 'Tama', 27, NULL, NULL),
(395, 'طهطا', 'Tahta', 27, NULL, NULL),
(396, 'الكوثر', 'Alkawthar', 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joins`
--

CREATE TABLE `joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journey_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joins`
--

INSERT INTO `joins` (`id`, `journey_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-12 19:25:51', '2024-01-12 19:25:51'),
(2, 1, 1, '2024-01-12 19:27:34', '2024-01-12 19:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `journeys`
--

CREATE TABLE `journeys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journey_name` varchar(255) NOT NULL,
  `journey_description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `date_of_journey` date NOT NULL,
  `time_of_journey` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journeys`
--

INSERT INTO `journeys` (`id`, `journey_name`, `journey_description`, `image`, `user_id`, `category_id`, `state_id`, `city_id`, `date_of_journey`, `time_of_journey`, `created_at`, `updated_at`) VALUES
(1, '1', '5', 'RMNBU.jpg', 1, 1, 5, 5, '2024-01-01', '12:20:00', '2024-01-12 19:25:02', '2024-01-12 19:25:02'),
(2, '1', '5', '6Lkz6.jpg', 1, 1, 5, 5, '2024-01-01', '12:20:00', '2024-01-12 19:27:26', '2024-01-12 19:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_09_211704_create_static_pages_table', 1),
(6, '2024_01_09_222017_create_states_table', 1),
(7, '2024_01_09_222543_create_cities_table', 1),
(8, '2024_01_10_213509_create_categories_table', 1),
(9, '2024_01_10_220622_create_journeys_table', 1),
(10, '2024_01_11_235117_add_columns_to_users_table', 1),
(11, '2024_01_12_000935_create_joins_table', 1),
(12, '2024_01_12_175806_create_verifications_table', 1),
(13, '2024_01_12_194728_create_abouts_table', 1),
(14, '2024_01_12_202817_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('15adee2a-4274-4f60-a398-5f2d366135a1', 'App\\Notifications\\JoinNotification', 'App\\Models\\User', 1, '{\"msg\":\"muhammedemad joined in your journey 1\"}', NULL, '2024-01-12 19:27:34', '2024-01-12 19:27:34'),
('b68e89b5-4570-4644-94af-9c1ebe519b07', 'App\\Notifications\\JoinNotification', 'App\\Models\\User', 1, '{\"msg\":\"muhammedemad joined in your journey \"}', NULL, '2024-01-12 19:25:52', '2024-01-12 19:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '9014d506b2673f6a5659a2ce5bd1ae1d916efd3499deef09d1138f08c189466d', '[\"*\"]', NULL, NULL, '2024-01-12 19:08:50', '2024-01-12 19:08:50'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '1d4435fd3f3306a0a4db19aa2acf10595934570702baeda1fb4bb51d3f969ccd', '[\"*\"]', '2024-01-12 19:18:08', NULL, '2024-01-12 19:10:08', '2024-01-12 19:18:08'),
(3, 'App\\Models\\User', 1, 'API TOKEN', '4be4ae3d984932facbd8d77aa66ebb3f3420462b98ee03f27a88e1dc9a325296', '[\"*\"]', NULL, NULL, '2024-01-12 19:16:53', '2024-01-12 19:16:53'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '4b8d264bdfa4f00b52f908ee3b25390a950e0cdaaef4e2578f9c94ba4efd78ff', '[\"*\"]', '2024-01-12 19:27:44', NULL, '2024-01-12 19:18:24', '2024-01-12 19:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name_ar` varchar(255) NOT NULL,
  `state_name_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name_ar`, `state_name_en`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 'Cairo', NULL, NULL),
(2, 'الجيزة', 'Giza', NULL, NULL),
(3, 'الأسكندرية', 'Alexandria', NULL, NULL),
(4, 'الدقهلية', 'Dakahlia', NULL, NULL),
(5, 'البحر الأحمر', 'Red Sea', NULL, NULL),
(6, 'البحيرة', 'Beheira', NULL, NULL),
(7, 'الفيوم', 'Fayoum', NULL, NULL),
(8, 'الغربية', 'Gharbiya', NULL, NULL),
(9, 'الإسماعلية', 'Ismailia', NULL, NULL),
(10, 'المنوفية', 'Menofia', NULL, NULL),
(11, 'المنيا', 'Minya', NULL, NULL),
(12, 'القليوبية', 'Qaliubiya', NULL, NULL),
(13, 'الوادي الجديد', 'New Valley', NULL, NULL),
(14, 'السويس', 'Suez', NULL, NULL),
(15, 'اسوان', 'Aswan', NULL, NULL),
(16, 'اسيوط', 'Assiut', NULL, NULL),
(17, 'بني سويف', 'Beni Suef', NULL, NULL),
(18, 'بورسعيد', 'Port Said', NULL, NULL),
(19, 'دمياط', 'Damietta', NULL, NULL),
(20, 'الشرقية', 'Sharkia', NULL, NULL),
(21, 'جنوب سيناء', 'South Sinai', NULL, NULL),
(22, 'كفر الشيخ', 'Kafr Al sheikh', NULL, NULL),
(23, 'مطروح', 'Matrouh', NULL, NULL),
(24, 'الأقصر', 'Luxor', NULL, NULL),
(25, 'قنا', 'Qena', NULL, NULL),
(26, 'شمال سيناء', 'North Sinai', NULL, NULL),
(27, 'سوهاج', 'Sohag', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'mK774sRFIf', 'PIB4O7kXVFMru11rJxB5gdNndq5xp7zBreAvV918TbRWzc5oLOkThgewBGOVQ1v9CrsjUA2Qi9ydbFQuVYaxwcXVirXEmynd7A6g', 'D6L7M.jpg', '2024-01-12 19:07:18', '2024-01-12 19:07:18'),
(2, 'Uw9O7PGQL2', 'lTnu4AjVhE0rzTobCbXl5J8YvYNYmNy3uo3IynbFlyzPiTceYsfJER7aW2jEcbPZGmPngqP1p0IYIwfWx6UpYIfqplcbzsAtwgE6', 'FoYkd.jpg', '2024-01-12 19:07:18', '2024-01-12 19:07:18'),
(3, 'lsMA12Ru1v', 'ZPUZqBXhc7HanDsvlIbWNssZIFj55tjrdaybQ1979OQMsXFX2HAQgR5004Py1241PuX0a7IqnPW9Ke0zlhJi8d6OmRBpqpxtKP0y', 'jDhk7.jpg', '2024-01-12 19:07:18', '2024-01-12 19:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `image` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `date_of_birth`, `gender`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `state_id`, `city_id`) VALUES
(1, 'muhammedemad', 'muhammed@gmail.com', '01007684850', '1999-10-01', 'male', 'jeVVP.jpg', NULL, '$2y$12$FNpeDeql4mVFaDjpUiJUeeLRJYAI0U.zzKilnWjamwuqgg6/Dwkqi', NULL, '2024-01-12 19:08:50', '2024-01-12 19:18:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '792563', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `joins`
--
ALTER TABLE `joins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `joins_journey_id_foreign` (`journey_id`),
  ADD KEY `joins_user_id_foreign` (`user_id`);

--
-- Indexes for table `journeys`
--
ALTER TABLE `journeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journeys_user_id_foreign` (`user_id`),
  ADD KEY `journeys_category_id_foreign` (`category_id`),
  ADD KEY `journeys_state_id_foreign` (`state_id`),
  ADD KEY `journeys_city_id_foreign` (`city_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_city_id_foreign` (`city_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verifications_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joins`
--
ALTER TABLE `joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journeys`
--
ALTER TABLE `journeys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `joins`
--
ALTER TABLE `joins`
  ADD CONSTRAINT `joins_journey_id_foreign` FOREIGN KEY (`journey_id`) REFERENCES `journeys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `joins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `journeys`
--
ALTER TABLE `journeys`
  ADD CONSTRAINT `journeys_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `journeys_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `journeys_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `journeys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
