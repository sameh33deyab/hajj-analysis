-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 03 août 2018 à 05:20
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hajj`
--

-- --------------------------------------------------------

--
-- Structure de la table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) UNSIGNED NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `nation` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hajj_info`
--

CREATE TABLE `hajj_info` (
  `h_id` int(11) UNSIGNED NOT NULL,
  `passport_no` varchar(100) DEFAULT NULL,
  `password` varchar(191) NOT NULL DEFAULT 'sam2030',
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `visa_no` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `dgree` int(5) DEFAULT '65',
  `father` varchar(10) DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `nation` int(5) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hajj_info`
--

INSERT INTO `hajj_info` (`h_id`, `passport_no`, `password`, `first_name`, `last_name`, `visa_no`, `phone`, `phone2`, `dgree`, `father`, `remember_token`, `nation`, `email`, `city`, `address`) VALUES
(1, '1236', '12345678', 'ali', 'mors', NULL, '0123456789', NULL, 65, NULL, NULL, 0, 'sameh33deyab@gmail.com', 'damitet', 'kafersaad');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_08_03_012613_transfer', 2);

-- --------------------------------------------------------

--
-- Structure de la table `money_in`
--

CREATE TABLE `money_in` (
  `in_id` int(11) UNSIGNED NOT NULL,
  `date_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank` int(11) NOT NULL,
  `approval` varchar(191) NOT NULL,
  `not_approved` varchar(191) DEFAULT NULL COMMENT 'رسالة خطا عدم الاكتمال',
  `last_hash` varchar(191) DEFAULT NULL COMMENT 'التشفير السابق',
  `hash` varchar(191) DEFAULT NULL COMMENT 'التشفير الحالي',
  `comm` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `money_out`
--

CREATE TABLE `money_out` (
  `id_out` int(11) UNSIGNED NOT NULL,
  `date_out` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank` int(11) NOT NULL,
  `approval` varchar(191) NOT NULL,
  `not_approved` varchar(191) DEFAULT NULL COMMENT 'رسالة خطا عدم الاكتمال',
  `last_hash` varchar(191) DEFAULT NULL COMMENT 'التشفير السابق',
  `hash` varchar(191) DEFAULT NULL COMMENT 'التشفير الحالي',
  `comm` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nations`
--

CREATE TABLE `nations` (
  `nation_id` tinyint(5) UNSIGNED NOT NULL,
  `nation_name` varchar(75) NOT NULL,
  `desc` varchar(191) DEFAULT NULL,
  `dgree` tinyint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nations`
--

INSERT INTO `nations` (`nation_id`, `nation_name`, `desc`, `dgree`) VALUES
(1, 'أثيوبي', NULL, NULL),
(2, 'أرجنتيني', NULL, NULL),
(3, 'أردني', NULL, NULL),
(4, 'أرميني', NULL, NULL),
(5, 'أروجوايي', NULL, NULL),
(6, 'أسباني', NULL, NULL),
(7, 'أسترالي', NULL, NULL),
(8, 'أستوني', NULL, NULL),
(9, 'أفريقيا الوسطى', NULL, NULL),
(10, 'أفغانستاني', NULL, NULL),
(11, 'إكوادوري', NULL, NULL),
(12, 'ألباني', NULL, NULL),
(13, 'ألماني', NULL, NULL),
(14, 'إماراتي', NULL, NULL),
(15, 'أمريكي', NULL, NULL),
(16, 'أندونيسي', NULL, NULL),
(17, 'أنقولي', NULL, NULL),
(18, 'أوزبكستاني', NULL, NULL),
(19, 'أوغندي', NULL, NULL),
(20, 'أوكراني', NULL, NULL),
(21, 'إيراني', NULL, NULL),
(22, 'إيرلندي', NULL, NULL),
(23, 'اتحاد ماينمار', NULL, NULL),
(24, 'اذربيجاني', NULL, NULL),
(25, 'اريتيري', NULL, NULL),
(26, 'الصين الشعبية', NULL, NULL),
(27, 'الصين الوطنية', NULL, NULL),
(28, 'المجر', NULL, NULL),
(29, 'انتاركتيكا', NULL, NULL),
(30, 'انجويلا', NULL, NULL),
(31, 'اندورا', NULL, NULL),
(32, 'ايسلندي', NULL, NULL),
(33, 'ايطالي', NULL, NULL),
(34, 'باربودا', NULL, NULL),
(35, 'باريادوسي', NULL, NULL),
(36, 'باكستاني', NULL, NULL),
(37, 'بحريني', NULL, NULL),
(38, 'برازيلي', NULL, NULL),
(39, 'براغويي', NULL, NULL),
(40, 'برتغالي', NULL, NULL),
(41, 'برناوي', NULL, NULL),
(42, 'برونايي', NULL, NULL),
(43, 'بريطاني', NULL, NULL),
(44, 'بلجيكي', NULL, NULL),
(45, 'بلغاري', NULL, NULL),
(46, 'بليزي', NULL, NULL),
(47, 'بنجلادشي', NULL, NULL),
(48, 'بنمي', NULL, NULL),
(49, 'بنيني', NULL, NULL),
(50, 'بهوتاني', NULL, NULL),
(51, 'بوتسواني', NULL, NULL),
(52, 'بوثاني', NULL, NULL),
(53, 'بورتوريكوي', NULL, NULL),
(54, 'بوركينا فاسو', NULL, NULL),
(55, 'بوركينافاسو', NULL, NULL),
(56, 'بورندي', NULL, NULL),
(57, 'بوسني', NULL, NULL),
(58, 'بوفثاتسواني', NULL, NULL),
(59, 'بولندي', NULL, NULL),
(60, 'بوليفي', NULL, NULL),
(61, 'بولينيسيا الفرنسية', NULL, NULL),
(62, 'بيرمودا', NULL, NULL),
(63, 'بيروي', NULL, NULL),
(64, 'بيلو', NULL, NULL),
(65, 'تايلاندي', NULL, NULL),
(66, 'تايوان', NULL, NULL),
(67, 'تركستاني', NULL, NULL),
(68, 'تركمانستاني', NULL, NULL),
(69, 'تركى', NULL, NULL),
(70, 'ترينيداد وتوباجوي', NULL, NULL),
(71, 'تشادي', NULL, NULL),
(72, 'تشيكي', NULL, NULL),
(73, 'تشيلي', NULL, NULL),
(74, 'تنزاني', NULL, NULL),
(75, 'توجوي', NULL, NULL),
(76, 'توفالو', NULL, NULL),
(77, 'توكيلاو', NULL, NULL),
(78, 'تونجي', NULL, NULL),
(79, 'تونسي', NULL, NULL),
(80, 'تيمور الشرقية', NULL, NULL),
(81, 'جابوني', NULL, NULL),
(82, 'جامايكي', NULL, NULL),
(83, 'جامبي', NULL, NULL),
(84, 'جبل طارق', NULL, NULL),
(85, 'جريناداي', NULL, NULL),
(86, 'جرينلاند', NULL, NULL),
(87, 'جزائري', NULL, NULL),
(88, 'جزر البهما', NULL, NULL),
(89, 'جزر الترك و القوقاز', NULL, NULL),
(90, 'جزر الرأس الأخضر', NULL, NULL),
(91, 'جزر السولومون', NULL, NULL),
(92, 'جزر القمر', NULL, NULL),
(93, 'جزر الكناري', NULL, NULL),
(94, 'جزر الملاديف', NULL, NULL),
(95, 'جزر سيشل', NULL, NULL),
(96, 'جزر فاكلاند', NULL, NULL),
(97, 'جزر فيجي', NULL, NULL),
(98, 'جزر فيرجن الامريكية', NULL, NULL),
(99, 'جزر فيرجن البريطانية', NULL, NULL),
(100, 'جزر فيرو', NULL, NULL),
(101, 'جزر كايمون', NULL, NULL),
(102, 'جزر كوك', NULL, NULL),
(103, 'جزر ماريانا', NULL, NULL),
(104, 'جزر ماريشال', NULL, NULL),
(105, 'جزر نورفولك', NULL, NULL),
(106, 'جزر والس وفوتونا', NULL, NULL),
(107, 'جزيرة كريسماس', NULL, NULL),
(108, 'جزيرة مايوت', NULL, NULL),
(109, 'جمهورية دمينكان', NULL, NULL),
(110, 'جنوب أفريقي', NULL, NULL),
(111, 'جواتيمالي', NULL, NULL),
(112, 'جوام', NULL, NULL),
(113, 'جوانا', NULL, NULL),
(114, 'جورجي', NULL, NULL),
(115, 'جياني', NULL, NULL),
(116, 'جيبوتي', NULL, NULL),
(117, 'جيودي لوب', NULL, NULL),
(118, 'دانماركي', NULL, NULL),
(119, 'دومونيكاتي', NULL, NULL),
(120, 'رواندي', NULL, NULL),
(121, 'روسي', NULL, NULL),
(122, 'روسيا البيضاء', NULL, NULL),
(123, 'روماني', NULL, NULL),
(124, 'رينيون', NULL, NULL),
(125, 'زائيري', NULL, NULL),
(126, 'زامبي', NULL, NULL),
(127, 'زمبابوي', NULL, NULL),
(128, 'س بييري و ميكويلن', NULL, NULL),
(129, 'ساحل العاج', NULL, NULL),
(130, 'ساموا الامريكية', NULL, NULL),
(131, 'سان فينسنت', NULL, NULL),
(132, 'سان مورينو', NULL, NULL),
(133, 'سانت لوسيا', NULL, NULL),
(134, 'سانت هيلانة', NULL, NULL),
(135, 'ساوتومي وبرنسيبي', NULL, NULL),
(136, 'سلفادوري', NULL, NULL),
(137, 'سلوفاكي', NULL, NULL),
(138, 'سلوفيني', NULL, NULL),
(139, 'سنغافوري', NULL, NULL),
(140, 'سنغالي', NULL, NULL),
(141, 'سوداني', NULL, NULL),
(142, 'سوري', NULL, NULL),
(143, 'سورينامي', NULL, NULL),
(144, 'سوزاي لاند', NULL, NULL),
(145, 'سويدي', NULL, NULL),
(146, 'سويسري', NULL, NULL),
(147, 'سيراليوني', NULL, NULL),
(148, 'سيريلانكي', NULL, NULL),
(149, 'سيشلي', NULL, NULL),
(150, 'صربيا و الجبل الأسود', NULL, NULL),
(151, 'صومالي', NULL, NULL),
(152, 'طاجاكستاني', NULL, NULL),
(153, 'عراقي', NULL, NULL),
(154, 'عروبا', NULL, NULL),
(155, 'عماني', NULL, NULL),
(156, 'غاني', NULL, NULL),
(157, 'غرب ساموا', NULL, NULL),
(158, 'غير متوفر', NULL, NULL),
(159, 'غيني', NULL, NULL),
(160, 'غينيا الإستوائية', NULL, NULL),
(161, 'غينيا الجديدة', NULL, NULL),
(162, 'غينيا بيساو', NULL, NULL),
(163, 'فاتيكاني', NULL, NULL),
(164, 'فانيوتو', NULL, NULL),
(165, 'فرنسي', NULL, NULL),
(166, 'فلبيني', NULL, NULL),
(167, 'فلسطيني', NULL, NULL),
(168, 'فلسطيني بوثيقة اردنية', NULL, NULL),
(169, 'فلسطيني بوثيقة سوربة', NULL, NULL),
(170, 'فلسطيني بوثيقة عراقية', NULL, NULL),
(171, 'فلسطيني بوثيقة لبناني', NULL, NULL),
(172, 'فلسطيني بوثيقة مصرية', NULL, NULL),
(173, 'فنزويلي', NULL, NULL),
(174, 'فنلندي', NULL, NULL),
(175, 'فياتنامي', NULL, NULL),
(176, 'قازاخستاني', NULL, NULL),
(177, 'قبرصي', NULL, NULL),
(178, 'قرعيزي', NULL, NULL),
(179, 'قطرى', NULL, NULL),
(180, 'كازاخستان', NULL, NULL),
(181, 'كاليدونيا الجديد', NULL, NULL),
(182, 'كاميروني', NULL, NULL),
(183, 'كرواتي', NULL, NULL),
(184, 'كمبودي', NULL, NULL),
(185, 'كندي', NULL, NULL),
(186, 'كوبي', NULL, NULL),
(187, 'كوري جنوبي', NULL, NULL),
(188, 'كوري شمالي', NULL, NULL),
(189, 'كوستاريكي', NULL, NULL),
(190, 'كوسوفوا', NULL, NULL),
(191, 'كولومبي', NULL, NULL),
(192, 'كونغوي', NULL, NULL),
(193, 'كويتي', NULL, NULL),
(194, 'كيريباتي', NULL, NULL),
(195, 'كيني', NULL, NULL),
(196, 'لاتفي', NULL, NULL),
(197, 'لاوسي', NULL, NULL),
(198, 'لبناني', NULL, NULL),
(199, 'لكسمبورجي', NULL, NULL),
(200, 'لوسوتوي', NULL, NULL),
(201, 'ليبي', NULL, NULL),
(202, 'ليبيري', NULL, NULL),
(203, 'ليتواني', NULL, NULL),
(204, 'ليختنشتين', NULL, NULL),
(205, 'مارتينيكو', NULL, NULL),
(206, 'ماكاوي', NULL, NULL),
(207, 'مالاوي', NULL, NULL),
(208, 'مالطي', NULL, NULL),
(209, 'مالي', NULL, NULL),
(210, 'ماليزي', NULL, NULL),
(211, 'مدغشقري', NULL, NULL),
(212, 'مصرى', NULL, NULL),
(213, 'مغربي', NULL, NULL),
(214, 'مقدوني', NULL, NULL),
(215, 'مقيم', NULL, NULL),
(216, 'مقيم بلوشي', NULL, NULL),
(217, 'مكسيكي', NULL, NULL),
(218, 'منغولي', NULL, NULL),
(219, 'موريتاني', NULL, NULL),
(220, 'موريشيوسي', NULL, NULL),
(221, 'موزمبيقي', NULL, NULL),
(222, 'مولدافي', NULL, NULL),
(223, 'موناكو', NULL, NULL),
(224, 'مونت سيرات', NULL, NULL),
(225, 'ميكرونيسيا', NULL, NULL),
(226, 'ناميبي', NULL, NULL),
(227, 'نرويجي', NULL, NULL),
(228, 'نمساوي', NULL, NULL),
(229, 'نورو', NULL, NULL),
(230, 'نيبالي', NULL, NULL),
(231, 'نيجري', NULL, NULL),
(232, 'نيجيري', NULL, NULL),
(233, 'نيكاراجوي', NULL, NULL),
(234, 'نيو', NULL, NULL),
(235, 'نيوزلندي', NULL, NULL),
(236, 'هايتي', NULL, NULL),
(237, 'هندوراسي', NULL, NULL),
(238, 'هندي', NULL, NULL),
(239, 'هنغاري', NULL, NULL),
(240, 'هولندي', NULL, NULL),
(241, 'هونج كونج', NULL, NULL),
(242, 'ياباني', NULL, NULL),
(243, 'يمني', NULL, NULL),
(244, 'يوغسلافيا', NULL, NULL),
(245, 'يوناني', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transfers`
--

INSERT INTO `transfers` (`id`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '2018-08-03 01:20:32', '2018-08-03 01:20:32');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Index pour la table `hajj_info`
--
ALTER TABLE `hajj_info`
  ADD PRIMARY KEY (`h_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `money_in`
--
ALTER TABLE `money_in`
  ADD PRIMARY KEY (`in_id`);

--
-- Index pour la table `money_out`
--
ALTER TABLE `money_out`
  ADD PRIMARY KEY (`id_out`);

--
-- Index pour la table `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`nation_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hajj_info`
--
ALTER TABLE `hajj_info`
  MODIFY `h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `money_in`
--
ALTER TABLE `money_in`
  MODIFY `in_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nations`
--
ALTER TABLE `nations`
  MODIFY `nation_id` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT pour la table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
