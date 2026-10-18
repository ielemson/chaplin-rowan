-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2026 at 02:08 AM
-- Server version: 11.4.13-MariaDB-cll-lve-log
-- PHP Version: 8.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxihkvk_chaplinrowan`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id_country` int(11) NOT NULL,
  `country_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ISO2` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ISO3` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Top Level Domain` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FIPS` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ISO Numeric` int(11) DEFAULT NULL,
  `GeoNameID` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `E164` int(11) DEFAULT NULL,
  `phone_code` varchar(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Continent` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Capital` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Time Zone in Capital` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Currency` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Language Codes` varchar(89) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Languages` varchar(489) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Area KM2` int(11) DEFAULT NULL,
  `Internet Hosts` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Internet Users` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Phones (Mobile)` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Phones (Landline)` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GDP` varchar(14) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id_country`, `country_name`, `ISO2`, `ISO3`, `Top Level Domain`, `FIPS`, `ISO Numeric`, `GeoNameID`, `E164`, `phone_code`, `Continent`, `Capital`, `Time Zone in Capital`, `Currency`, `Language Codes`, `Languages`, `Area KM2`, `Internet Hosts`, `Internet Users`, `Phones (Mobile)`, `Phones (Landline)`, `GDP`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 'af', 'AF', 4, '1149361', 93, '93', 'Asia', 'Kabul', 'Asia/Kabul', 'Afghani', 'fa-AF,ps,uz-AF,tk', 'Afghan Persian or Dari (official) 50%, Pashto (official) 35%, Turkic languages (primarily Uzbek and Turkmen) 11%, 30 minor languages (primarily Balochi and Pashai) 4%, much bilingualism, but Dari functions as the lingua franca', 647500, '223', '1000000', '18000000', '13500', '20650000000'),
(2, 'Albania', 'AL', 'ALB', 'al', 'AL', 8, '783754', 355, '355', 'Europe', 'Tirana', 'Europe/Tirane', 'Lek', 'sq,el', 'Albanian 98.8% (official - derived from Tosk dialect), Greek 0.5%, other 0.6% (including Macedonian, Roma, Vlach, Turkish, Italian, and Serbo-Croatian), unspecified 0.1% (2011 est.)', 28748, '15528', '1300000', '3500000', '312000', '12800000000'),
(3, 'Algeria', 'DZ', 'DZA', 'dz', 'AG', 12, '2589581', 213, '213', 'Africa', 'Algiers', 'Africa/Algiers', 'Dinar', 'ar-DZ', 'Arabic (official), French (lingua franca), Berber dialects: Kabylie Berber (Tamazight), Chaouia Berber (Tachawit), Mzab Berber, Tuareg Berber (Tamahaq)', 2381740, '676', '4700000', '37692000', '3200000', '215700000000'),
(4, 'American Samoa', 'AS', 'ASM', 'as', 'AQ', 16, '5880801', 1, '1-684', 'Oceania', 'Pago Pago', 'Pacific/Pago_Pago', 'Dollar', 'en-AS,sm,to', 'Samoan 90.6% (closely related to Hawaiian and other Polynesian languages), English 2.9%, Tongan 2.4%, other Pacific islander 2.1%, other 2%', 199, '2387', '', '', '10000', '462200000'),
(5, 'Andorra', 'AD', 'AND', 'ad', 'AN', 20, '3041565', 376, '376', 'Europe', 'Andorra la Vella', 'Europe/Andorra', 'Euro', 'ca', 'Catalan (official), French, Castilian, Portuguese', 468, '28383', '67100', '65000', '39000', '4800000000'),
(6, 'Angola', 'AO', 'AGO', 'ao', 'AO', 24, '3351879', 244, '244', 'Africa', 'Luanda', 'Africa/Luanda', 'Kwanza', 'pt-AO', 'Portuguese (official), Bantu and other African languages', 1246700, '20703', '606700', '9800000', '303000', '124000000000'),
(7, 'Anguilla', 'AI', 'AIA', 'ai', 'AV', 660, '3573511', 1, '1-264', 'North America', 'The Valley', 'America/Anguilla', 'Dollar', 'en-AI', 'English (official)', 102, '269', '3700', '26000', '6000', '175400000'),
(8, 'Antarctica', 'AQ', 'ATA', 'aq', 'AY', 10, '6697173', 672, '672', 'Antarctica', '', 'Antarctica/Troll', '', '', '', 14000000, '7764', '', '', '', ''),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 'ag', 'AC', 28, '3576396', 1, '1-268', 'North America', 'St. John\'s', 'America/Antigua', 'Dollar', 'en-AG', 'English (official), local dialects', 443, '11532', '65000', '179800', '35000', '1220000000'),
(10, 'Argentina', 'AR', 'ARG', 'ar', 'AR', 32, '3865483', 54, '54', 'South America', 'Buenos Aires', 'America/Argentina/Buenos_Aires', 'Peso', 'es-AR,en,it,de,fr,gn', 'Spanish (official), Italian, English, German, French, indigenous (Mapudungun, Quechua)', 2766890, '11232000', '13694000', '58600000', '1', '484600000000'),
(11, 'Armenia', 'AM', 'ARM', 'am', 'AM', 51, '174982', 374, '374', 'Asia', 'Yerevan', 'Asia/Yerevan', 'Dram', 'hy', 'Armenian (official) 97.9%, Kurdish (spoken by Yezidi minority) 1%, other 1% (2011 est.)', 29800, '194142', '208200', '3223000', '584000', '10440000000'),
(12, 'Aruba', 'AW', 'ABW', 'aw', 'AA', 533, '3577279', 297, '297', 'North America', 'Oranjestad', 'America/Aruba', 'Guilder', 'nl-AW,es,en', 'Papiamento (a Spanish-Portuguese-Dutch-English dialect) 69.4%, Spanish 13.7%, English (widely spoken) 7.1%, Dutch (official) 6.1%, Chinese 1.5%, other 1.7%, unspecified 0.4% (2010 est.)', 193, '40560', '24000', '135000', '43000', '2516000000'),
(13, 'Australia', 'AU', 'AUS', 'au', 'AS', 36, '2077456', 61, '61', 'Oceania', 'Canberra', 'Australia/Sydney', 'Dollar', 'en-AU', 'English 76.8%, Mandarin 1.6%, Italian 1.4%, Arabic 1.3%, Greek 1.2%, Cantonese 1.2%, Vietnamese 1.1%, other 10.4%, unspecified 5% (2011 est.)', 7686850, '17081000', '15810000', '24400000', '10470000', '1488000000000'),
(14, 'Austria', 'AT', 'AUT', 'at', 'AU', 40, '2782113', 43, '43', 'Europe', 'Vienna', 'Europe/Vienna', 'Euro', 'de-AT,hr,hu,sl', 'German (official nationwide) 88.6%, Turkish 2.3%, Serbian 2.2%, Croatian (official in Burgenland) 1.6%, other (includes Slovene, official in Carinthia, and Hungarian, official in Burgenland) 5.3% (2001 census)', 83858, '3512000', '6143000', '13590000', '3342000', '417900000000'),
(15, 'Azerbaijan', 'AZ', 'AZE', 'az', 'AJ', 31, '587116', 994, '994', 'Asia', 'Baku', 'Asia/Baku', 'Manat', 'az,ru,hy', 'Azerbaijani (Azeri) (official) 92.5%, Russian 1.4%, Armenian 1.4%, other 4.7% (2009 est.)', 86600, '46856', '2420000', '10125000', '1734000', '76010000000'),
(16, 'Bahamas', 'BS', 'BHS', 'bs', 'BF', 44, '3572887', 1, '1-242', 'North America', 'Nassau', 'America/Nassau', 'Dollar', 'en-BS', 'English (official), Creole (among Haitian immigrants)', 13940, '20661', '115800', '254000', '137000', '8373000000'),
(17, 'Bahrain', 'BH', 'BHR', 'bh', 'BA', 48, '290291', 973, '973', 'Asia', 'Manama', 'Asia/Bahrain', 'Dinar', 'ar-BH,en,fa,ur', 'Arabic (official), English, Farsi, Urdu', 665, '47727', '419500', '2125000', '290000', '28360000000'),
(18, 'Bangladesh', 'BD', 'BGD', 'bd', 'BG', 50, '1210997', 880, '880', 'Asia', 'Dhaka', 'Asia/Dhaka', 'Taka', 'bn-BD,en', 'Bangla (official, also known as Bengali), English', 144000, '71164', '617300', '97180000', '962000', '140200000000'),
(19, 'Barbados', 'BB', 'BRB', 'bb', 'BB', 52, '3374084', 1, '1-246', 'North America', 'Bridgetown', 'America/Barbados', 'Dollar', 'en-BB', 'English (official), Bajan (English-based creole language, widely spoken in informal settings)', 431, '1524', '188000', '347000', '144000', '4262000000'),
(20, 'Belarus', 'BY', 'BLR', 'by', 'BO', 112, '630336', 375, '375', 'Europe', 'Minsk', 'Europe/Minsk', 'Ruble', 'be,ru', 'Belarusian (official) 23.4%, Russian (official) 70.2%, other 3.1% (includes small Polish- and Ukrainian-speaking minorities), unspecified 3.3% (2009 est.)', 207600, '295217', '2643000', '10675000', '4407000', '69240000000'),
(21, 'Belgium', 'BE', 'BEL', 'be', 'BE', 56, '2802361', 32, '32', 'Europe', 'Brussels', 'Europe/Brussels', 'Euro', 'nl-BE,fr-BE,de-BE', 'Dutch (official) 60%, French (official) 40%, German (official) less than 1%, legally bilingual (Dutch and French)', 30510, '5192000', '8113000', '12880000', '4631000', '507400000000'),
(22, 'Belize', 'BZ', 'BLZ', 'bz', 'BH', 84, '3582678', 501, '501', 'North America', 'Belmopan', 'America/Belize', 'Dollar', 'en-BZ,es', 'Spanish 46%, Creole 32.9%, Mayan dialects 8.9%, English 3.9% (official), Garifuna 3.4% (Carib), German 3.3%, other 1.4%, unknown 0.2% (2000 census)', 22966, '3392', '36000', '164200', '25400', '1637000000'),
(23, 'Benin', 'BJ', 'BEN', 'bj', 'BN', 204, '2395170', 229, '229', 'Africa', 'Porto-Novo', 'Africa/Porto-Novo', 'Franc', 'fr-BJ', 'French (official), Fon and Yoruba (most common vernaculars in south), tribal languages (at least six major ones in north)', 112620, '491', '200100', '8408000', '156700', '8359000000'),
(24, 'Bermuda', 'BM', 'BMU', 'bm', 'BD', 60, '3573345', 1, '1-441', 'North America', 'Hamilton', 'Atlantic/Bermuda', 'Dollar', 'en-BM,pt', 'English (official), Portuguese', 53, '20040', '54000', '91000', '69000', '5600000000'),
(25, 'Bhutan', 'BT', 'BTN', 'bt', 'BT', 64, '1252634', 975, '975', 'Asia', 'Thimphu', 'Asia/Thimphu', 'Ngultrum', 'dz', 'Sharchhopka 28%, Dzongkha (official) 24%, Lhotshamkha 22%, other 26% (includes foreign languages) (2005 est.)', 47000, '14590', '50000', '560000', '27000', '2133000000'),
(26, 'Bolivia', 'BO', 'BOL', 'bo', 'BL', 68, '3923057', 591, '591', 'South America', 'Sucre', 'America/La_Paz', 'Boliviano', 'es-BO,qu,ay', 'Spanish (official) 60.7%, Quechua (official) 21.2%, Aymara (official) 14.6%, Guarani (official), foreign languages 2.4%, other 1.2%', 1098580, '180988', '1103000', '9494000', '880600', '30790000000'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 'ba', 'BK', 70, '3277605', 387, '387', 'Europe', 'Sarajevo', 'Europe/Sarajevo', 'Marka', 'bs,hr-BA,sr-BA', 'Bosnian (official), Croatian (official), Serbian (official)', 51129, '155252', '1422000', '3350000', '878000', '18870000000'),
(28, 'Botswana', 'BW', 'BWA', 'bw', 'BC', 72, '933860', 267, '267', 'Africa', 'Gaborone', 'Africa/Gaborone', 'Pula', 'en-BW,tn-BW', 'Setswana 78.2%, Kalanga 7.9%, Sekgalagadi 2.8%, English (official) 2.1%, other 8.6%, unspecified 0.4% (2001 census)', 600370, '1806', '120000', '3082000', '160500', '15530000000'),
(29, 'Brazil', 'BR', 'BRA', 'br', 'BR', 76, '3469034', 55, '55', 'South America', 'Brasilia', 'America/Sao_Paulo', 'Real', 'pt-BR,es,en,fr', 'Portuguese (official and most widely spoken language)', 8511965, '26577000', '75982000', '248324000', '44300000', '2190000000000'),
(30, 'British Indian Ocean Territory', 'IO', 'IOT', 'io', 'IO', 86, '1282588', 246, '246', 'Asia', 'Diego Garcia', 'Indian/Chagos', 'Dollar', 'en-IO', 'English', 60, '75006', '', '', '', ''),
(31, 'British Virgin Islands', 'VG', 'VGB', 'vg', 'VI', 92, '3577718', 1, '1-284', 'North America', 'Road Town', 'America/Tortola', 'Dollar', 'en-VG', 'English (official)', 153, '505', '4000', '48700', '12268', '1095000000'),
(32, 'Brunei', 'BN', 'BRN', 'bn', 'BX', 96, '1820814', 673, '673', 'Asia', 'Bandar Seri Begawan', 'Asia/Brunei', 'Dollar', 'ms-BN,en-BN', 'Malay (official), English, Chinese', 5770, '49457', '314900', '469700', '70933', '16560000000'),
(33, 'Bulgaria', 'BG', 'BGR', 'bg', 'BU', 100, '732800', 359, '359', 'Europe', 'Sofia', 'Europe/Sofia', 'Lev', 'bg,tr-BG', 'Bulgarian (official) 76.8%, Turkish 8.2%, Roma 3.8%, other 0.7%, unspecified 10.5% (2011 est.)', 110910, '976277', '3395000', '10780000', '2253000', '53700000000'),
(34, 'Burkina Faso', 'BF', 'BFA', 'bf', 'UV', 854, '2361809', 226, '226', 'Africa', 'Ouagadougou', 'Africa/Ouagadougou', 'Franc', 'fr-BF', 'French (official), native African languages belonging to Sudanic family spoken by 90% of the population', 274200, '1795', '178100', '9980000', '141400', '12130000000'),
(35, 'Burundi', 'BI', 'BDI', 'bi', 'BY', 108, '433561', 257, '257', 'Africa', 'Bujumbura', 'Africa/Bujumbura', 'Franc', 'fr-BI,rn', 'Kirundi 29.7% (official), Kirundi and other language 9.1%, French (official) and French and other language 0.3%, Swahili and Swahili and other language 0.2% (along Lake Tanganyika and in the Bujumbura area), English and English and other language 0.06%, more than 2 languages 3.7%, unspecified 56.9% (2008 est.)', 27830, '229', '157800', '2247000', '17400', '2676000000'),
(36, 'Cambodia', 'KH', 'KHM', 'kh', 'CB', 116, '1831722', 855, '855', 'Asia', 'Phnom Penh', 'Asia/Phnom_Penh', 'Riels', 'km,fr,en', 'Khmer (official) 96.3%, other 3.7% (2008 est.)', 181040, '13784', '78500', '19100000', '584000', '15640000000'),
(37, 'Cameroon', 'CM', 'CMR', 'cm', 'CM', 120, '2233387', 237, '237', 'Africa', 'Yaounde', 'Africa/Douala', 'Franc', 'en-CM,fr-CM', '24 major African language groups, English (official), French (official)', 475440, '10207', '749600', '13100000', '737400', '27880000000'),
(38, 'Canada', 'CA', 'CAN', 'ca', 'CA', 124, '6251999', 1, '1', 'North America', 'Ottawa', 'America/Toronto', 'Dollar', 'en-CA,fr-CA,iu', 'English (official) 58.7%, French (official) 22%, Punjabi 1.4%, Italian 1.3%, Spanish 1.3%, German 1.3%, Cantonese 1.2%, Tagalog 1.2%, Arabic 1.1%, other 10.5% (2011 est.)', 9984670, '8743000', '26960000', '26263000', '18010000', '1825000000000'),
(39, 'Cape Verde', 'CV', 'CPV', 'cv', 'CV', 132, '3374766', 238, '238', 'Africa', 'Praia', 'Atlantic/Cape_Verde', 'Escudo', 'pt-CV', 'Portuguese (official), Crioulo (a blend of Portuguese and West African words)', 4033, '38', '150000', '425300', '70200', '1955000000'),
(40, 'Cayman Islands', 'KY', 'CYM', 'ky', 'CJ', 136, '3580718', 1, '1-345', 'North America', 'George Town', 'America/Cayman', 'Dollar', 'en-KY', 'English (official) 90.9%, Spanish 4%, Filipino 3.3%, other 1.7%, unspecified 0.1% (2010 est.)', 262, '23472', '23000', '96300', '37400', '2250000000'),
(41, 'Central African Republic', 'CF', 'CAF', 'cf', 'CT', 140, '239880', 236, '236', 'Africa', 'Bangui', 'Africa/Bangui', 'Franc', 'fr-CF,sg,ln,kg', 'French (official), Sangho (lingua franca and national language), tribal languages', 622984, '20', '22600', '1070000', '5600', '2050000000'),
(42, 'Chad', 'TD', 'TCD', 'td', 'CD', 148, '2434508', 235, '235', 'Africa', 'N\'Djamena', 'Africa/Ndjamena', 'Franc', 'fr-TD,ar-TD,sre', 'French (official), Arabic (official), Sara (in south), more than 120 different languages and dialects', 1284000, '6', '168100', '4200000', '29900', '13590000000'),
(43, 'Chile', 'CL', 'CHL', 'cl', 'CI', 152, '3895114', 56, '56', 'South America', 'Santiago', 'America/Santiago', 'Peso', 'es-CL', 'Spanish 99.5% (official), English 10.2%, indigenous 1% (includes Mapudungun, Aymara, Quechua, Rapa Nui), other 2.3%, unspecified 0.2%', 756950, '2152000', '7009000', '24130000', '3276000', '281700000000'),
(44, 'China', 'CN', 'CHN', 'cn', 'CH', 156, '1814991', 86, '86', 'Asia', 'Beijing', 'Asia/Shanghai', 'Yuan Renminbi', 'zh-CN,yue,wuu,dta,ug,za', 'Standard Chinese or Mandarin (official; Putonghua, based on the Beijing dialect), Yue (Cantonese), Wu (Shanghainese), Minbei (Fuzhou), Minnan (Hokkien-Taiwanese), Xiang, Gan, Hakka dialects, minority languages', 9596960, '20602000', '389000000', '1100000000', '278860000', '9330000000000'),
(45, 'Christmas Island', 'CX', 'CXR', 'cx', 'KT', 162, '2078138', 61, '61', 'Asia', 'Flying Fish Cove', 'Indian/Christmas', 'Dollar', 'en,zh,ms-CC', 'English (official), Chinese, Malay', 135, '3028', '464', '', '', ''),
(46, 'Cocos Islands', 'CC', 'CCK', 'cc', 'CK', 166, '1547376', 61, '61', 'Asia', 'West Island', 'Indian/Cocos', 'Dollar', 'ms-CC,en', 'Malay (Cocos dialect), English', 14, '', '', '', '', ''),
(47, 'Colombia', 'CO', 'COL', 'co', 'CO', 170, '3686110', 57, '57', 'South America', 'Bogota', 'America/Bogota', 'Peso', 'es-CO', 'Spanish (official)', 1138910, '4410000', '22538000', '49066000', '6291000', '369200000000'),
(48, 'Comoros', 'KM', 'COM', 'km', 'CN', 174, '921929', 269, '269', 'Africa', 'Moroni', 'Indian/Comoro', 'Franc', 'ar,fr-KM', 'Arabic (official), French (official), Shikomoro (a blend of Swahili and Arabic)', 2170, '14', '24300', '250000', '24000', '658000000'),
(49, 'Cook Islands', 'CK', 'COK', 'ck', 'CW', 184, '1899402', 682, '682', 'Oceania', 'Avarua', 'Pacific/Rarotonga', 'Dollar', 'en-CK,mi', 'English (official) 86.4%, Cook Islands Maori (Rarotongan) (official) 76.2%, other 8.3%', 240, '3562', '6000', '7800', '7200', '183200000'),
(50, 'Costa Rica', 'CR', 'CRI', 'cr', 'CS', 188, '3624060', 506, '506', 'North America', 'San Jose', 'America/Costa_Rica', 'Colon', 'es-CR,en', 'Spanish (official), English', 51100, '147258', '1485000', '6151000', '1018000', '48510000000'),
(51, 'Croatia', 'HR', 'HRV', 'hr', 'HR', 191, '3202326', 385, '385', 'Europe', 'Zagreb', 'Europe/Zagreb', 'Kuna', 'hr-HR,sr', 'Croatian (official) 95.6%, Serbian 1.2%, other 3% (including Hungarian, Czech, Slovak, and Albanian), unspecified 0.2% (2011 est.)', 56542, '729420', '2234000', '4970000', '1640000', '59140000000'),
(52, 'Cuba', 'CU', 'CUB', 'cu', 'CU', 192, '3562981', 53, '53', 'North America', 'Havana', 'America/Havana', 'Peso', 'es-CU', 'Spanish (official)', 110860, '3244', '1606000', '1682000', '1217000', '72300000000'),
(53, 'Curacao', 'CW', 'CUW', 'cw', 'UC', 531, '7626836', 599, '599', 'North America', 'Willemstad', 'America/Curacao', 'Guilder', 'nl,pap', 'Papiamentu (a Spanish-Portuguese-Dutch-English dialect) 81.2%, Dutch (official) 8%, Spanish 4%, English 2.9%, other 3.9% (2001 census)', 444, '', '', '', '', '5600000000'),
(54, 'Cyprus', 'CY', 'CYP', 'cy', 'CY', 196, '146669', 357, '357', 'Europe', 'Nicosia', 'Asia/Nicosia', 'Euro', 'el-CY,tr-CY,en', 'Greek (official) 80.9%, Turkish (official) 0.2%, English 4.1%, Romanian 2.9%, Russian 2.5%, Bulgarian 2.2%, Arabic 1.2%, Filippino 1.1%, other 4.3%, unspecified 0.6% (2011 est.)', 9250, '252013', '433900', '1110000', '373200', '21780000000'),
(55, 'Czech Republic', 'CZ', 'CZE', 'cz', 'EZ', 203, '3077311', 420, '420', 'Europe', 'Prague', 'Europe/Prague', 'Koruna', 'cs,sk', 'Czech 95.4%, Slovak 1.6%, other 3% (2011 census)', 78866, '4148000', '6681000', '12973000', '2100000', '194800000000'),
(56, 'Democratic Republic of the Congo', 'CD', 'COD', 'cd', 'CG', 180, '203312', 243, '243', 'Africa', 'Kinshasa', 'Africa/Kinshasa', 'Franc', 'fr-CD,ln,kg', 'French (official), Lingala (a lingua franca trade language), Kingwana (a dialect of Kiswahili or Swahili), Kikongo, Tshiluba', 2345410, '2515', '290000', '19487000', '58200', '18560000000'),
(57, 'Denmark', 'DK', 'DNK', 'dk', 'DA', 208, '2623032', 45, '45', 'Europe', 'Copenhagen', 'Europe/Copenhagen', 'Krone', 'da-DK,en,fo,de-DK', 'Danish, Faroese, Greenlandic (an Inuit dialect), German (small minority)', 43094, '4297000', '4750000', '6600000', '2431000', '324300000000'),
(58, 'Djibouti', 'DJ', 'DJI', 'dj', 'DJ', 262, '223816', 253, '253', 'Africa', 'Djibouti', 'Africa/Djibouti', 'Franc', 'fr-DJ,ar,so-DJ,aa', 'French (official), Arabic (official), Somali, Afar', 23000, '215', '25900', '209000', '18000', '1459000000'),
(59, 'Dominica', 'DM', 'DMA', 'dm', 'DO', 212, '3575830', 1, '1-767', 'North America', 'Roseau', 'America/Dominica', 'Dollar', 'en-DM', 'English (official), French patois', 754, '723', '28000', '109300', '14600', '495000000'),
(60, 'Dominican Republic', 'DO', 'DOM', 'do', 'DR', 214, '3508796', 1, '1-809, 1-829, 1-849', 'North America', 'Santo Domingo', 'America/Santo_Domingo', 'Peso', 'es-DO', 'Spanish (official)', 48730, '404500', '2701000', '9038000', '1065000', '59270000000'),
(61, 'East Timor', 'TL', 'TLS', 'tl', 'TT', 626, '1966436', 670, '670', 'Oceania', 'Dili', 'Asia/Dili', 'Dollar', 'tet,pt-TL,id,en', 'Tetum (official), Portuguese (official), Indonesian, English', 15007, '252', '2100', '621000', '3000', '6129000000'),
(62, 'Ecuador', 'EC', 'ECU', 'ec', 'EC', 218, '3658394', 593, '593', 'South America', 'Quito', 'America/Guayaquil', 'Dollar', 'es-EC', 'Spanish (Castillian) 93% (official), Quechua 4.1%, other indigenous 0.7%, foreign 2.2%', 283560, '170538', '3352000', '16457000', '2310000', '91410000000'),
(63, 'Egypt', 'EG', 'EGY', 'eg', 'EG', 818, '357994', 20, '20', 'Africa', 'Cairo', 'Africa/Cairo', 'Pound', 'ar-EG,en,fr', 'Arabic (official), English and French widely understood by educated classes', 1001450, '200430', '20136000', '96800000', '8557000', '262000000000'),
(64, 'El Salvador', 'SV', 'SLV', 'sv', 'ES', 222, '3585968', 503, '503', 'North America', 'San Salvador', 'America/El_Salvador', 'Dollar', 'es-SV', 'Spanish (official), Nahua (among some Amerindians)', 21040, '24070', '746000', '8650000', '1060000', '24670000000'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 'gq', 'EK', 226, '2309096', 240, '240', 'Africa', 'Malabo', 'Africa/Malabo', 'Franc', 'es-GQ,fr', 'Spanish (official) 67.6%, other (includes French (official), Fang, Bubi) 32.4% (1994 census)', 28051, '7', '14400', '501000', '14900', '17080000000'),
(66, 'Eritrea', 'ER', 'ERI', 'er', 'ER', 232, '338010', 291, '291', 'Africa', 'Asmara', 'Africa/Asmara', 'Nakfa', 'aa-ER,ar,tig,kun,ti-ER', 'Tigrinya (official), Arabic (official), English (official), Tigre, Kunama, Afar, other Cushitic languages', 121320, '701', '200000', '305300', '60000', '3438000000'),
(67, 'Estonia', 'EE', 'EST', 'ee', 'EN', 233, '453733', 372, '372', 'Europe', 'Tallinn', 'Europe/Tallinn', 'Euro', 'et,ru', 'Estonian (official) 68.5%, Russian 29.6%, Ukrainian 0.6%, other 1.2%, unspecified 0.1% (2011 est.)', 45226, '865494', '971700', '2070000', '448200', '24280000000'),
(68, 'Ethiopia', 'ET', 'ETH', 'et', 'ET', 231, '337996', 251, '251', 'Africa', 'Addis Ababa', 'Africa/Addis_Ababa', 'Birr', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'Oromo (official working language in the State of Oromiya) 33.8%, Amharic (official national language) 29.3%, Somali (official working language of the State of Sumale) 6.2%, Tigrigna (Tigrinya) (official working language of the State of Tigray) 5.9%, Sidamo 4%, Wolaytta 2.2%, Gurage 2%, Afar (official working language of the State of Afar) 1.7%, Hadiyya 1.7%, Gamo 1.5%, Gedeo 1.3%, Opuuo 1.2%, Kafa 1.1%, other 8.1%, English (major foreign language taught in schools), Arabic (2007 est.)', 1127127, '179', '447300', '20524000', '797500', '47340000000'),
(69, 'Falkland Islands', 'FK', 'FLK', 'fk', 'FK', 238, '3474414', 500, '500', 'South America', 'Stanley', 'Atlantic/Stanley', 'Pound', 'en-FK', 'English 89%, Spanish 7.7%, other 3.3% (2006 est.)', 12173, '110', '2900', '3450', '1980', '164500000'),
(70, 'Faroe Islands', 'FO', 'FRO', 'fo', 'FO', 234, '2622320', 298, '298', 'Europe', 'Torshavn', 'Atlantic/Faroe', 'Krone', 'fo,da-FO', 'Faroese (derived from Old Norse), Danish', 1399, '7575', '37500', '61000', '24000', '2320000000'),
(71, 'Fiji', 'FJ', 'FJI', 'fj', 'FJ', 242, '2205218', 679, '679', 'Oceania', 'Suva', 'Pacific/Fiji', 'Dollar', 'en-FJ,fj', 'English (official), Fijian (official), Hindustani', 18270, '21739', '114200', '858800', '88400', '4218000000'),
(72, 'Finland', 'FI', 'FIN', 'fi', 'FI', 246, '660013', 358, '358', 'Europe', 'Helsinki', 'Europe/Helsinki', 'Euro', 'fi-FI,sv-FI,smn', 'Finnish (official) 94.2%, Swedish (official) 5.5%, other (small Sami- and Russian-speaking minorities) 0.2% (2012 est.)', 337030, '4763000', '4393000', '9320000', '890000', '259600000000'),
(73, 'France', 'FR', 'FRA', 'fr', 'FR', 250, '3017382', 33, '33', 'Europe', 'Paris', 'Europe/Paris', 'Euro', 'fr-FR,frp,br,co,ca,eu,oc', 'French (official) 100%, rapidly declining regional dialects and languages (Provencal, Breton, Alsatian, Corsican, Catalan, Basque, Flemish)', 547030, '17266000', '45262000', '62280000', '39290000', '2739000000000'),
(74, 'French Polynesia', 'PF', 'PYF', 'pf', 'FP', 258, '4030656', 689, '689', 'Oceania', 'Papeete', 'Pacific/Tahiti', 'Franc', 'fr-PF,ty', 'French (official) 61.1%, Polynesian (official) 31.4%, Asian languages 1.2%, other 0.3%, unspecified 6% (2002 census)', 4167, '37949', '120000', '226000', '55000', '5650000000'),
(75, 'Gabon', 'GA', 'GAB', 'ga', 'GB', 266, '2400553', 241, '241', 'Africa', 'Libreville', 'Africa/Libreville', 'Franc', 'fr-GA', 'French (official), Fang, Myene, Nzebi, Bapounou/Eschira, Bandjabi', 267667, '127', '98800', '2930000', '17000', '19970000000'),
(76, 'Gambia', 'GM', 'GMB', 'gm', 'GA', 270, '2413451', 220, '220', 'Africa', 'Banjul', 'Africa/Banjul', 'Dalasi', 'en-GM,mnk,wof,wo,ff', 'English (official), Mandinka, Wolof, Fula, other indigenous vernaculars', 11300, '656', '130100', '1526000', '64200', '896000000'),
(77, 'Georgia', 'GE', 'GEO', 'ge', 'GG', 268, '614540', 995, '995', 'Asia', 'Tbilisi', 'Asia/Tbilisi', 'Lari', 'ka,ru,hy,az', 'Georgian (official) 71%, Russian 9%, Armenian 7%, Azeri 6%, other 7%', 69700, '357864', '1300000', '4699000', '1276000', '15950000000'),
(78, 'Germany', 'DE', 'DEU', 'de', 'GM', 276, '2921044', 49, '49', 'Europe', 'Berlin', 'Europe/Berlin', 'Euro', 'de', 'German (official)', 357021, '20043000', '65125000', '107700000', '50700000', '3593000000000'),
(79, 'Ghana', 'GH', 'GHA', 'gh', 'GH', 288, '2300660', 233, '233', 'Africa', 'Accra', 'Africa/Accra', 'Cedi', 'en-GH,ak,ee,tw', 'Asante 14.8%, Ewe 12.7%, Fante 9.9%, Boron (Brong) 4.6%, Dagomba 4.3%, Dangme 4.3%, Dagarte (Dagaba) 3.7%, Akyem 3.4%, Ga 3.4%, Akuapem 2.9%, other (includes English (official)) 36.1% (2000 census)', 239460, '59086', '1297000', '25618000', '285000', '45550000000'),
(80, 'Gibraltar', 'GI', 'GIB', 'gi', 'GI', 292, '2411586', 350, '350', 'Europe', 'Gibraltar', 'Europe/Gibraltar', 'Pound', 'en-GI,es,it,pt', 'English (used in schools and for official purposes), Spanish, Italian, Portuguese', 7, '3509', '20200', '34750', '23100', '1106000000'),
(81, 'Greece', 'GR', 'GRC', 'gr', 'GR', 300, '390903', 30, '30', 'Europe', 'Athens', 'Europe/Athens', 'Euro', 'el-GR,en,fr', 'Greek (official) 99%, other (includes English and French) 1%', 131940, '3201000', '4971000', '13354000', '5461000', '243300000000'),
(82, 'Greenland', 'GL', 'GRL', 'gl', 'GL', 304, '3425505', 299, '299', 'North America', 'Nuuk', 'America/Godthab', 'Krone', 'kl,da-GL,en', 'Greenlandic (East Inuit) (official), Danish (official), English', 2166086, '15645', '36000', '59455', '18900', '2160000000'),
(83, 'Grenada', 'GD', 'GRD', 'gd', 'GJ', 308, '3580239', 1, '1-473', 'North America', 'St. George\'s', 'America/Grenada', 'Dollar', 'en-GD', 'English (official), French patois', 344, '80', '25000', '128000', '28500', '811000000'),
(84, 'Guam', 'GU', 'GUM', 'gu', 'GQ', 316, '4043988', 1, '1-671', 'Oceania', 'Hagatna', 'Pacific/Guam', 'Dollar', 'en-GU,ch-GU', 'English 43.6%, Filipino 21.2%, Chamorro 17.8%, other Pacific island languages 10%, Asian languages 6.3%, other 1.1% (2010 est.)', 549, '23', '90000', '98000', '67000', '4600000000'),
(85, 'Guatemala', 'GT', 'GTM', 'gt', 'GT', 320, '3595528', 502, '502', 'North America', 'Guatemala City', 'America/Guatemala', 'Quetzal', 'es-GT', 'Spanish (official) 60%, Amerindian languages 40%', 108890, '357552', '2279000', '20787000', '1744000', '53900000000'),
(86, 'Guernsey', 'GG', 'GGY', 'gg', 'GK', 831, '3042362', 44, '44-1481', 'Europe', 'St Peter Port', 'Europe/Guernsey', 'Pound', 'en,fr', 'English, French, Norman-French dialect spoken in country districts', 78, '239', '48300', '43800', '45100', '2742000000'),
(87, 'Guinea', 'GN', 'GIN', 'gn', 'GV', 324, '2420477', 224, '224', 'Africa', 'Conakry', 'Africa/Conakry', 'Franc', 'fr-GN', 'French (official)', 245857, '15', '95000', '4781000', '18000', '6544000000'),
(88, 'Guinea-Bissau', 'GW', 'GNB', 'gw', 'PU', 624, '2372248', 245, '245', 'Africa', 'Bissau', 'Africa/Bissau', 'Franc', 'pt-GW,pov', 'Portuguese (official), Crioulo, African languages', 36120, '90', '37100', '1100000', '5000', '880000000'),
(89, 'Guyana', 'GY', 'GUY', 'gy', 'GY', 328, '3378535', 592, '592', 'South America', 'Georgetown', 'America/Guyana', 'Dollar', 'en-GY', 'English, Amerindian dialects, Creole, Caribbean Hindustani (a dialect of Hindi), Urdu', 214970, '24936', '189600', '547000', '154200', '3020000000'),
(90, 'Haiti', 'HT', 'HTI', 'ht', 'HA', 332, '3723988', 509, '509', 'North America', 'Port-au-Prince', 'America/Port-au-Prince', 'Gourde', 'ht,fr-HT', 'French (official), Creole (official)', 27750, '555', '1000000', '6095000', '50000', '8287000000'),
(91, 'Honduras', 'HN', 'HND', 'hn', 'HO', 340, '3608932', 504, '504', 'North America', 'Tegucigalpa', 'America/Tegucigalpa', 'Lempira', 'es-HN', 'Spanish (official), Amerindian dialects', 112090, '30955', '731700', '7370000', '610000', '18880000000'),
(92, 'Hong Kong', 'HK', 'HKG', 'hk', 'HK', 344, '1819730', 852, '852', 'Asia', 'Hong Kong', 'Asia/Hong_Kong', 'Dollar', 'zh-HK,yue,zh,en', 'Cantonese (official) 89.5%, English (official) 3.5%, Putonghua (Mandarin) 1.4%, other Chinese dialects 4%, other 1.6% (2011 est.)', 1092, '870041', '4873000', '16403000', '4362000', '272100000000'),
(93, 'Hungary', 'HU', 'HUN', 'hu', 'HU', 348, '719819', 36, '36', 'Europe', 'Budapest', 'Europe/Budapest', 'Forint', 'hu-HU', 'Hungarian (official) 99.6%, English 16%, German 11.2%, Russian 1.6%, Romanian 1.3%, French 1.2%, other 4.2%', 93030, '3145000', '6176000', '11580000', '2960000', '130600000000'),
(94, 'Iceland', 'IS', 'ISL', 'is', 'IC', 352, '2629691', 354, '354', 'Europe', 'Reykjavik', 'Atlantic/Reykjavik', 'Krona', 'is,en,de,da,sv,no', 'Icelandic, English, Nordic languages, German widely spoken', 103000, '369969', '301600', '346000', '189000', '14590000000'),
(95, 'India', 'IN', 'IND', 'in', 'IN', 356, '1269750', 91, '91', 'Asia', 'New Delhi', 'Asia/Kolkata', 'Rupee', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc', 'Hindi 41%, Bengali 8.1%, Telugu 7.2%, Marathi 7%, Tamil 5.9%, Urdu 5%, Gujarati 4.5%, Kannada 3.7%, Malayalam 3.2%, Oriya 3.2%, Punjabi 2.8%, Assamese 1.3%, Maithili 1.2%, other 5.9%', 3287590, '6746000', '61338000', '893862000', '31080000', '1670000000000'),
(96, 'Indonesia', 'ID', 'IDN', 'id', 'ID', 360, '1643084', 62, '62', 'Asia', 'Jakarta', 'Asia/Jakarta', 'Rupiah', 'id,en,nl,jv', 'Bahasa Indonesia (official, modified form of Malay), English, Dutch, local dialects (of which the most widely spoken is Javanese)', 1919440, '1344000', '20000000', '281960000', '37983000', '867500000000'),
(97, 'Iran', 'IR', 'IRN', 'ir', 'IR', 364, '130758', 98, '98', 'Asia', 'Tehran', 'Asia/Tehran', 'Rial', 'fa-IR,ku', 'Persian (official) 53%, Azeri Turkic and Turkic dialects 18%, Kurdish 10%, Gilaki and Mazandarani 7%, Luri 6%, Balochi 2%, Arabic 2%, other 2%', 1648000, '197804', '8214000', '58160000', '28760000', '411900000000'),
(98, 'Iraq', 'IQ', 'IRQ', 'iq', 'IZ', 368, '99237', 964, '964', 'Asia', 'Baghdad', 'Asia/Baghdad', 'Dinar', 'ar-IQ,ku,hy', 'Arabic (official), Kurdish (official), Turkmen (a Turkish dialect) and Assyrian (Neo-Aramaic) are official in areas where they constitute a majority of the population), Armenian', 437072, '26', '325900', '26760000', '1870000', '221800000000'),
(99, 'Ireland', 'IE', 'IRL', 'ie', 'EI', 372, '2963597', 353, '353', 'Europe', 'Dublin', 'Europe/Dublin', 'Euro', 'en-IE,ga-IE', 'English (official, the language generally used), Irish (Gaelic or Gaeilge) (official, spoken mainly in areas along the western coast)', 70280, '1387000', '3042000', '4906000', '2007000', '220900000000'),
(100, 'Isle of Man', 'IM', 'IMN', 'im', 'IM', 833, '3042225', 44, '44-1624', 'Europe', 'Douglas, Isle of Man', 'Europe/Isle_of_Man', 'Pound', 'en,gv', 'English, Manx Gaelic (about 2% of the population has some knowledge)', 572, '895', '', '', '', '4076000000'),
(101, 'Israel', 'IL', 'ISR', 'il', 'IS', 376, '294640', 972, '972', 'Asia', 'Jerusalem', 'Asia/Jerusalem', 'Shekel', 'he,ar-IL,en-IL,', 'Hebrew (official), Arabic (used officially for Arab minority), English (most commonly used foreign language)', 20770, '2483000', '4525000', '9225000', '3594000', '272700000000'),
(102, 'Italy', 'IT', 'ITA', 'it', 'IT', 380, '3175395', 39, '39', 'Europe', 'Rome', 'Europe/Rome', 'Euro', 'it-IT,de-IT,fr-IT,sc,ca,co,sl', 'Italian (official), German (parts of Trentino-Alto Adige region are predominantly German-speaking), French (small French-speaking minority in Valle d\'Aosta region), Slovene (Slovene-speaking minority in the Trieste-Gorizia area)', 301230, '25662000', '29235000', '97225000', '21656000', '2068000000000'),
(103, 'Ivory Coast', 'CI', 'CIV', 'ci', 'IV', 384, '2287781', 225, '225', 'Africa', 'Yamoussoukro', 'Africa/Abidjan', 'Franc', 'fr-CI', 'French (official), 60 native dialects of which Dioula is the most widely spoken', 322460, '9115', '967300', '19827000', '268000', '28280000000'),
(104, 'Jamaica', 'JM', 'JAM', 'jm', 'JM', 388, '3489940', 1, '1-876', 'North America', 'Kingston', 'America/Jamaica', 'Dollar', 'en-JM', 'English, English patois', 10991, '3906', '1581000', '2665000', '265000', '14390000000'),
(105, 'Japan', 'JP', 'JPN', 'jp', 'JA', 392, '1861060', 81, '81', 'Asia', 'Tokyo', 'Asia/Tokyo', 'Yen', 'ja', 'Japanese', 377835, '64453000', '99182000', '138363000', '64273000', '5007000000000'),
(106, 'Jersey', 'JE', 'JEY', 'je', 'JE', 832, '3042142', 44, '44-1534', 'Europe', 'Saint Helier', 'Europe/Jersey', 'Pound', 'en,pt', 'English 94.5% (official), Portuguese 4.6%, other 0.9% (2001 census)', 116, '264', '29500', '108000', '73800', '5100000000'),
(107, 'Jordan', 'JO', 'JOR', 'jo', 'JO', 400, '248816', 962, '962', 'Asia', 'Amman', 'Asia/Amman', 'Dinar', 'ar-JO,en', 'Arabic (official), English (widely understood among upper and middle classes)', 92300, '69473', '1642000', '8984000', '435000', '34080000000'),
(108, 'Kazakhstan', 'KZ', 'KAZ', 'kz', 'KZ', 398, '1522867', 7, '7', 'Asia', 'Astana', 'Asia/Almaty', 'Tenge', 'kk,ru', 'Kazakh (official, Qazaq) 64.4%, Russian (official, used in everyday business, designated the \"language of interethnic communication\") 95% (2001 est.)', 2717300, '67464', '5299000', '28731000', '4340000', '224900000000'),
(109, 'Kenya', 'KE', 'KEN', 'ke', 'KE', 404, '192950', 254, '254', 'Africa', 'Nairobi', 'Africa/Nairobi', 'Shilling', 'en-KE,sw-KE', 'English (official), Kiswahili (official), numerous indigenous languages', 582650, '71018', '3996000', '30732000', '251600', '45310000000'),
(110, 'Kiribati', 'KI', 'KIR', 'ki', 'KR', 296, '4030945', 686, '686', 'Oceania', 'Tarawa', 'Pacific/Tarawa', 'Dollar', 'en-KI,gil', 'I-Kiribati, English (official)', 811, '327', '7800', '16000', '9000', '173000000'),
(111, 'Kosovo', 'XK', 'XKX', '', 'KV', 0, '831053', 383, '383', 'Europe', 'Pristina', 'Europe/Podgorica', 'Euro', 'sq,sr', 'Albanian (official), Serbian (official), Bosnian, Turkish, Roma', 10887, '', '', '562000', '106300', '7150000000'),
(112, 'Kuwait', 'KW', 'KWT', 'kw', 'KU', 414, '285570', 965, '965', 'Asia', 'Kuwait City', 'Asia/Kuwait', 'Dinar', 'ar-KW,en', 'Arabic (official), English widely spoken', 17820, '2771', '1100000', '5526000', '510000', '179500000000'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 'kg', 'KG', 417, '1527747', 996, '996', 'Asia', 'Bishkek', 'Asia/Bishkek', 'Som', 'ky,uz,ru', 'Kyrgyz (official) 64.7%, Uzbek 13.6%, Russian (official) 12.5%, Dungun 1%, other 8.2% (1999 census)', 198500, '115573', '2195000', '6800000', '489000', '7234000000'),
(114, 'Laos', 'LA', 'LAO', 'la', 'LA', 418, '1655842', 856, '856', 'Asia', 'Vientiane', 'Asia/Vientiane', 'Kip', 'lo,fr,en', 'Lao (official), French, English, various ethnic languages', 236800, '1532', '300000', '6492000', '112000', '10100000000'),
(115, 'Latvia', 'LV', 'LVA', 'lv', 'LG', 428, '458258', 371, '371', 'Europe', 'Riga', 'Europe/Riga', 'Euro', 'lv,ru,lt', 'Latvian (official) 56.3%, Russian 33.8%, other 0.6% (includes Polish, Ukrainian, and Belarusian), unspecified 9.4% (2011 est.)', 64589, '359604', '1504000', '2310000', '501000', '30380000000'),
(116, 'Lebanon', 'LB', 'LBN', 'lb', 'LE', 422, '272103', 961, '961', 'Asia', 'Beirut', 'Asia/Beirut', 'Pound', 'ar-LB,fr-LB,en,hy', 'Arabic (official), French, English, Armenian', 10400, '64926', '1000000', '4000000', '878000', '43490000000'),
(117, 'Lesotho', 'LS', 'LSO', 'ls', 'LT', 426, '932692', 266, '266', 'Africa', 'Maseru', 'Africa/Maseru', 'Loti', 'en-LS,st,zu,xh', 'Sesotho (official) (southern Sotho), English (official), Zulu, Xhosa', 30355, '11030', '76800', '1312000', '43100', '2457000000'),
(118, 'Liberia', 'LR', 'LBR', 'lr', 'LI', 430, '2275384', 231, '231', 'Africa', 'Monrovia', 'Africa/Monrovia', 'Dollar', 'en-LR', 'English 20% (official), some 20 ethnic group languages few of which can be written or used in correspondence', 111370, '7', '20000', '2394000', '3200', '1977000000'),
(119, 'Libya', 'LY', 'LBY', 'ly', 'LY', 434, '2215636', 218, '218', 'Africa', 'Tripolis', 'Africa/Tripoli', 'Dinar', 'ar-LY,it,en', 'Arabic (official), Italian, English (all widely understood in the major cities); Berber (Nafusi, Ghadamis, Suknah, Awjilah, Tamasheq)', 1759540, '17926', '353900', '9590000', '814000', '70920000000'),
(120, 'Liechtenstein', 'LI', 'LIE', 'li', 'LS', 438, '3042058', 423, '423', 'Europe', 'Vaduz', 'Europe/Vaduz', 'Franc', 'de-LI', 'German 94.5% (official) (Alemannic is the main dialect), Italian 1.1%, other 4.3% (2010 est.)', 160, '14278', '23000', '38000', '20000', '5113000000'),
(121, 'Lithuania', 'LT', 'LTU', 'lt', 'LH', 440, '597427', 370, '370', 'Europe', 'Vilnius', 'Europe/Vilnius', 'Euro', 'lt,ru,pl', 'Lithuanian (official) 82%, Russian 8%, Polish 5.6%, other 0.9%, unspecified 3.5% (2011 est.)', 65200, '1205000', '1964000', '5000000', '667300', '46710000000'),
(122, 'Luxembourg', 'LU', 'LUX', 'lu', 'LU', 442, '2960313', 352, '352', 'Europe', 'Luxembourg', 'Europe/Luxembourg', 'Euro', 'lb,de-LU,fr-LU', 'Luxembourgish (official administrative language and national language (spoken vernacular)), French (official administrative language), German (official administrative language)', 2586, '250900', '424500', '761300', '266700', '60540000000'),
(123, 'Macau', 'MO', 'MAC', 'mo', 'MC', 446, '1821275', 853, '853', 'Asia', 'Macao', 'Asia/Macau', 'Pataca', 'zh,zh-MO,pt', 'Cantonese 83.3%, Mandarin 5%, Hokkien 3.7%, English 2.3%, other Chinese dialects 2%, Tagalog 1.7%, Portuguese 0.7%, other 1.3%', 254, '327', '270200', '1613000', '162500', '51680000000'),
(124, 'Macedonia', 'MK', 'MKD', 'mk', 'MK', 807, '718075', 389, '389', 'Europe', 'Skopje', 'Europe/Skopje', 'Denar', 'mk,sq,tr,rmm,sr', 'Macedonian (official) 66.5%, Albanian (official) 25.1%, Turkish 3.5%, Roma 1.9%, Serbian 1.2%, other 1.8% (2002 census)', 25333, '62826', '1057000', '2235000', '407900', '10650000000'),
(125, 'Madagascar', 'MG', 'MDG', 'mg', 'MA', 450, '1062947', 261, '261', 'Africa', 'Antananarivo', 'Indian/Antananarivo', 'Ariary', 'fr-MG,mg', 'French (official), Malagasy (official), English', 587040, '38392', '319900', '8564000', '143700', '10530000000'),
(126, 'Malawi', 'MW', 'MWI', 'mw', 'MI', 454, '927384', 265, '265', 'Africa', 'Lilongwe', 'Africa/Blantyre', 'Kwacha', 'ny,yao,tum,swk', 'English (official), Chichewa (common), Chinyanja, Chiyao, Chitumbuka, Chilomwe, Chinkhonde, Chingoni, Chisena, Chitonga, Chinyakyusa, Chilambya', 118480, '1099', '716400', '4420000', '227300', '3683000000'),
(127, 'Malaysia', 'MY', 'MYS', 'my', 'MY', 458, '1733045', 60, '60', 'Asia', 'Kuala Lumpur', 'Asia/Kuala_Lumpur', 'Ringgit', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Bahasa Malaysia (official), English, Chinese (Cantonese, Mandarin, Hokkien, Hakka, Hainan, Foochow), Tamil, Telugu, Malayalam, Panjabi, Thai', 329750, '422470', '15355000', '41325000', '4589000', '312400000000'),
(128, 'Maldives', 'MV', 'MDV', 'mv', 'MV', 462, '1282028', 960, '960', 'Asia', 'Male', 'Indian/Maldives', 'Rufiyaa', 'dv,en', 'Dhivehi (official, dialect of Sinhala, script derived from Arabic), English (spoken by most government officials)', 300, '3296', '86400', '560000', '23140', '2270000000'),
(129, 'Mali', 'ML', 'MLI', 'ml', 'ML', 466, '2453866', 223, '223', 'Africa', 'Bamako', 'Africa/Bamako', 'Franc', 'fr-ML,bm', 'French (official), Bambara 46.3%, Peul/foulfoulbe 9.4%, Dogon 7.2%, Maraka/soninke 6.4%, Malinke 5.6%, Sonrhai/djerma 5.6%, Minianka 4.3%, Tamacheq 3.5%, Senoufo 2.6%, unspecified 0.6%, other 8.5%', 1240000, '437', '249800', '14613000', '112000', '11370000000'),
(130, 'Malta', 'MT', 'MLT', 'mt', 'MT', 470, '2562770', 356, '356', 'Europe', 'Valletta', 'Europe/Malta', 'Euro', 'mt,en-MT', 'Maltese (official) 90.1%, English (official) 6%, multilingual 3%, other 0.9% (2005 est.)', 316, '14754', '240600', '539500', '229700', '9541000000'),
(131, 'Marshall Islands', 'MH', 'MHL', 'mh', 'RM', 584, '2080185', 692, '692', 'Oceania', 'Majuro', 'Pacific/Majuro', 'Dollar', 'mh,en-MH', 'Marshallese (official) 98.2%, other languages 1.8% (1999 census)', 181, '3', '2200', '3800', '4400', '193000000'),
(132, 'Mauritania', 'MR', 'MRT', 'mr', 'MR', 478, '2378080', 222, '222', 'Africa', 'Nouakchott', 'Africa/Nouakchott', 'Ouguiya', 'ar-MR,fuc,snk,fr,mey,wo', 'Arabic (official and national), Pulaar, Soninke, Wolof (all national languages), French, Hassaniya (a variety of Arabic)', 1030700, '22', '75000', '4024000', '65100', '4183000000'),
(133, 'Mauritius', 'MU', 'MUS', 'mu', 'MP', 480, '934292', 230, '230', 'Africa', 'Port Louis', 'Indian/Mauritius', 'Rupee', 'en-MU,bho,fr', 'Creole 86.5%, Bhojpuri 5.3%, French 4.1%, two languages 1.4%, other 2.6% (includes English, the official language, which is spoken by less than 1% of the population), unspecified 0.1% (2011 est.)', 2040, '51139', '290000', '1485000', '349100', '11900000000'),
(134, 'Mayotte', 'YT', 'MYT', 'yt', 'MF', 175, '1024031', 262, '262', 'Africa', 'Mamoudzou', 'Indian/Mayotte', 'Euro', 'fr-YT', 'French', 374, '', '', '', '', ''),
(135, 'Mexico', 'MX', 'MEX', 'mx', 'MX', 484, '3996063', 52, '52', 'North America', 'Mexico City', 'America/Mexico_City', 'Peso', 'es-MX', 'Spanish only 92.7%, Spanish and indigenous languages 5.7%, indigenous only 0.8%, unspecified 0.8%', 1972550, '16233000', '31020000', '100786000', '20220000', '1327000000000'),
(136, 'Micronesia', 'FM', 'FSM', 'fm', 'FM', 583, '2081918', 691, '691', 'Oceania', 'Palikir', 'Pacific/Pohnpei', 'Dollar', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', 'English (official and common language), Chuukese, Kosrean, Pohnpeian, Yapese, Ulithian, Woleaian, Nukuoro, Kapingamarangi', 702, '4668', '17000', '27600', '8400', '339000000'),
(137, 'Moldova', 'MD', 'MDA', 'md', 'MD', 498, '617790', 373, '373', 'Europe', 'Chisinau', 'Europe/Chisinau', 'Leu', 'ro,ru,gag,tr', 'Moldovan 58.8% (official; virtually the same as the Romanian language), Romanian 16.4%, Russian 16%, Ukrainian 3.8%, Gagauz 3.1% (a Turkish language), Bulgarian 1.1%, other 0.3%, unspecified 0.4%', 33843, '711564', '1333000', '4080000', '1206000', '7932000000'),
(138, 'Monaco', 'MC', 'MCO', 'mc', 'MN', 492, '2993457', 377, '377', 'Europe', 'Monaco', 'Europe/Monaco', 'Euro', 'fr-MC,en,it', 'French (official), English, Italian, Monegasque', 2, '26009', '23000', '33200', '44500', '5748000000'),
(139, 'Mongolia', 'MN', 'MNG', 'mn', 'MG', 496, '2029969', 976, '976', 'Asia', 'Ulan Bator', 'Asia/Ulaanbaatar', 'Tugrik', 'mn,ru', 'Khalkha Mongol 90% (official), Turkic, Russian (1999)', 1565000, '20084', '330000', '3375000', '176700', '11140000000'),
(140, 'Montenegro', 'ME', 'MNE', 'me', 'MJ', 499, '3194884', 382, '382', 'Europe', 'Podgorica', 'Europe/Podgorica', 'Euro', 'sr,hu,bs,sq,hr,rom', 'Serbian 42.9%, Montenegrin (official) 37%, Bosnian 5.3%, Albanian 5.3%, Serbo-Croat 2%, other 3.5%, unspecified 4% (2011 est.)', 14026, '10088', '280000', '1126000', '163000', '4518000000'),
(141, 'Montserrat', 'MS', 'MSR', 'ms', 'MH', 500, '3578097', 1, '1-664', 'North America', 'Plymouth', 'America/Montserrat', 'Dollar', 'en-MS', 'English', 102, '2431', '1200', '4000', '3000', ''),
(142, 'Morocco', 'MA', 'MAR', 'ma', 'MO', 504, '2542007', 212, '212', 'Africa', 'Rabat', 'Africa/Casablanca', 'Dirham', 'ar-MA,fr', 'Arabic (official), Berber languages (Tamazight (official), Tachelhit, Tarifit), French (often the language of business, government, and diplomacy)', 446550, '277338', '13213000', '39016000', '3280000', '104800000000'),
(143, 'Mozambique', 'MZ', 'MOZ', 'mz', 'MZ', 508, '1036973', 258, '258', 'Africa', 'Maputo', 'Africa/Maputo', 'Metical', 'pt-MZ,vmw', 'Emakhuwa 25.3%, Portuguese (official) 10.7%, Xichangana 10.3%, Cisena 7.5%, Elomwe 7%, Echuwabo 5.1%, other Mozambican languages 30.1%, other 4% (1997 census)', 801590, '89737', '613600', '8108000', '88100', '14670000000'),
(144, 'Myanmar', 'MM', 'MMR', 'mm', 'BM', 104, '1327865', 95, '95', 'Asia', 'Nay Pyi Taw', 'Asia/Rangoon', 'Kyat', 'my', 'Burmese (official)', 678500, '1055', '110000', '5440000', '556000', '59430000000'),
(145, 'Namibia', 'NA', 'NAM', 'na', 'WA', 516, '3355338', 264, '264', 'Africa', 'Windhoek', 'Africa/Windhoek', 'Dollar', 'en-NA,af,de,hz,naq', 'Oshiwambo languages 48.9%, Nama/Damara 11.3%, Afrikaans 10.4% (common language of most of the population and about 60% of the white population), Otjiherero languages 8.6%, Kavango languages 8.5%, Caprivi languages 4.8%, English (official) 3.4%, other African languages 2.3%, other 1.7%', 825418, '78280', '127500', '2435000', '171000', '12300000000'),
(146, 'Nauru', 'NR', 'NRU', 'nr', 'NR', 520, '2110425', 674, '674', 'Oceania', 'Yaren', 'Pacific/Nauru', 'Dollar', 'na,en-NR', 'Nauruan 93% (official, a distinct Pacific Island language), English 2% (widely understood, spoken, and used for most government and commercial purposes), other 5% (includes I-Kiribati 2% and Chinese 2%)', 21, '8162', '', '6800', '1900', ''),
(147, 'Nepal', 'NP', 'NPL', 'np', 'NP', 524, '1282988', 977, '977', 'Asia', 'Kathmandu', 'Asia/Kathmandu', 'Rupee', 'ne,en', 'Nepali (official) 44.6%, Maithali 11.7%, Bhojpuri 6%, Tharu 5.8%, Tamang 5.1%, Newar 3.2%, Magar 3%, Bajjika 3%, Urdu 2.6%, Avadhi 1.9%, Limbu 1.3%, Gurung 1.2%, other 10.4%, unspecified 0.2%', 140800, '41256', '577800', '18138000', '834000', '19340000000'),
(148, 'Netherlands', 'NL', 'NLD', 'nl', 'NL', 528, '2750405', 31, '31', 'Europe', 'Amsterdam', 'Europe/Amsterdam', 'Euro', 'nl-NL,fy-NL', 'Dutch (official)', 41526, '13699000', '14872000', '19643000', '7086000', '722300000000'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 'an', 'NT', 530, '', 599, '599', 'North America', 'Willemstad', 'America/Curacao', 'Guilder', 'nl-AN,en,es', 'Dutch, English, Spanish', 960, '', '', '', '', ''),
(150, 'New Caledonia', 'NC', 'NCL', 'nc', 'NC', 540, '2139685', 687, '687', 'Oceania', 'Noumea', 'Pacific/Noumea', 'Franc', 'fr-NC', 'French (official), 33 Melanesian-Polynesian dialects', 19060, '34231', '85000', '231000', '80000', '9280000000'),
(151, 'New Zealand', 'NZ', 'NZL', 'nz', 'NZ', 554, '2186224', 64, '64', 'Oceania', 'Wellington', 'Pacific/Auckland', 'Dollar', 'en-NZ,mi', 'English (de facto official) 89.8%, Maori (de jure official) 3.5%, Samoan 2%, Hindi 1.6%, French 1.2%, Northern Chinese 1.2%, Yue 1%, Other or not stated 20.5%, New Zealand Sign Language (de jure official)', 268680, '3026000', '3400000', '4922000', '1880000', '181100000000'),
(152, 'Nicaragua', 'NI', 'NIC', 'ni', 'NU', 558, '3617476', 505, '505', 'North America', 'Managua', 'America/Managua', 'Cordoba', 'es-NI,en', 'Spanish (official) 95.3%, Miskito 2.2%, Mestizo of the Caribbean coast 2%, other 0.5%', 129494, '296068', '199800', '5346000', '320000', '11260000000'),
(153, 'Niger', 'NE', 'NER', 'ne', 'NG', 562, '2440476', 227, '227', 'Africa', 'Niamey', 'Africa/Niamey', 'Franc', 'fr-NE,ha,kr,dje', 'French (official), Hausa, Djerma', 1267000, '454', '115900', '5400000', '100500', '7304000000'),
(154, 'Nigeria', 'NG', 'NGA', 'ng', 'NI', 566, '2328926', 234, '234', 'Africa', 'Abuja', 'Africa/Lagos', 'Naira', 'en-NG,ha,yo,ig,ff', 'English (official), Hausa, Yoruba, Igbo (Ibo), Fulani, over 500 additional indigenous languages', 923768, '1234', '43989000', '112780000', '418200', '502000000000'),
(155, 'Niue', 'NU', 'NIU', 'nu', 'NE', 570, '4036232', 683, '683', 'Oceania', 'Alofi', 'Pacific/Niue', 'Dollar', 'niu,en-NU', 'Niuean (official) 46% (a Polynesian language closely related to Tongan and Samoan), Niuean and English 32%, English (official) 11%, Niuean and others 5%, other 6% (2011 est.)', 260, '79508', '1100', '', '', '10010000'),
(156, 'North Korea', 'KP', 'PRK', 'kp', 'KN', 408, '1873107', 850, '850', 'Asia', 'Pyongyang', 'Asia/Pyongyang', 'Won', 'ko-KP', 'Korean', 120540, '8', '', '1700000', '1180000', '28000000000'),
(157, 'Northern Mariana Islands', 'MP', 'MNP', 'mp', 'CQ', 580, '4041468', 1, '1-670', 'Oceania', 'Saipan', 'Pacific/Saipan', 'Dollar', 'fil,tl,zh,ch-MP,en-MP', 'Philippine languages 32.8%, Chamorro (official) 24.1%, English (official) 17%, other Pacific island languages 10.1%, Chinese 6.8%, other Asian languages 7.3%, other 1.9% (2010 est.)', 477, '17', '', '', '', '733000000'),
(158, 'Norway', 'NO', 'NOR', 'no', 'NO', 578, '3144096', 47, '47', 'Europe', 'Oslo', 'Europe/Oslo', 'Krone', 'no,nb,nn,se,fi', 'Bokmal Norwegian (official), Nynorsk Norwegian (official), small Sami- and Finnish-speaking minorities', 324220, '3588000', '4431000', '5732000', '1465000', '515800000000'),
(159, 'Oman', 'OM', 'OMN', 'om', 'MU', 512, '286963', 968, '968', 'Asia', 'Muscat', 'Asia/Muscat', 'Rial', 'ar-OM,en,bal,ur', 'Arabic (official), English, Baluchi, Urdu, Indian dialects', 212460, '14531', '1465000', '5278000', '305000', '81950000000'),
(160, 'Pakistan', 'PK', 'PAK', 'pk', 'PK', 586, '1168579', 92, '92', 'Asia', 'Islamabad', 'Asia/Karachi', 'Rupee', 'ur-PK,en-PK,pa,sd,ps,brh', 'Punjabi 48%, Sindhi 12%, Saraiki (a Punjabi variant) 10%, Pashto (alternate name, Pashtu) 8%, Urdu (official) 8%, Balochi 3%, Hindko 2%, Brahui 1%, English (official; lingua franca of Pakistani elite and most government ministries), Burushaski, and other 8%', 803940, '365813', '20431000', '125000000', '5803000', '236500000000'),
(161, 'Palau', 'PW', 'PLW', 'pw', 'PS', 585, '1559582', 680, '680', 'Oceania', 'Melekeok', 'Pacific/Palau', 'Dollar', 'pau,sov,en-PW,tox,ja,fil,zh', 'Palauan (official on most islands) 66.6%, Carolinian 0.7%, other Micronesian 0.7%, English (official) 15.5%, Filipino 10.8%, Chinese 1.8%, other Asian 2.6%, other 1.3%', 458, '4', '', '17150', '7300', '221000000'),
(162, 'Palestine', 'PS', 'PSE', 'ps', 'WE', 275, '6254930', 970, '970', 'Asia', 'East Jerusalem', 'Asia/Hebron', 'Shekel', 'ar-PS', 'Arabic, Hebrew, English', 5970, '', '1379000', '3041000', '406000', '6641000000'),
(163, 'Panama', 'PA', 'PAN', 'pa', 'PM', 591, '3703430', 507, '507', 'North America', 'Panama City', 'America/Panama', 'Balboa', 'es-PA,en', 'Spanish (official), English 14%', 78200, '11022', '959800', '6770000', '640000', '40620000000'),
(164, 'Papua New Guinea', 'PG', 'PNG', 'pg', 'PP', 598, '2088628', 675, '675', 'Oceania', 'Port Moresby', 'Pacific/Port_Moresby', 'Kina', 'en-PG,ho,meu,tpi', 'Tok Pisin (official), English (official), Hiri Motu (official), some 836 indigenous languages spoken (about 12% of the world\'s total); most languages have fewer than 1,000 speakers', 462840, '5006', '125000', '2709000', '139000', '16100000000'),
(165, 'Paraguay', 'PY', 'PRY', 'py', 'PA', 600, '3437598', 595, '595', 'South America', 'Asuncion', 'America/Asuncion', 'Guarani', 'es-PY,gn', 'Spanish (official), Guarani (official)', 406750, '280658', '1105000', '6790000', '376000', '30560000000'),
(166, 'Peru', 'PE', 'PER', 'pe', 'PE', 604, '3932488', 51, '51', 'South America', 'Lima', 'America/Lima', 'Sol', 'es-PE,qu,ay', 'Spanish (official) 84.1%, Quechua (official) 13%, Aymara (official) 1.7%, Ashaninka 0.3%, other native languages (includes a large number of minor Amazonian languages) 0.7%, other (includes foreign languages and sign language) 0.2% (2007 est.)', 1285220, '234102', '9158000', '29400000', '3420000', '210300000000'),
(167, 'Philippines', 'PH', 'PHL', 'ph', 'RP', 608, '1694008', 63, '63', 'Asia', 'Manila', 'Asia/Manila', 'Peso', 'tl,en-PH,fil', 'Filipino (official; based on Tagalog) and English (official); eight major dialects - Tagalog, Cebuano, Ilocano, Hiligaynon or Ilonggo, Bicol, Waray, Pampango, and Pangasinan', 300000, '425812', '8278000', '103000000', '3939000', '272200000000');
INSERT INTO `countries` (`id_country`, `country_name`, `ISO2`, `ISO3`, `Top Level Domain`, `FIPS`, `ISO Numeric`, `GeoNameID`, `E164`, `phone_code`, `Continent`, `Capital`, `Time Zone in Capital`, `Currency`, `Language Codes`, `Languages`, `Area KM2`, `Internet Hosts`, `Internet Users`, `Phones (Mobile)`, `Phones (Landline)`, `GDP`) VALUES
(168, 'Pitcairn', 'PN', 'PCN', 'pn', 'PC', 612, '4030699', 64, '64', 'Oceania', 'Adamstown', 'Pacific/Pitcairn', 'Dollar', 'en-PN', 'English', 47, '', '', '', '', ''),
(169, 'Poland', 'PL', 'POL', 'pl', 'PL', 616, '798544', 48, '48', 'Europe', 'Warsaw', 'Europe/Warsaw', 'Zloty', 'pl', 'Polish (official) 96.2%, Polish and non-Polish 2%, non-Polish 0.5%, unspecified 1.3%', 312685, '13265000', '22452000', '50840000', '6125000', '513900000000'),
(170, 'Portugal', 'PT', 'PRT', 'pt', 'PO', 620, '2264397', 351, '351', 'Europe', 'Lisbon', 'Europe/Lisbon', 'Euro', 'pt-PT,mwl', 'Portuguese (official), Mirandese (official, but locally used)', 92391, '3748000', '5168000', '12312000', '4558000', '219300000000'),
(171, 'Puerto Rico', 'PR', 'PRI', 'pr', 'RQ', 630, '4566966', 1, '1-787, 1-939', 'North America', 'San Juan', 'America/Puerto_Rico', 'Dollar', 'en-PR,es-PR', 'Spanish, English', 9104, '469', '1000000', '3060000', '780200', '93520000000'),
(172, 'Qatar', 'QA', 'QAT', 'qa', 'QA', 634, '289688', 974, '974', 'Asia', 'Doha', 'Asia/Qatar', 'Rial', 'ar-QA,es', 'Arabic (official), English commonly used as a second language', 11437, '897', '563800', '2600000', '327000', '213100000000'),
(173, 'Republic of the Congo', 'CG', 'COG', 'cg', 'CF', 178, '2260494', 242, '242', 'Africa', 'Brazzaville', 'Africa/Brazzaville', 'Franc', 'fr-CG,kg,ln-CG', 'French (official), Lingala and Monokutuba (lingua franca trade languages), many local languages and dialects (of which Kikongo is the most widespread)', 342000, '45', '245200', '4283000', '14900', '14250000000'),
(174, 'Reunion', 'RE', 'REU', 're', 'RE', 638, '935317', 262, '262', 'Africa', 'Saint-Denis', 'Indian/Reunion', 'Euro', 'fr-RE', 'French', 2517, '', '', '', '', ''),
(175, 'Romania', 'RO', 'ROU', 'ro', 'RO', 642, '798549', 40, '40', 'Europe', 'Bucharest', 'Europe/Bucharest', 'Leu', 'ro,hu,rom', 'Romanian (official) 85.4%, Hungarian 6.3%, Romany (Gypsy) 1.2%, other 1%, unspecified 6.1% (2011 est.)', 237500, '2667000', '7787000', '22700000', '4680000', '188900000000'),
(176, 'Russia', 'RU', 'RUS', 'ru', 'RS', 643, '2017370', 7, '7', 'Europe', 'Moscow', 'Europe/Moscow', 'Ruble', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,ava,sah,nog', 'Russian (official) 96.3%, Dolgang 5.3%, German 1.5%, Chechen 1%, Tatar 3%, other 10.3%', 17100000, '14865000', '40853000', '261900000', '42900000', '2113000000000'),
(177, 'Rwanda', 'RW', 'RWA', 'rw', 'RW', 646, '49518', 250, '250', 'Africa', 'Kigali', 'Africa/Kigali', 'Franc', 'rw,en-RW,fr-RW,sw', 'Kinyarwanda only (official, universal Bantu vernacular) 93.2%, Kinyarwanda and other language(s) 6.2%, French (official) and other language(s) 0.1%, English (official) and other language(s) 0.1%, Swahili (or Kiswahili, used in commercial centers) 0.02%, other 0.03%, unspecified 0.3% (2002 est.)', 26338, '1447', '450000', '5690000', '44400', '7700000000'),
(178, 'Saint Barthelemy', 'BL', 'BLM', 'gp', 'TB', 652, '3578476', 590, '590', 'North America', 'Gustavia', 'America/St_Barthelemy', 'Euro', 'fr', 'French (primary), English', 21, '', '', '', '', ''),
(179, 'Saint Helena', 'SH', 'SHN', 'sh', 'SH', 654, '3370751', 290, '290', 'Africa', 'Jamestown', 'Atlantic/St_Helena', 'Pound', 'en-SH', 'English', 410, '', '', '', '', ''),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 'kn', 'SC', 659, '3575174', 1, '1-869', 'North America', 'Basseterre', 'America/St_Kitts', 'Dollar', 'en-KN', 'English (official)', 261, '54', '17000', '84000', '20000', '767000000'),
(181, 'Saint Lucia', 'LC', 'LCA', 'lc', 'ST', 662, '3576468', 1, '1-758', 'North America', 'Castries', 'America/St_Lucia', 'Dollar', 'en-LC', 'English (official), French patois', 616, '100', '142900', '227000', '36800', '1377000000'),
(182, 'Saint Martin', 'MF', 'MAF', 'gp', 'RN', 663, '3578421', 1, '590', 'North America', 'Marigot', 'America/Marigot', 'Euro', 'fr', 'French (official), English, Dutch, French Patois, Spanish, Papiamento (dialect of Netherlands Antilles)', 53, '', '', '', '', '561500000'),
(183, 'Saint Pierre and Miquelon', 'PM', 'SPM', 'pm', 'SB', 666, '3424932', 508, '508', 'North America', 'Saint-Pierre', 'America/Miquelon', 'Euro', 'fr-PM', 'French (official)', 242, '15', '', '', '4800', '215300000'),
(184, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'vc', 'VC', 670, '3577815', 1, '1-784', 'North America', 'Kingstown', 'America/St_Vincent', 'Dollar', 'en-VC,fr', 'English, French patois', 389, '305', '76000', '135500', '19400', '742000000'),
(185, 'Samoa', 'WS', 'WSM', 'ws', 'WS', 882, '4034894', 685, '685', 'Oceania', 'Apia', 'Pacific/Apia', 'Tala', 'sm,en-WS', 'Samoan (Polynesian) (official), English', 2944, '18013', '9000', '167400', '35300', '705000000'),
(186, 'San Marino', 'SM', 'SMR', 'sm', 'SM', 674, '3168068', 378, '378', 'Europe', 'San Marino', 'Europe/San_Marino', 'Euro', 'it-SM', 'Italian', 61, '11015', '17000', '36000', '18700', '1866000000'),
(187, 'Sao Tome and Principe', 'ST', 'STP', 'st', 'TP', 678, '2410758', 239, '239', 'Africa', 'Sao Tome', 'Africa/Sao_Tome', 'Dobra', 'pt-ST', 'Portuguese 98.4% (official), Forro 36.2%, Cabo Verdian 8.5%, French 6.8%, Angolar 6.6%, English 4.9%, Lunguie 1%, other (including sign language) 2.4%', 1001, '1678', '26700', '122000', '8000', '311000000'),
(188, 'Saudi Arabia', 'SA', 'SAU', 'sa', 'SA', 682, '102358', 966, '966', 'Asia', 'Riyadh', 'Asia/Riyadh', 'Rial', 'ar-SA', 'Arabic (official)', 1960582, '145941', '9774000', '53000000', '4800000', '718500000000'),
(189, 'Senegal', 'SN', 'SEN', 'sn', 'SG', 686, '2245662', 221, '221', 'Africa', 'Dakar', 'Africa/Dakar', 'Franc', 'fr-SN,wo,fuc,mnk', 'French (official), Wolof, Pulaar, Jola, Mandinka', 196190, '237', '1818000', '11470000', '338200', '15360000000'),
(190, 'Serbia', 'RS', 'SRB', 'rs', 'RI', 688, '6290252', 381, '381', 'Europe', 'Belgrade', 'Europe/Belgrade', 'Dinar', 'sr,hu,bs,rom', 'Serbian (official) 88.1%, Hungarian 3.4%, Bosnian 1.9%, Romany 1.4%, other 3.4%, undeclared or unknown 1.8%', 88361, '1102000', '4107000', '9138000', '2977000', '43680000000'),
(191, 'Seychelles', 'SC', 'SYC', 'sc', 'SE', 690, '241170', 248, '248', 'Africa', 'Victoria', 'Indian/Mahe', 'Rupee', 'en-SC,fr-SC', 'Seychellois Creole (official) 89.1%, English (official) 5.1%, French (official) 0.7%, other 3.8%, unspecified 1.4% (2010 est.)', 455, '247', '32000', '138300', '28900', '1271000000'),
(192, 'Sierra Leone', 'SL', 'SLE', 'sl', 'SL', 694, '2403846', 232, '232', 'Africa', 'Freetown', 'Africa/Freetown', 'Leone', 'en-SL,men,tem', 'English (official, regular use limited to literate minority), Mende (principal vernacular in the south), Temne (principal vernacular in the north), Krio (English-based Creole, spoken by the descendants of freed Jamaican slaves who were settled in the Freetown area, a lingua franca and a first language for 10% of the population but understood by 95%)', 71740, '282', '14900', '2210000', '18000', '4607000000'),
(193, 'Singapore', 'SG', 'SGP', 'sg', 'SN', 702, '1880251', 65, '65', 'Asia', 'Singapore', 'Asia/Singapore', 'Dollar', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 'Mandarin (official) 36.3%, English (official) 29.8%, Malay (official) 11.9%, Hokkien 8.1%, Tamil (official) 4.4%, Cantonese 4.1%, Teochew 3.2%, other Indian languages 1.2%, other Chinese dialects 1.1%, other 1.1% (2010 est.)', 693, '1960000', '3235000', '8063000', '1990000', '295700000000'),
(194, 'Sint Maarten', 'SX', 'SXM', 'sx', 'NN', 534, '7609695', 1, '1-721', 'North America', 'Philipsburg', 'America/Lower_Princes', 'Guilder', 'nl,en', 'English (official) 67.5%, Spanish 12.9%, Creole 8.2%, Dutch (official) 4.2%, Papiamento (a Spanish-Portuguese-Dutch-English dialect) 2.2%, French 1.5%, other 3.5% (2001 census)', 34, '', '', '', '', '794700000'),
(195, 'Slovakia', 'SK', 'SVK', 'sk', 'LO', 703, '3057568', 421, '421', 'Europe', 'Bratislava', 'Europe/Bratislava', 'Euro', 'sk,hu', 'Slovak (official) 78.6%, Hungarian 9.4%, Roma 2.3%, Ruthenian 1%, other or unspecified 8.8% (2011 est.)', 48845, '1384000', '4063000', '6095000', '975000', '96960000000'),
(196, 'Slovenia', 'SI', 'SVN', 'si', 'SI', 705, '3190538', 386, '386', 'Europe', 'Ljubljana', 'Europe/Ljubljana', 'Euro', 'sl,sh', 'Slovenian (official) 91.1%, Serbo-Croatian 4.5%, other or unspecified 4.4%, Italian (official, only in municipalities where Italian national communities reside), Hungarian (official, only in municipalities where Hungarian national communities reside) (2002 census)', 20273, '415581', '1298000', '2246000', '825000', '46820000000'),
(197, 'Solomon Islands', 'SB', 'SLB', 'sb', 'BP', 90, '2103350', 677, '677', 'Oceania', 'Honiara', 'Pacific/Guadalcanal', 'Dollar', 'en-SB,tpi', 'Melanesian pidgin (in much of the country is lingua franca), English (official but spoken by only 1%-2% of the population), 120 indigenous languages', 28450, '4370', '10000', '302100', '8060', '1099000000'),
(198, 'Somalia', 'SO', 'SOM', 'so', 'SO', 706, '51537', 252, '252', 'Africa', 'Mogadishu', 'Africa/Mogadishu', 'Shilling', 'so-SO,ar-SO,it,en-SO', 'Somali (official), Arabic (official, according to the Transitional Federal Charter), Italian, English', 637657, '186', '106000', '658000', '100000', '2372000000'),
(199, 'South Africa', 'ZA', 'ZAF', 'za', 'SF', 710, '953987', 27, '27', 'Africa', 'Pretoria', 'Africa/Johannesburg', 'Rand', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'IsiZulu (official) 22.7%, IsiXhosa (official) 16%, Afrikaans (official) 13.5%, English (official) 9.6%, Sepedi (official) 9.1%, Setswana (official) 8%, Sesotho (official) 7.6%, Xitsonga (official) 4.5%, siSwati (official) 2.5%, Tshivenda (official) 2.4%, isiNdebele (official) 2.1%, sign language 0.5%, other 1.6% (2011 est.)', 1219912, '4761000', '4420000', '68400000', '4030000', '353900000000'),
(200, 'South Korea', 'KR', 'KOR', 'kr', 'KS', 410, '1835841', 82, '82', 'Asia', 'Seoul', 'Asia/Seoul', 'Won', 'ko-KR,en', 'Korean, English (widely taught in junior high and high school)', 98480, '315697', '39400000', '53625000', '30100000', '1198000000000'),
(201, 'South Sudan', 'SS', 'SSD', 'ss', 'OD', 728, '7909807', 211, '211', 'Africa', 'Juba', 'Africa/Juba', 'Pound', 'en', 'English (official), Arabic (includes Juba and Sudanese variants), regional languages include Dinka, Nuer, Bari, Zande, Shilluk', 644329, '', '', '2000000', '2200', '11770000000'),
(202, 'Spain', 'ES', 'ESP', 'es', 'SP', 724, '2510769', 34, '34', 'Europe', 'Madrid', 'Europe/Madrid', 'Euro', 'es-ES,ca,gl,eu,oc', 'Castilian Spanish (official) 74%, Catalan 17%, Galician 7%, and Basque 2%', 504782, '4228000', '28119000', '50663000', '19220000', '1356000000000'),
(203, 'Sri Lanka', 'LK', 'LKA', 'lk', 'CE', 144, '1227603', 94, '94', 'Asia', 'Colombo', 'Asia/Colombo', 'Rupee', 'si,ta,en', 'Sinhala (official and national language) 74%, Tamil (national language) 18%, other 8%', 65610, '9552', '1777000', '19533000', '2796000', '65120000000'),
(204, 'Sudan', 'SD', 'SDN', 'sd', 'SU', 729, '366755', 249, '249', 'Africa', 'Khartoum', 'Africa/Khartoum', 'Pound', 'ar-SD,en,fia', 'Arabic (official), English (official), Nubian, Ta Bedawie, Fur', 1861484, '99', '4200000', '27659000', '425000', '52500000000'),
(205, 'Suriname', 'SR', 'SUR', 'sr', 'NS', 740, '3382998', 597, '597', 'South America', 'Paramaribo', 'America/Paramaribo', 'Dollar', 'nl-SR,en,srn,hns,jv', 'Dutch (official), English (widely spoken), Sranang Tongo (Surinamese, sometimes called Taki-Taki, is native language of Creoles and much of the younger population and is lingua franca among others), Caribbean Hindustani (a dialect of Hindi), Javanese', 163270, '188', '163000', '977000', '83000', '5009000000'),
(206, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'sj', 'SV', 744, '607072', 47, '47', 'Europe', 'Longyearbyen', 'Arctic/Longyearbyen', 'Krone', 'no,ru', 'Norwegian, Russian', 62049, '', '', '', '', ''),
(207, 'Swaziland', 'SZ', 'SWZ', 'sz', 'WZ', 748, '934841', 268, '268', 'Africa', 'Mbabane', 'Africa/Mbabane', 'Lilangeni', 'en-SZ,ss-SZ', 'English (official, used for government business), siSwati (official)', 17363, '2744', '90100', '805000', '48600', '3807000000'),
(208, 'Sweden', 'SE', 'SWE', 'se', 'SW', 752, '2661886', 46, '46', 'Europe', 'Stockholm', 'Europe/Stockholm', 'Krona', 'sv-SE,se,sma,fi-SE', 'Swedish (official), small Sami- and Finnish-speaking minorities', 449964, '5978000', '8398000', '11643000', '4321000', '552000000000'),
(209, 'Switzerland', 'CH', 'CHE', 'ch', 'SZ', 756, '2658434', 41, '41', 'Europe', 'Berne', 'Europe/Zurich', 'Franc', 'de-CH,fr-CH,it-CH,rm', 'German (official) 64.9%, French (official) 22.6%, Italian (official) 8.3%, Serbo-Croatian 2.5%, Albanian 2.6%, Portuguese 3.4%, Spanish 2.2%, English 4.6%, Romansch (official) 0.5%, other 5.1%', 41290, '5301000', '6152000', '10460000', '4382000', '646200000000'),
(210, 'Syria', 'SY', 'SYR', 'sy', 'SY', 760, '163843', 963, '963', 'Asia', 'Damascus', 'Asia/Damascus', 'Pound', 'ar-SY,ku,hy,arc,fr,en', 'Arabic (official), Kurdish, Armenian, Aramaic, Circassian (widely understood); French, English (somewhat understood)', 185180, '416', '4469000', '12928000', '4425000', '64700000000'),
(211, 'Taiwan', 'TW', 'TWN', 'tw', 'TW', 158, '1668284', 886, '886', 'Asia', 'Taipei', 'Asia/Taipei', 'Dollar', 'zh-TW,zh,nan,hak', 'Mandarin Chinese (official), Taiwanese (Min), Hakka dialects', 35980, '6272000', '16147000', '29455000', '15998000', '484700000000'),
(212, 'Tajikistan', 'TJ', 'TJK', 'tj', 'TI', 762, '1220409', 992, '992', 'Asia', 'Dushanbe', 'Asia/Dushanbe', 'Somoni', 'tg,ru', 'Tajik (official), Russian widely used in government and business', 143100, '6258', '700000', '6528000', '393000', '8513000000'),
(213, 'Tanzania', 'TZ', 'TZA', 'tz', 'TZ', 834, '149590', 255, '255', 'Africa', 'Dodoma', 'Africa/Dar_es_Salaam', 'Shilling', 'sw-TZ,en,ar', 'Kiswahili or Swahili (official), Kiunguja (name for Swahili in Zanzibar), English (official, primary language of commerce, administration, and higher education), Arabic (widely spoken in Zanzibar), many local languages', 945087, '26074', '678000', '27220000', '161100', '31940000000'),
(214, 'Thailand', 'TH', 'THA', 'th', 'TH', 764, '1605651', 66, '66', 'Asia', 'Bangkok', 'Asia/Bangkok', 'Baht', 'th,en', 'Thai (official) 90.7%, Burmese 1.3%, other 8%', 514000, '3399000', '17483000', '84075000', '6391000', '400900000000'),
(215, 'Togo', 'TG', 'TGO', 'tg', 'TO', 768, '2363686', 228, '228', 'Africa', 'Lome', 'Africa/Lome', 'Franc', 'fr-TG,ee,hna,kbp,dag,ha', 'French (official, the language of commerce), Ewe and Mina (the two major African languages in the south), Kabye (sometimes spelled Kabiye) and Dagomba (the two major African languages in the north)', 56785, '1168', '356300', '3518000', '225000', '4299000000'),
(216, 'Tokelau', 'TK', 'TKL', 'tk', 'TL', 772, '4031074', 690, '690', 'Oceania', '', 'Pacific/Fakaofo', 'Dollar', 'tkl,en-TK', 'Tokelauan 93.5% (a Polynesian language), English 58.9%, Samoan 45.5%, Tuvaluan 11.6%, Kiribati 2.7%, other 2.5%, none 4.1%, unspecified 0.6%', 10, '2069', '800', '', '', ''),
(217, 'Tonga', 'TO', 'TON', 'to', 'TN', 776, '4032283', 676, '676', 'Oceania', 'Nuku\'alofa', 'Pacific/Tongatapu', 'Pa\'anga', 'to,en-TO', 'English and Tongan 87%, Tongan (official) 10.7%, English (official) 1.2%, other 1.1%, uspecified 0.03% (2006 est.)', 748, '5367', '8400', '56000', '30000', '477000000'),
(218, 'Trinidad and Tobago', 'TT', 'TTO', 'tt', 'TD', 780, '3573591', 1, '1-868', 'North America', 'Port of Spain', 'America/Port_of_Spain', 'Dollar', 'en-TT,hns,fr,es,zh', 'English (official), Caribbean Hindustani (a dialect of Hindi), French, Spanish, Chinese', 5128, '241690', '593000', '1884000', '287000', '27130000000'),
(219, 'Tunisia', 'TN', 'TUN', 'tn', 'TS', 788, '2464461', 216, '216', 'Africa', 'Tunis', 'Africa/Tunis', 'Dinar', 'ar-TN,fr', 'Arabic (official, one of the languages of commerce), French (commerce), Berber (Tamazight)', 163610, '576', '3500000', '12840000', '1105000', '48380000000'),
(220, 'Turkey', 'TR', 'TUR', 'tr', 'TU', 792, '298795', 90, '90', 'Asia', 'Ankara', 'Europe/Istanbul', 'Lira', 'tr-TR,ku,diq,az,av', 'Turkish (official), Kurdish, other minority languages', 780580, '7093000', '27233000', '67680000', '13860000', '821800000000'),
(221, 'Turkmenistan', 'TM', 'TKM', 'tm', 'TX', 795, '1218197', 993, '993', 'Asia', 'Ashgabat', 'Asia/Ashgabat', 'Manat', 'tk,ru,uz', 'Turkmen (official) 72%, Russian 12%, Uzbek 9%, other 7%', 488100, '714', '80400', '3953000', '575000', '40560000000'),
(222, 'Turks and Caicos Islands', 'TC', 'TCA', 'tc', 'TK', 796, '3576916', 1, '1-649', 'North America', 'Cockburn Town', 'America/Grand_Turk', 'Dollar', 'en-TC', 'English (official)', 430, '73217', '', '', '', ''),
(223, 'Tuvalu', 'TV', 'TUV', 'tv', 'TV', 798, '2110297', 688, '688', 'Oceania', 'Funafuti', 'Pacific/Funafuti', 'Dollar', 'tvl,en,sm,gil', 'Tuvaluan (official), English (official), Samoan, Kiribati (on the island of Nui)', 26, '145158', '4200', '2800', '1450', '38000000'),
(224, 'U.S. Virgin Islands', 'VI', 'VIR', 'vi', 'VQ', 850, '4796775', 1, '1-340', 'North America', 'Charlotte Amalie', 'America/St_Thomas', 'Dollar', 'en-VI', 'English 74.7%, Spanish or Spanish Creole 16.8%, French or French Creole 6.6%, other 1.9% (2000 census)', 352, '4790', '30000', '80300', '75800', ''),
(225, 'Uganda', 'UG', 'UGA', 'ug', 'UG', 800, '226074', 256, '256', 'Africa', 'Kampala', 'Africa/Kampala', 'Shilling', 'en-UG,lg,sw,ar', 'English (official national language, taught in grade schools, used in courts of law and by most newspapers and some radio broadcasts), Ganda or Luganda (most widely used of the Niger-Congo languages, preferred for native language publications in the capital and may be taught in school), other Niger-Congo languages, Nilo-Saharan languages, Swahili, Arabic', 236040, '32683', '3200000', '16355000', '315000', '22600000000'),
(226, 'Ukraine', 'UA', 'UKR', 'ua', 'UP', 804, '690791', 380, '380', 'Europe', 'Kiev', 'Europe/Kiev', 'Hryvnia', 'uk,ru-UA,rom,pl,hu', 'Ukrainian (official) 67%, Russian (regional language) 24%, other (includes small Romanian-, Polish-, and Hungarian-speaking minorities) 9%', 603700, '2173000', '7770000', '59344000', '12182000', '175500000000'),
(227, 'United Arab Emirates', 'AE', 'ARE', 'ae', 'AE', 784, '290557', 971, '971', 'Asia', 'Abu Dhabi', 'Asia/Dubai', 'Dirham', 'ar-AE,fa,en,hi,ur', 'Arabic (official), Persian, English, Hindi, Urdu', 82880, '337804', '3449000', '13775000', '1967000', '390000000000'),
(228, 'United Kingdom', 'GB', 'GBR', 'uk', 'UK', 826, '2635167', 44, '44', 'Europe', 'London', 'Europe/London', 'Pound', 'en-GB,cy-GB,gd', 'English', 244820, '8107000', '51444000', '82109000', '33010000', '2490000000000'),
(229, 'United States', 'US', 'USA', 'us', 'US', 840, '6252001', 1, '1', 'North America', 'Washington', 'America/New_York', 'Dollar', 'en-US,es-US,haw,fr', 'English 82.1%, Spanish 10.7%, other Indo-European 3.8%, Asian and Pacific island 2.7%, other 0.7% (2000 census)', 9629091, '505000000', '245000000', '310000000', '139000000', '16720000000000'),
(230, 'Uruguay', 'UY', 'URY', 'uy', 'UY', 858, '3439705', 598, '598', 'South America', 'Montevideo', 'America/Montevideo', 'Peso', 'es-UY', 'Spanish (official), Portunol, Brazilero (Portuguese-Spanish mix on the Brazilian frontier)', 176220, '1036000', '1405000', '5000000', '1010000', '57110000000'),
(231, 'Uzbekistan', 'UZ', 'UZB', 'uz', 'UZ', 860, '1512440', 998, '998', 'Asia', 'Tashkent', 'Asia/Tashkent', 'Som', 'uz,ru,tg', 'Uzbek (official) 74.3%, Russian 14.2%, Tajik 4.4%, other 7.1%', 447400, '56075', '4689000', '20274000', '1963000', '55180000000'),
(232, 'Vanuatu', 'VU', 'VUT', 'vu', 'NH', 548, '2134431', 678, '678', 'Oceania', 'Port Vila', 'Pacific/Efate', 'Vatu', 'bi,en-VU,fr-VU', 'local languages (more than 100) 63.2%, Bislama (official; creole) 33.7%, English (official) 2%, French (official) 0.6%, other 0.5% (2009 est.)', 12200, '5655', '17000', '137000', '5800', '828000000'),
(233, 'Vatican', 'VA', 'VAT', 'va', 'VT', 336, '3164670', 39, '379', 'Europe', 'Vatican City', 'Europe/Vatican', 'Euro', 'la,it,fr', 'Latin, Italian, French', 0, '', '', '', '', ''),
(234, 'Venezuela', 'VE', 'VEN', 've', 'VE', 862, '3625428', 58, '58', 'South America', 'Caracas', 'America/Caracas', 'Bolivar', 'es-VE', 'Spanish (official), numerous indigenous dialects', 912050, '1016000', '8918000', '30520000', '7650000', '367500000000'),
(235, 'Vietnam', 'VN', 'VNM', 'vn', 'VM', 704, '1562822', 84, '84', 'Asia', 'Hanoi', 'Asia/Ho_Chi_Minh', 'Dong', 'vi,en,fr,zh,km', 'Vietnamese (official), English (increasingly favored as a second language), some French, Chinese, and Khmer, mountain area languages (Mon-Khmer and Malayo-Polynesian)', 329560, '189553', '23382000', '134066000', '10191000', '170000000000'),
(236, 'Wallis and Futuna', 'WF', 'WLF', 'wf', 'WF', 876, '4034749', 681, '681', 'Oceania', 'Mata Utu', 'Pacific/Wallis', 'Franc', 'wls,fud,fr-WF', 'Wallisian (indigenous Polynesian language) 58.9%, Futunian 30.1%, French (official) 10.8%, other 0.2% (2003 census)', 274, '2760', '1300', '', '', ''),
(237, 'Western Sahara', 'EH', 'ESH', 'eh', 'WI', 732, '2461445', 212, '212', 'Africa', 'El-Aaiun', 'Africa/El_Aaiun', 'Dirham', 'ar,mey', 'Standard Arabic (national), Hassaniya Arabic, Moroccan Arabic', 266000, '', '', '', '', ''),
(238, 'Yemen', 'YE', 'YEM', 'ye', 'YM', 887, '69543', 967, '967', 'Asia', 'Sanaa', 'Asia/Aden', 'Rial', 'ar-YE', 'Arabic (official)', 527970, '33206', '2349000', '13900000', '1100000', '43890000000'),
(239, 'Zambia', 'ZM', 'ZMB', 'zm', 'ZA', 894, '895949', 260, '260', 'Africa', 'Lusaka', 'Africa/Lusaka', 'Kwacha', 'en-ZM,bem,loz,lun,lue,ny,toi', 'Bembe 33.4%, Nyanja 14.7%, Tonga 11.4%, Lozi 5.5%, Chewa 4.5%, Nsenga 2.9%, Tumbuka 2.5%, Lunda (North Western) 1.9%, Kaonde 1.8%, Lala 1.8%, Lamba 1.8%, English (official) 1.7%, Luvale 1.5%, Mambwe 1.3%, Namwanga 1.2%, Lenje 1.1%, Bisa 1%, other 9.2%, unspecified 0.4%', 752614, '16571', '816200', '10525000', '82500', '22240000000'),
(240, 'Zimbabwe', 'ZW', 'ZWE', 'zw', 'ZI', 716, '878675', 263, '263', 'Africa', 'Harare', 'Africa/Harare', 'Dollar', 'en-ZW,sn,nr,nd', 'English (official), Shona, Sindebele (the language of the Ndebele, sometimes called Ndebele), numerous but minor tribal dialects', 390580, '30615', '1423000', '12614000', '301600', '10480000000');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_08_222839_create_permission_tables', 1),
(5, '2021_01_09_203331_add_delete_to_users_table', 1),
(6, '2024_09_29_132655_create_services_table', 2),
(7, '2024_10_15_044801_create_team_members_table', 3),
(8, '2024_10_16_065537_create_blogs_table', 4),
(9, '2024_11_05_034625_create_portfolios_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create role', 'web', '2024-03-04 22:10:01', '2024-03-04 22:10:01'),
(2, 'create permission', 'web', '2024-03-04 22:10:16', '2024-03-04 22:10:16'),
(3, 'create service', 'web', '2024-03-28 01:29:58', '2024-03-28 01:29:58'),
(4, 'manage post', 'web', '2024-03-31 01:29:41', '2024-03-31 01:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `project_client` text NOT NULL,
  `project_category` text NOT NULL,
  `cover_picture` varchar(255) DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery`)),
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `project_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `content`, `project_client`, `project_category`, `cover_picture`, `gallery`, `status`, `project_date`, `created_at`, `updated_at`) VALUES
(1, 'Project Title', 'project-title', '<p>Today is World Environment Day (WED), a day set aside by the United Nations Organization (UNO) to celebrate the environment and reflect on critical issues affecting it. Our university, with its focus on agriculture and the environment, joins the world in addressing the challenges faced by the natural environment.</p>\r\n<p>In 1972, the United Nations General Assembly established this annual observance, and in 1973, the world celebrated the first World Environment Day with the theme \"Only One Earth.\" This year\'s celebration is remarkable, marking 50 years of reflecting on environmental issues.</p>\r\n<hr>\r\n<h4>Recent Activities at UAES</h4>\r\n<p>On Friday, June 2, 2023, I flagged off a road campaign commemorating WED. Our staff and students visited areas with high human populations, including Mgbirichi, Obinze, and Owerri, delivering a clear message on the importance of protecting the environment.</p>\r\n<hr>\r\n<h4>Themes Through the Years</h4>\r\n<p>Between 2010 and 2022, World Environment Day themes have highlighted pressing environmental issues:</p>\r\n<ul>\r\n<li><strong>2010</strong>: \"Many Species: One Planet, One Future\"</li>\r\n<li><strong>2011</strong>: \"Forests: Nature at Your Service\"</li>\r\n<li><strong>2012</strong>: \"The Green Economy\"</li>\r\n<li><strong>2013</strong>: \"Think. Eat. Save\"</li>\r\n<li><strong>2014</strong>: \"International Year of Small Islands Developing States\"</li>\r\n<li><strong>2015</strong>: \"Seven Billion Dreams. One Planet. Consume with Care\"</li>\r\n<li><strong>2016</strong>: \"Go Wild for Life\"</li>\r\n<li><strong>2017</strong>: \"Connecting Nature to People\"</li>\r\n<li><strong>2018</strong>: \"Beat Plastic Pollution\"</li>\r\n<li><strong>2019</strong>: \"Beat Air Pollution\"</li>\r\n<li><strong>2020</strong>: \"Time for Nature\"</li>\r\n<li><strong>2021</strong>: \"Ecosystem Restoration\"</li>\r\n<li><strong>2022</strong>: \"Only One Earth\"</li>\r\n</ul>\r\n<hr>\r\n<h4>2023 Theme: \"Solutions to Plastic Pollution\"</h4>\r\n<p>This year, the theme addresses plastic pollution, a menace estimated to produce over 430 million tonnes of plastics annually, half of which is single-use. Approximately 19-23 million tonnes end up in water bodies each year. Plastic pollution disrupts ecosystems, affects livelihoods, food production, and security, and poses significant health risks, including cancer and hormonal disruptions.</p>\r\n<hr>\r\n<h4>Call to Action</h4>\r\n<p>We encourage everyone to:</p>\r\n<ol>\r\n<li>Avoid using single-use plastics.</li>\r\n<li>Recycle plastics to reduce environmental dumping.</li>\r\n<li>Carry reusable water bottles.</li>\r\n<li>Support food companies and restaurants that use paper packaging.</li>\r\n<li>Use trash bins in homes, offices, and vehicles for better waste management.</li>\r\n<li>Advocate for legal frameworks against plastic use.</li>\r\n<li>Support research into alternative packaging materials.</li>\r\n</ol>\r\n<hr>\r\n<h4>UAES Initiatives</h4>\r\n<p>In the past months, we have undertaken:</p>\r\n<ul>\r\n<li>An aggressive fruit-bearing tree planting project as part of a green revolution.</li>\r\n<li>Encouraging staff to donate trees to sustain our environment.</li>\r\n<li>Maintaining a clean, green environment free from plastic waste.</li>\r\n</ul>\r\n<p>These efforts demonstrate our commitment to raising awareness about environmental pollution&mdash;whether air, water, or plastic&mdash;and preserving the natural environment through absolute and concerted efforts.</p>\r\n<p>Let us rise together and take action against plastic pollution.</p>\r\n<hr>\r\n<p><strong>Knowledge, Excellence, and Innovation</strong></p>', 'UAES', 'Environment', 'cover_pictures/ERG5Zi6NvWm0ODtPPW0MG60GxXhb6pZTlnig6kq8.png', '\"[\\\"gallery_images\\\\/KL1Y4hvp1oVimQi17jS6qo4oOO6mDtoJLGeHpBLh.jpg\\\",\\\"gallery_images\\\\/3HbbmVo5LoQxeGJFzaayvnGy4KKxrg3i92Odu3X6.jpg\\\",\\\"gallery_images\\\\/z7hNzO8PHjE9TCinbAtwHGBqtmSAMkr66Fp2KAge.jpg\\\",\\\"gallery_images\\\\/St7usRMjhDmKyB2PKb0zeudOLE3eND6cXdc57ryZ.jpg\\\"]\"', 'published', '2025-01-08', '2025-01-08 09:07:18', '2025-01-08 14:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-03-04 22:08:43', '2024-03-04 22:08:43'),
(2, 'User', 'web', '2024-03-28 01:29:34', '2024-03-28 01:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `content`, `type`, `image`, `created_at`, `updated_at`) VALUES
(3, 'OPERATION AND MAINTENANCE', 'operation-and-maintenance', '<p>Chaplin Rowan Ltd offers comprehensive Operations and Maintenance services across the full asset lifecycle from construction and commissioning to decommissioning and site rehabilitation. Our expertise spans planning, preventative and predictive maintenance, integrated supply, and professional site management ensuring safe, reliable, and efficient operations.</p><p><b>Our experienced team delivers high-quality solutions in:</b></p><ul><li>Facility Maintenance &amp; Rehabilitation</li><li>Electrical Troubleshooting &amp; Repairs</li><li>HVAC System Installation &amp; Maintenance</li><li>Corrosion Control &amp; Cathodic Protection</li><li>Pipeline Leak Repair &amp; Inspection</li><li>Grit and Hydro Blasting</li><li>Non-Destructive Testing (NDT)</li><li>Painting, Coating &amp; Protective Finishes</li><li>Abrasive Blasting Services</li><li>Industrial Support: Scaffolding, Insulation, Fireproofing</li></ul>', 'service', 'images/services/1753997728_maintenance.png', '2025-07-31 20:35:28', '2025-08-02 08:16:41'),
(4, 'PROCUREMENT & SUPPLY MANAGEMENT', 'procurement-supply-management', '<p data-start=\"102\" data-end=\"650\" style=\"text-align: justify; \"><strong data-start=\"102\" data-end=\"136\">Chaplin Rowan Services Limited</strong> provides a comprehensive range of high-quality procurement and supply chain services tailored to meet the evolving needs of the oil and gas industry. Our operations are built on speed, reliability, and cost efficiency ensuring that every client receives timely and dependable deliveries. With strong relationships across a network of Original Equipment Manufacturers (OEMs), authorized distributors, trusted inspection agencies, and logistics partners, we guarantee seamless coordination and on-schedule supply.</p><p data-start=\"652\" data-end=\"695\"><strong data-start=\"652\" data-end=\"695\">Our procurement services offer clients:</strong></p><ul data-start=\"697\" data-end=\"839\">\r\n<li data-start=\"697\" data-end=\"713\">\r\n<p data-start=\"699\" data-end=\"713\">Reduced risk</p>\r\n</li>\r\n<li data-start=\"714\" data-end=\"741\">\r\n<p data-start=\"716\" data-end=\"741\">Lower operational costs</p>\r\n</li>\r\n<li data-start=\"742\" data-end=\"771\">\r\n<p data-start=\"744\" data-end=\"771\">Enhanced customer service</p>\r\n</li>\r\n<li data-start=\"772\" data-end=\"795\">\r\n<p data-start=\"774\" data-end=\"795\">Value-added support</p>\r\n</li>\r\n<li data-start=\"796\" data-end=\"839\">\r\n<p data-start=\"798\" data-end=\"839\">Improved efficiency and timely delivery</p>\r\n</li>\r\n</ul><p data-start=\"841\" data-end=\"885\"><strong data-start=\"841\" data-end=\"885\">We specialize in sourcing and supplying:</strong></p><ul data-start=\"887\" data-end=\"1207\">\r\n<li data-start=\"887\" data-end=\"917\">\r\n<p data-start=\"889\" data-end=\"917\">Marine Hoses and Equipment</p>\r\n</li>\r\n<li data-start=\"918\" data-end=\"949\">\r\n<p data-start=\"920\" data-end=\"949\">Valves, Pumps &amp; Compressors</p>\r\n</li>\r\n<li data-start=\"950\" data-end=\"977\">\r\n<p data-start=\"952\" data-end=\"977\">Fire &amp; Safety Equipment</p>\r\n</li>\r\n<li data-start=\"978\" data-end=\"1006\">\r\n<p data-start=\"980\" data-end=\"1006\">OCTGs (Casings &amp; Tubing)</p>\r\n</li>\r\n<li data-start=\"1007\" data-end=\"1041\">\r\n<p data-start=\"1009\" data-end=\"1041\">Pipes, Tubes, Hoses &amp; Fittings</p>\r\n</li>\r\n<li data-start=\"1042\" data-end=\"1088\">\r\n<p data-start=\"1044\" data-end=\"1088\">Cargo Handling Units and Container Baskets</p>\r\n</li>\r\n<li data-start=\"1089\" data-end=\"1126\">\r\n<p data-start=\"1091\" data-end=\"1126\">Ropes, Shackles, Hawsers &amp; Chains</p>\r\n</li>\r\n<li data-start=\"1127\" data-end=\"1161\">\r\n<p data-start=\"1129\" data-end=\"1161\">Heavy and Light Duty Equipment</p>\r\n</li>\r\n<li data-start=\"1162\" data-end=\"1207\">\r\n<p data-start=\"1164\" data-end=\"1207\">Pipeline Construction &amp; Maintenance Tools</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1209\" data-end=\"1501\"><strong data-start=\"1209\" data-end=\"1233\">Materials Management</strong></p><p data-start=\"1209\" data-end=\"1501\"><span data-start=\"1209\" data-end=\"1233\">We ensure that all equipment and materials are properly identified, labeled, handled, and stored to preserve their integrity throughout the supply chain. Our goal is to help clients minimize material costs through strategic sourcing and efficient logistics systems.</span></p><p></p>', 'service', 'images/services/1754126479_procument-and-supply-chain_818x505.jpg', '2025-08-01 17:26:02', '2025-08-04 02:32:54'),
(5, 'FABRICATION SERVICES', 'fabrication-services', '<p data-start=\"95\" data-end=\"544\">We provide a comprehensive range of construction and fabrication services tailored for both onshore and offshore projects, including production facilities. Our expertise spans welding, structural repairs, and integrated engineering solutions, all delivered by a team of highly skilled and experienced professionals. Using field-proven equipment and best practices, we ensure every oilfield project is executed with precision, safety, and efficiency.</p><p data-start=\"95\" data-end=\"544\"><br></p><p data-start=\"546\" data-end=\"588\"><strong data-start=\"546\" data-end=\"588\">Our core fabrication services include:</strong></p><ul data-start=\"589\" data-end=\"1082\">\r\n<li data-start=\"589\" data-end=\"604\">\r\n<p data-start=\"591\" data-end=\"604\">Civil Works</p>\r\n</li>\r\n<li data-start=\"605\" data-end=\"630\">\r\n<p data-start=\"607\" data-end=\"630\">Flow Station Overhaul</p>\r\n</li>\r\n<li data-start=\"631\" data-end=\"672\">\r\n<p data-start=\"633\" data-end=\"672\">Equipment &amp; Mechanical Valve Overhaul</p>\r\n</li>\r\n<li data-start=\"673\" data-end=\"698\">\r\n<p data-start=\"675\" data-end=\"698\">Blasting and Painting</p>\r\n</li>\r\n<li data-start=\"699\" data-end=\"737\">\r\n<p data-start=\"701\" data-end=\"737\">Pipeline and Manifold Construction</p>\r\n</li>\r\n<li data-start=\"738\" data-end=\"776\">\r\n<p data-start=\"740\" data-end=\"776\">Facility Modification and Upgrades</p>\r\n</li>\r\n<li data-start=\"777\" data-end=\"824\">\r\n<p data-start=\"779\" data-end=\"824\">Process Piping Fabrication and Installation</p>\r\n</li>\r\n<li data-start=\"825\" data-end=\"874\">\r\n<p data-start=\"827\" data-end=\"874\">Structural Steel Fabrication and Installation</p>\r\n</li>\r\n<li data-start=\"875\" data-end=\"943\">\r\n<p data-start=\"877\" data-end=\"943\">Specialized Welding Systems (e.g., Cladding, Structural Repairs)</p>\r\n</li>\r\n<li data-start=\"944\" data-end=\"965\">\r\n<p data-start=\"946\" data-end=\"965\">Field Supervision</p>\r\n</li>\r\n<li data-start=\"966\" data-end=\"995\">\r\n<p data-start=\"968\" data-end=\"995\">Cost and Schedule Control</p>\r\n</li>\r\n<li data-start=\"996\" data-end=\"1043\">\r\n<p data-start=\"998\" data-end=\"1043\">Quality Assurance &amp; Quality Control (QA/QC)</p>\r\n</li>\r\n<li data-start=\"1044\" data-end=\"1082\">\r\n<p data-start=\"1046\" data-end=\"1082\">Material Inspection and Management</p></li></ul>', 'service', 'images/services/1754123146_fabrication_818x546.jpg', '2025-08-02 07:25:46', '2025-08-02 07:27:01'),
(6, 'DRILLING AND PRODUCTION CHEMICALS', 'drilling-and-production-chemicals', '<p data-start=\"202\" data-end=\"468\">We provide a reliable supply of high-quality chemicals essential for diverse drilling, production, and equipment maintenance operations. Our offerings cover a wide spectrum of engineering, testing, cleaning, and treatment needs. This includes, but is not limited to:</p><ul data-start=\"470\" data-end=\"657\">\r\n<li data-start=\"470\" data-end=\"507\">\r\n<p data-start=\"472\" data-end=\"507\">Drilling and production additives</p>\r\n</li>\r\n<li data-start=\"508\" data-end=\"539\">\r\n<p data-start=\"510\" data-end=\"539\">Cementing and mud chemicals</p>\r\n</li>\r\n<li data-start=\"540\" data-end=\"588\">\r\n<p data-start=\"542\" data-end=\"588\">Equipment cleaning and maintenance solutions</p>\r\n</li>\r\n<li data-start=\"589\" data-end=\"623\">\r\n<p data-start=\"591\" data-end=\"623\">Specialized treatment products</p>\r\n</li>\r\n<li data-start=\"624\" data-end=\"657\">\r\n<p data-start=\"626\" data-end=\"657\">Testing and diagnostic agents</p>\r\n</li>\r\n</ul><p>\r\n\r\n</p><p data-start=\"659\" data-end=\"876\">Backed by strong vendor partnerships and quality assurance standards, our chemical solutions are tailored to enhance operational efficiency, safety, and regulatory compliance in both onshore and offshore environments.</p>', 'service', 'images/services/1754123626_drilling-production-chemicals_818x546.jpg', '2025-08-02 07:33:46', '2025-08-02 07:33:46'),
(7, 'PERSONAL PROTECTIVE EQUIPMENT(PPE)', 'personal-protective-equipmentppe', '<h3 data-start=\"118\" data-end=\"161\"><span style=\"font-size: 1rem;\">We supply high-quality Personal Protective Equipment (PPE) designed to ensure the safety and wellbeing of personnel across various sectors including oil and gas, energy, construction, manufacturing, maritime, telecommunications, and civil works. Our PPE solutions help organizations maintain safe working environments while meeting regulatory standards.</span></h3><p data-start=\"518\" data-end=\"598\">Our product range includes protection against common workplace hazards, such as:</p><ul data-start=\"600\" data-end=\"1540\">\r\n<li data-start=\"600\" data-end=\"720\">\r\n<p data-start=\"602\" data-end=\"720\"><strong data-start=\"602\" data-end=\"621\">Head Protection</strong><br data-start=\"621\" data-end=\"624\">\r\nDurable safety helmets, bump caps, and accessories for industries with high head-injury risks.</p>\r\n</li>\r\n<li data-start=\"722\" data-end=\"892\">\r\n<p data-start=\"724\" data-end=\"892\"><strong data-start=\"724\" data-end=\"751\">Eye and Face Protection</strong><br data-start=\"751\" data-end=\"754\">\r\nSafety glasses, goggles, visors, and face shields to safeguard against chemical splashes, flying particles, and impact-related injuries.</p>\r\n</li>\r\n<li data-start=\"894\" data-end=\"1037\">\r\n<p data-start=\"896\" data-end=\"1037\"><strong data-start=\"896\" data-end=\"915\">Hand Protection</strong><br data-start=\"915\" data-end=\"918\">\r\nIndustrial gloves, arm guards, and sleeves designed to protect against abrasions, cuts, burns, and chemical exposure.</p>\r\n</li>\r\n<li data-start=\"1039\" data-end=\"1176\">\r\n<p data-start=\"1041\" data-end=\"1176\"><strong data-start=\"1041\" data-end=\"1060\">Foot Protection</strong><br data-start=\"1060\" data-end=\"1063\">\r\nSteel-toe boots, anti-slip shoes, and other safety footwear to prevent foot injuries in hazardous environments.</p>\r\n</li>\r\n<li data-start=\"1178\" data-end=\"1274\">\r\n<p data-start=\"1180\" data-end=\"1274\"><strong data-start=\"1180\" data-end=\"1202\">Hearing Protection</strong><br data-start=\"1202\" data-end=\"1205\">\r\nEarplugs and earmuffs for environments with excessive noise levels.</p>\r\n</li>\r\n<li data-start=\"1276\" data-end=\"1396\">\r\n<p data-start=\"1278\" data-end=\"1396\"><strong data-start=\"1278\" data-end=\"1304\">Respiratory Protection</strong><br data-start=\"1304\" data-end=\"1307\">\r\nMasks, respirators, and filters for airborne particles, fumes, and hazardous chemicals.</p>\r\n</li>\r\n<li data-start=\"1398\" data-end=\"1540\">\r\n<p data-start=\"1400\" data-end=\"1540\"><strong data-start=\"1400\" data-end=\"1429\">Fall and Spill Protection</strong><br data-start=\"1429\" data-end=\"1432\">\r\nFall arrest systems and spill control kits to manage work-at-height safety and accidental chemical spills.</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1542\" data-end=\"1731\">We maintain partnerships with reputable PPE manufacturers across the globe, enabling us to offer cost-effective products with quick delivery times ensuring that safety is never compromised.</p>', 'service', 'images/services/1754123919_protective-personnel-equipment_818x546.jpg', '2025-08-02 07:38:39', '2025-08-02 07:39:21'),
(8, 'CONSULTANCY AND TRAINING', 'consultancy-and-training', '<h3 data-start=\"106\" data-end=\"138\"><span style=\"font-size: 1rem;\">With deep industry knowledge and a wealth of experience, we offer tailored consultancy and training solutions that enhance organizational performance, streamline operations, and build internal capacity across multiple sectors.</span></h3><h4 data-start=\"368\" data-end=\"420\"><strong data-start=\"373\" data-end=\"420\">Management System Certification Consultancy</strong></h4><p data-start=\"421\" data-end=\"733\">We specialize in the design and implementation of globally recognized management systems aligned with international standards. These systems serve as strategic tools to address modern business challenges, ensuring quality, efficiency, and compliance. We support organizations in achieving certifications such as:</p><ul data-start=\"735\" data-end=\"1069\">\r\n<li data-start=\"735\" data-end=\"781\">\r\n<p data-start=\"737\" data-end=\"781\">ISO 9001:2015 – Quality Management Systems</p>\r\n</li>\r\n<li data-start=\"782\" data-end=\"826\">\r\n<p data-start=\"784\" data-end=\"826\">ISO 45001 – Occupational Health &amp; Safety</p>\r\n</li>\r\n<li data-start=\"827\" data-end=\"867\">\r\n<p data-start=\"829\" data-end=\"867\">ISO 14001 – Environmental Management</p>\r\n</li>\r\n<li data-start=\"868\" data-end=\"901\">\r\n<p data-start=\"870\" data-end=\"901\">ISO 50001 – Energy Management</p>\r\n</li>\r\n<li data-start=\"902\" data-end=\"946\">\r\n<p data-start=\"904\" data-end=\"946\">ISO 20121 – Sustainable Event Management</p>\r\n</li>\r\n<li data-start=\"947\" data-end=\"983\">\r\n<p data-start=\"949\" data-end=\"983\">ISO 27001 – Information Security</p>\r\n</li>\r\n<li data-start=\"984\" data-end=\"1022\">\r\n<p data-start=\"986\" data-end=\"1022\">ISO 22000 – Food Safety Management</p>\r\n</li>\r\n<li data-start=\"1023\" data-end=\"1069\">\r\n<p data-start=\"1025\" data-end=\"1069\">ISO 22301 – Business Continuity Management</p>\r\n</li>\r\n</ul><p data-start=\"1071\" data-end=\"1194\">Our approach is collaborative—we work closely with clients to design systems that are practical, scalable, and sustainable.</p><h4 data-start=\"1196\" data-end=\"1249\"><strong data-start=\"1201\" data-end=\"1249\">Business Support and Technical Documentation</strong></h4><p data-start=\"1250\" data-end=\"1455\">We help organizations break into new markets and expand existing opportunities by providing expert support for vendor registration, compliance management, and technical documentation. Our services include:</p><ul data-start=\"1457\" data-end=\"1649\">\r\n<li data-start=\"1457\" data-end=\"1547\">\r\n<p data-start=\"1459\" data-end=\"1547\">Pre-qualification and bidding documentation (PQQs, EOIs, RFIs, RFPs, ITTs, SSQs, etc.)</p>\r\n</li>\r\n<li data-start=\"1548\" data-end=\"1581\">\r\n<p data-start=\"1550\" data-end=\"1581\">Regulatory compliance support</p>\r\n</li>\r\n<li data-start=\"1582\" data-end=\"1616\">\r\n<p data-start=\"1584\" data-end=\"1616\">License and permit acquisition</p>\r\n</li>\r\n<li data-start=\"1617\" data-end=\"1649\">\r\n<p data-start=\"1619\" data-end=\"1649\">Proposal and pitch development</p>\r\n</li>\r\n</ul><p data-start=\"1651\" data-end=\"1819\">Through our strong network and proven expertise, we help clients turn strategic opportunities into tangible wins, especially in competitive industries like oil and gas.</p><h4 data-start=\"1821\" data-end=\"1847\"><strong data-start=\"1826\" data-end=\"1847\">Training Services</strong></h4><p data-start=\"1848\" data-end=\"2080\">Our training programs are designed to equip organizations—and especially their business development teams—with the skills and insights required to successfully bid for contracts in both public and private sectors. Participants gain:</p><ul data-start=\"2082\" data-end=\"2355\">\r\n<li data-start=\"2082\" data-end=\"2139\">\r\n<p data-start=\"2084\" data-end=\"2139\">A comprehensive understanding of tendering procedures</p>\r\n</li>\r\n<li data-start=\"2140\" data-end=\"2185\">\r\n<p data-start=\"2142\" data-end=\"2185\">Techniques for drafting winning proposals</p>\r\n</li>\r\n<li data-start=\"2186\" data-end=\"2254\">\r\n<p data-start=\"2188\" data-end=\"2254\">Insights into bid evaluations, shortlisting, and contract awards</p>\r\n</li>\r\n<li data-start=\"2255\" data-end=\"2355\">\r\n<p data-start=\"2257\" data-end=\"2355\">Tools for ensuring compliance, transparency, and accountability throughout the procurement cycle</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2357\" data-end=\"2509\">By empowering teams with practical knowledge, we help organizations boost success rates, win high-value contracts, and create long-term strategic value.</p>', 'service', 'images/services/1754124317_consultancy_818x546.jpg', '2025-08-02 07:45:17', '2025-08-02 07:45:17'),
(9, 'HEALTH, SAFETY AND ENVIRONMENT(HSE)', 'health-safety-and-environmenthse', '<div style=\"text-align: justify; \">At Chaplin Rowan Services Limited, we are fully committed to upholding the highest standards of occupational health, safety, and environmental protection across all our operations. The safety of our personnel and the preservation of the environment are core priorities that drive our mission to deliver exceptional quality in every project and service.</div><div style=\"text-align: justify; \"><br></div><div style=\"text-align: justify;\">We have established robust HSE management systems that ensure the continuous identification, assessment, and control of hazards and risks associated with our activities. Our approach is proactive and preventive focusing on minimizing incidents, ensuring regulatory compliance, and fostering a strong safety culture.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">In alignment with both local and international standards, we have implemented clear policies and procedures that guide all our operations. These policies ensure that every task is carried out responsibly, sustainably, and in full compliance with industry best practices and statutory regulations.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \">Our HSE commitment is not just a requirement it is a value we uphold to safeguard lives, protect the environment, and enhance the long-term sustainability of our business and those of our partners.</div>', 'policy', 'images/services/1754124608_health-safety-environment_818x546.jpg', '2025-08-02 07:50:08', '2025-08-02 07:55:04'),
(10, 'QUALITY ASSURANCE POLICY', 'quality-assurance-policy', '<p data-start=\"134\" data-end=\"452\" style=\"text-align: justify; \">At Chaplin Rowan Services Limited, we are dedicated to delivering professional products and services that consistently add value to our clients. Our commitment to quality is embedded in every aspect of our operations and is central to achieving customer satisfaction, regulatory compliance, and continuous improvement.</p><p data-start=\"134\" data-end=\"452\" style=\"text-align: justify; \"><br></p>\r\n<p data-start=\"454\" data-end=\"684\" style=\"text-align: justify;\">We uphold the implementation of internationally recognized quality standards across our processes, ensuring that our services not only meet but exceed client expectations while fulfilling all statutory and regulatory requirements.</p>\r\n<p data-start=\"686\" data-end=\"959\" style=\"text-align: justify;\">To maintain and enhance customer satisfaction, we continuously monitor, review, and update our quality objectives to ensure their ongoing relevance and effectiveness. Our Quality Management System is structured to promote a culture of excellence and continuous improvement.</p><p data-start=\"686\" data-end=\"959\" style=\"text-align: justify;\"><br></p>\r\n<p data-start=\"961\" data-end=\"1143\" data-is-last-node=\"\" data-is-only-node=\"\" style=\"text-align: justify; \">Management is fully committed to ensuring this Quality Policy is clearly communicated, regularly reviewed for relevance, and well understood by all employees across the organization.</p>', 'policy', 'images/services/1754125167_quality-assurance_818x546.jpg', '2025-08-02 07:59:27', '2025-08-02 08:00:18'),
(11, 'CORPORATE POLICY', 'corporate-policy', '<p data-start=\"118\" data-end=\"535\">At Chaplin Rowan Services Limited, we are committed to upholding the highest standards of occupational health, safety, and environmental protection across all areas of our operations. The well-being of our personnel, the integrity of our work environments, and the preservation of the ecosystems in which we operate are fundamental to our corporate values and the successful delivery of quality projects and services.</p><p data-start=\"118\" data-end=\"535\"><br></p>\r\n<p data-start=\"537\" data-end=\"796\">Our Health, Safety, and Environment (HSE) framework includes proactive processes for the continuous identification, assessment, and control of operational risks and hazards. These measures ensure a safe and sustainable workplace for our teams and communities.</p><p data-start=\"537\" data-end=\"796\"><br></p>\r\n<p data-start=\"798\" data-end=\"1091\" data-is-last-node=\"\" data-is-only-node=\"\">We align all business activities with applicable regulatory requirements and international best practices. Our corporate policies are regularly reviewed and improved to reflect evolving industry standards, reinforce compliance, and support our commitment to responsible and ethical operations.</p>', 'policy', 'images/services/1754126497_cooperate-policy_1_818x505.jpg', '2025-08-02 08:06:05', '2025-08-02 08:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_title` varchar(191) DEFAULT NULL,
  `training_title` varchar(255) DEFAULT NULL,
  `website_logo_dark` text DEFAULT NULL,
  `website_logo_light` text DEFAULT NULL,
  `website_logo_small` text DEFAULT NULL,
  `website_favicon` varchar(191) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `training_cost` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hotline` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `who_we_are` text DEFAULT NULL,
  `our_vision` text NOT NULL,
  `telegram_group` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `training_title`, `website_logo_dark`, `website_logo_light`, `website_logo_small`, `website_favicon`, `meta_title`, `meta_description`, `meta_tag`, `currency_id`, `address`, `phone`, `email`, `facebook`, `twitter`, `linkedin`, `instagram`, `github`, `training_cost`, `created_at`, `updated_at`, `hotline`, `about`, `who_we_are`, `our_vision`, `telegram_group`) VALUES
(1, 'Chaplin Rowan Services Limited', 'Palpress Media', '688d07b240538-logo.png', '6884ebdc6db9a-logo.png', '', '6884ee8938b8d-favicon.png', 'Reliable Support Services for Oil & Industrial Sectors', 'Chaplin Rowan offers dependable and cost-effective support services for Oil & Gas, Manufacturing, Power, Telecom, Infrastructure & Agro industries.', 'Oil and Gas support services  Industrial equipment sourcing Nigeria  Manufacturing logistics support  Power sector technical services  Telecom project management  PPE and chemical suppliers Nigeria  Facility operation and maintenance  Industrial fabrication services  Agro industry technical consultancy  Cost-effective supply chain solutions', 1, 'Plot G81 Road 2, VGC, Lekki Epe Exp. Way,Lagos', '09132099979', 'info@chaplinrowanltd.com', 'https://www.facebook.com/', 'www.twitter.com', 'https://www.linkedin.com/in/', 'https://www.instagram.com/', 'https://github.com/', 0, '2023-12-14 09:14:41', '2025-08-09 01:13:01', NULL, 'Chaplin Rowan Services Limited is a company with focus on providing dependable and cost￾effective support services to the Oil and Gas, Manufacturing, Power, Telecommunications, Infrastructure and Agro Industries. We offer a full suite of equipment sourcing and supply chain management, materials management, facility operation and maintenance, fabrication, PPE and chemicals supply, business technical support and consultancy.\r\n\r\nWe utilize latest industry standard equipment and processes in managing projects.\r\n\r\nWe are a customer oriented organization. We consider the satisfaction of our clients as top priority and offer services geared towards reduced costs, reliability, and timeliness in our service delivery, under the safest working environments. We believe in our efforts to make significant strides and be the service provider of choice to our clientele by offering satisfactory services in all our operations.\r\n\r\nAt Chaplin Rowan Services Limited, we maintain a policy of creating a conducive environment to attract the best the best hands, qualified and motivated staff for optimum performance enhancement.', 'Chaplin Rowan Services Limited is a company with focus on providing dependable and cost￾effective support services to the Oil and Gas, Manufacturing, Power, Telecommunications, Infrastructure and Agro Industries. We offer a full suite of equipment sourcing and supply chain management, materials management, facility operation and maintenance, fabrication, PPE and chemicals supply, business technical support and consultancy.\r\n\r\nWe utilize latest industry standard equipment and processes in managing projects.\r\n\r\nWe are a customer oriented organization. We consider the satisfaction of our clients as top priority and offer services geared towards reduced costs, reliability, and timeliness in our service delivery, under the safest working environments. We believe in our efforts to make significant strides and be the service provider of choice to our clientele by offering satisfactory services in all our operations.\r\n\r\nAt Chaplin Rowan Services Limited, we maintain a policy of creating a conducive environment to attract the best the best hands, qualified and motivated staff for optimum performance enhancement.', 'Chaplin Rowan Services Limited is a company with focus on providing dependable and cost￾effective support services to the Oil and Gas, Manufacturing, Power, Telecommunications, Infrastructure and Agro Industries. We offer a full suite of equipment sourcing and supply chain management, materials management, facility operation and maintenance, fabrication, PPE and chemicals supply, business technical support and consultancy.\r\n\r\nWe utilize latest industry standard equipment and processes in managing projects.\r\n\r\nWe are a customer oriented organization. We consider the satisfaction of our clients as top priority and offer services geared towards reduced costs, reliability, and timeliness in our service delivery, under the safest working environments. We believe in our efforts to make significant strides and be the service provider of choice to our clientele by offering satisfactory services in all our operations.\r\n\r\nAt Chaplin Rowan Services Limited, we maintain a policy of creating a conducive environment to attract the best the best hands, qualified and motivated staff for optimum performance enhancement.', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) NOT NULL,
  `header1` varchar(255) NOT NULL,
  `header2` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `picture`, `header1`, `header2`, `status`, `created_at`, `updated_at`) VALUES
(1, '1753996607.jpg', 'Strategic Consulting', 'Delivering insight driven consulting services tailored to the energy and engineering sectors. We empower organizations to optimize operations, reduce costs, and maximize value.', 1, '2025-07-25 16:20:44', '2025-07-31 20:20:36'),
(2, '1753996815.jpg', 'Procurement & Supply', 'We simplify and strengthen the procurement process with efficient, cost-effective supply chain solutions for specialized equipment, chemicals, and engineering materials.', 1, '2025-07-31 20:20:15', '2025-08-04 02:34:36'),
(3, '1753996883.png', 'Chemical Solutions for Energy Operations', 'We supply high-performance drilling and production chemicals that enhance oilfield productivity, reduce equipment wear, and meet strict industry standards.', 1, '2025-07-31 20:21:23', '2025-07-31 20:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `portfolio` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `fname`, `lname`, `country`, `username`, `id_card`, `email_verified_at`, `password`, `phone`, `photo`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Admin', 'admin@gmail.com', '', '', '', '', '', NULL, '$2y$10$1wU3UNPGVM4Wcyh.LftTQ.FPoXis0Hzzq3bsPIIJUq.7hXfZ5wvta', '08067407355', 'avatar.jpg', NULL, '2024-03-04 22:11:12', '2024-04-08 16:08:18', NULL),
(11, 'Leonard Benson', 'elemson014@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$g2fYh9A.B2JKutizvuiPeueQ2oEsLy9sG3KARB.5BpjKBkexr2Ur.', NULL, 'avatar.jpg', NULL, '2024-11-15 03:59:51', '2024-11-15 03:59:51', NULL),
(12, 'Elemson Ifeanyi Eberechukwu', 'ielemsons@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R38bYRkXa67XuNUFuy/KHeXjjLSYrsvTfM7B20gZjeVYVJzp/K/2O', NULL, 'avatar.jpg', NULL, '2025-01-08 08:59:40', '2025-01-08 08:59:40', NULL),
(13, 'adminxp', 'adminxp@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xZjGqtTDTtAc1GFH7N0iYu0BljuTyv78GHlbC9dLiAhfAXVjQaGq.', NULL, 'avatar.jpg', NULL, '2025-09-16 10:14:57', '2025-09-16 10:14:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `usd` varchar(255) NOT NULL,
  `btc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
