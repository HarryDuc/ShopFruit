-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 22, 2025 lúc 11:16 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Trái cây', 'trai-cay', 'bands/01JJ3T5V3E2SCHTY3PCPDPD0PT.jpg', '1', '2025-01-20 20:40:06', '2025-01-20 23:53:09'),
(2, 'Set Giỏ Trái Cây', 'set-gio-trai-cay', 'bands/01JJ3T1JDVG81HKPBKHJWC6EQH.jpg', '1', '2025-01-20 23:50:49', '2025-01-20 23:51:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Giàu Vitamin C ', 'vitamin-c', 'categories/01JJ3TBTKQHBMAPJTGG0XWV53Q.jpg', 1, '2025-01-20 23:56:25', '2025-01-21 02:44:55'),
(3, 'Giàu Chất Xơ', 'giau-chat-xo', 'categories/01JJ443GQZ6PPECXQHEMK6RC6B.jpg', 1, '2025-01-21 02:46:38', '2025-01-21 02:46:38'),
(4, 'Giàu Đường Tự Nhiên ', 'giau-duong-tu-nhien', 'categories/01JJ446PK9844R5QQR4TZAMVYN.jpg', 1, '2025-01-21 02:48:23', '2025-01-21 02:48:23'),
(5, ' Ít Calo Và Hỗ Trợ Giảm Cân', 'it-calo-va-ho-tro-giam-can', 'categories/01JJ448T9G0TTFM9605CC5EHTV.jpg', 1, '2025-01-21 02:49:32', '2025-01-21 02:49:32'),
(6, 'Giàu Nước', 'giau-nuoc', 'categories/01JJ44CGN4N2KKRWCMZSS41XC1.png', 1, '2025-01-21 02:51:33', '2025-01-21 02:51:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_14_015549_create_categories_table', 1),
(6, '2025_01_14_015632_create_brands_table', 1),
(7, '2025_01_14_015640_create_products_table', 1),
(8, '2025_01_14_015657_create_orders_table', 1),
(9, '2025_01_14_015728_create_order_items_table', 1),
(10, '2025_01_14_015739_create_addresses_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','processing','shipped','delivered','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_amount` decimal(10,2) DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `unit_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `images`, `description`, `price`, `is_active`, `is_featured`, `in_stock`, `on_sale`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'Ổi ', 'oi', '[\"products/01JJ3VCP59YV4V45W66YHZTDZ4.jpg\", \"products/01JJ3VCP5Q503Y6SP89XRRXNPM.jpg\", \"products/01JJ3VCP6275AD8YHZAVYBPS6J.jpg\", \"products/01JJ3VCP6E5YA1TBX3KTCSBQ4Z.jpg\"]', '**Giá trị dinh dưỡng**\n```\n```\nỔi là loại trái cây giàu dinh dưỡng, mang lại nhiều lợi ích cho sức khỏe:\n\n* Vitamin C: Lượng vitamin C trong ổi cao gấp 4 lần so với cam, giúp tăng cường hệ miễn dịch.\n* Chất xơ: Hỗ trợ hệ tiêu hóa, giảm táo bón và kiểm soát cân nặng.\n* Chất chống oxy hóa: Giúp bảo vệ cơ thể khỏi tác động của các gốc tự do, ngăn ngừa lão hóa và bệnh tật.\n* Các khoáng chất: Bao gồm kali, magiê, và sắt, tốt cho tim mạch và cơ bắp.\n```\n```\n**Lợi ích sức khỏe**\n* Tăng cường miễn dịch: Vitamin C trong ổi giúp cơ thể chống lại bệnh tật.\n* Tốt cho tiêu hóa: Chất xơ trong ổi giúp cải thiện hệ tiêu hóa, giảm nguy cơ táo bón.\n* Hỗ trợ giảm cân: Ổi ít calo, giàu chất xơ, tạo cảm giác no lâu, phù hợp với chế độ ăn kiêng.\n* Tốt cho da: Chất chống oxy hóa trong ổi giúp da sáng mịn, giảm mụn và ngăn ngừa lão hóa.', 23300.00, 1, 0, 1, 1, '2025-01-21 00:14:22', '2025-01-21 02:15:20'),
(4, 2, 1, 'Đu đủ vàng', 'du-du-vang-trai', '[\"products/01JJ41B4QZFSS7Q7H6D2HKPR9C.jpg\", \"products/01JJ41B4R31P7RVK7EH1D8R3HW.jpg\", \"products/01JJ41B4R5Z8ME9Y2GDHJ084WY.jpg\", \"products/01JJ41B4R7DC0HPFHB6A67CR6V.jpg\"]', '**Giá trị dinh dưỡng của đu đủ**\nĐu đủ là loại trái cây giàu dinh dưỡng, có nhiều lợi ích cho sức khỏe:\n\nVitamin A: Rất tốt cho mắt, giúp cải thiện thị lực và ngăn ngừa các bệnh về mắt.\nVitamin C: Giúp tăng cường hệ miễn dịch và chống lão hóa.\nChất xơ: Hỗ trợ tiêu hóa và giảm cholesterol xấu.\nChất chống oxy hóa: Giúp làm đẹp da và bảo vệ cơ thể khỏi tác động của các gốc tự do.\nEnzyme Papain: Tăng cường tiêu hóa protein, tốt cho dạ dày.\n```\n\n```\n**Lợi ích sức khỏe của đu đủ**\nCải thiện hệ tiêu hóa: Nhờ enzyme papain và lượng chất xơ dồi dào, đu đủ giúp hệ tiêu hóa hoạt động hiệu quả hơn.\nTăng cường miễn dịch: Hàm lượng vitamin C cao giúp cơ thể chống lại bệnh tật.\nTốt cho mắt: Vitamin A trong đu đủ giúp duy trì thị lực khỏe mạnh.\nHỗ trợ giảm cân: Đu đủ ít calo, giàu nước và chất xơ, tạo cảm giác no lâu.\nNgăn ngừa lão hóa: Chất chống oxy hóa trong đu đủ giúp giảm nếp nhăn, cải thiện độ đàn hồi của da.', 27300.00, 1, 1, 1, 1, '2025-01-21 01:58:22', '2025-01-21 02:12:26'),
(5, 6, 1, 'Dưa hấu khắc hoa văn Tết', 'dua-hau-khac-hoa-van-tet-2025', '[\"products/01JJ45BQCYHF5KY9H7CCAQMV2B.jpg\", \"products/01JJ45BQD1003124WERZ2X3Q01.jpg\", \"products/01JJ45BQD49YZESMRJ9ECR98JZ.jpg\", \"products/01JJ45BQD6YD6NAVQ15X43ZERN.jpg\"]', '**Giá trị dinh dưỡng của dưa hấu**\nDưa hấu không chỉ thơm ngon mà còn chứa nhiều chất dinh dưỡng quan trọng:\n```\n```\n*  Nước: Chiếm hơn 90% trọng lượng quả, giúp bổ sung nước cho cơ thể.\n* Vitamin C: Tăng cường miễn dịch và chống oxy hóa.\n* Vitamin A: Tốt cho mắt và da.\n* Lycopene: Một chất chống oxy hóa mạnh, giúp bảo vệ cơ thể khỏi tác hại của gốc tự do, giảm nguy cơ bệnh tim và ung thư.\n* Chất xơ: Hỗ trợ tiêu hóa.\n* Kali: Cân bằng điện giải, tốt cho tim mạch và huyết áp.\n```\n```\n**Lợi ích sức khỏe của dưa hấu**\n* Bổ sung nước và giải nhiệt: Dưa hấu là thực phẩm lý tưởng trong mùa hè, giúp bổ sung nước, giảm mất nước và hạ nhiệt cơ thể.\n* Tốt cho tim mạch: Lycopene và kali trong dưa hấu hỗ trợ sức khỏe tim mạch, giúp duy trì huyết áp ổn định.\n* Cải thiện tiêu hóa: Hàm lượng chất xơ giúp hệ tiêu hóa hoạt động trơn tru hơn.\n* Làm đẹp da: Vitamin A, C và nước trong dưa hấu giúp da sáng mịn, giảm khô da.\n* Tăng cường sức khỏe mắt: Beta-carotene và vitamin A hỗ trợ bảo vệ thị lực.\n* Hỗ trợ giảm cân: Ít calo, nhiều nước, giúp tạo cảm giác no lâu mà không gây tăng cân.', 140000.00, 1, 1, 1, 1, '2025-01-21 03:08:36', '2025-01-21 23:51:19'),
(6, 2, 1, 'Cam', 'cam', '[\"products/01JJ6CD804WS72Z09H22PV0Y1A.jpg\", \"products/01JJ6CD80S7QKAFZP7XM6GX48P.jpg\", \"products/01JJ6CD80VWCKFB5ZY9S27NJMM.jpg\", \"products/01JJ6CD80X9GJNAEXZQBDW2Y0Y.jpg\"]', '**Giá trị dinh dưỡng:**\n* Vitamin C: Cam chứa lượng vitamin C rất cao, giúp bảo vệ tế bào, tăng cường miễn dịch và hỗ trợ sản xuất collagen cho da và xương.\n* Chất xơ: Cam cung cấp một lượng chất xơ đáng kể, giúp cải thiện tiêu hóa và giảm nguy cơ táo bón.\n* Chất chống oxy hóa: Cam chứa flavonoid, như hesperidin và anthocyanins, giúp chống lại sự lão hóa và giảm viêm.\n* Khoáng chất: Cam cung cấp kali, hỗ trợ cân bằng điện giải và sức khỏe tim mạch.\n* Carbohydrate tự nhiên: Cung cấp năng lượng cho cơ thể thông qua đường tự nhiên từ trái cây.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường miễn dịch: Vitamin C trong cam giúp cơ thể chống lại cảm cúm, bệnh nhiễm trùng và tăng cường khả năng miễn dịch.\n* Bảo vệ tim mạch: Các chất chống oxy hóa và kali trong cam giúp giảm huyết áp và bảo vệ tim khỏi các bệnh về mạch máu.\n* Cải thiện tiêu hóa: Chất xơ giúp cải thiện chức năng ruột, giảm nguy cơ táo bón và hỗ trợ hệ tiêu hóa.\n* Giảm viêm: Các hợp chất trong cam có thể giúp giảm các tình trạng viêm trong cơ thể.\n* Làm đẹp da: Vitamin C hỗ trợ sản xuất collagen, giúp da săn chắc, giảm nếp nhăn và làm sáng da.\n* Hỗ trợ giảm cân: Cam ít calo và giàu nước, giúp kiểm soát cân nặng và làm giảm cảm giác thèm ăn.\n', 15000.00, 1, 1, 1, 1, '2025-01-21 23:50:14', '2025-01-21 23:50:14'),
(7, 6, 1, 'Bưởi', 'buoi', '[\"products/01JJ6D4G0M56SPQC7820FETRWE.jpg\", \"products/01JJ6D4G0QEQ8N9F13A9KW3AR1.jpg\", \"products/01JJ6D4G0R7CAZ4A17900MQ1PP.jpg\", \"products/01JJ6D4G0T7720MWQ4Z7PPNN6W.jpg\"]', '**Giá trị dinh dưỡng:**\n* Vitamin C: Bưởi rất giàu vitamin C, giúp tăng cường hệ miễn dịch và bảo vệ cơ thể khỏi các bệnh nhiễm trùng.\n* Chất xơ: Bưởi cung cấp một lượng chất xơ đáng kể, đặc biệt là chất xơ hòa tan (pectin), giúp cải thiện tiêu hóa.\n* Vitamin A: Chứa beta-carotene, tiền chất của vitamin A, giúp bảo vệ mắt và duy trì làn da khỏe mạnh.\n* Kali: Giúp điều hòa huyết áp và duy trì cân bằng điện giải trong cơ thể.\n* Folate (Vitamin B9): Hỗ trợ sức khỏe tế bào và quá trình phát triển, đặc biệt quan trọng trong thai kỳ.\n* Chất chống oxy hóa: Bưởi chứa các flavonoid, lycopene và các hợp chất khác có tác dụng chống viêm và chống oxy hóa.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C trong bưởi giúp tăng cường sức đề kháng, ngăn ngừa cảm lạnh và các bệnh nhiễm trùng.\n* Cải thiện tiêu hóa: Chất xơ trong bưởi hỗ trợ hệ tiêu hóa, giúp cải thiện nhu động ruột, ngăn ngừa táo bón và tăng cường sức khỏe đường ruột.\n* Giảm nguy cơ mắc bệnh tim mạch: Kali giúp duy trì huyết áp ổn định, trong khi các flavonoid và lycopene có tác dụng bảo vệ tim mạch, giảm nguy cơ mắc các bệnh tim.\n* Hỗ trợ giảm cân: Bưởi ít calo và giàu chất xơ, giúp tạo cảm giác no lâu, làm giảm sự thèm ăn và hỗ trợ quá trình giảm cân hiệu quả.\n* Chống oxy hóa và chống viêm: Các chất chống oxy hóa như lycopene và flavonoid giúp bảo vệ tế bào khỏi sự tổn thương của gốc tự do, giảm viêm và ngăn ngừa lão hóa.\n* Tốt cho da và mắt: Vitamin A và C giúp bảo vệ da khỏi tác hại của ánh nắng mặt trời, làm chậm quá trình lão hóa và cải thiện thị lực', 29000.00, 1, 0, 1, 0, '2025-01-22 00:02:56', '2025-01-22 00:02:56'),
(8, 5, 1, 'Táo ', 'tao', '[\"products/01JJ6DHRM2QTN3KA2MQBCPDVSX.jpg\", \"products/01JJ6DHRM5W6S2Z2E2JVH0HJVY.jpg\", \"products/01JJ6DHRM7WVKNK9CQGQBQQAX7.jpg\", \"products/01JJ6DHRM9VC9MKQZGRNA4B9RB.jpg\"]', 'Giá trị dinh dưỡng:\n* Chất xơ: Táo chứa một lượng chất xơ đáng kể, chủ yếu là pectin, giúp cải thiện tiêu hóa và kiểm soát cholesterol.\n* Vitamin C: Táo cung cấp vitamin C, giúp tăng cường hệ miễn dịch và chống oxy hóa.\n* Kali: Giúp duy trì cân bằng điện giải, điều hòa huyết áp và hỗ trợ sức khỏe tim mạch.\n* Vitamin K: Cần thiết cho quá trình đông máu và sức khỏe xương.\n* Vitamin B6: Hỗ trợ chuyển hóa năng lượng và chức năng thần kinh.\n* Chất chống oxy hóa: Táo chứa flavonoid và polyphenol giúp bảo vệ tế bào khỏi tổn thương do các gốc tự do.\n* Nước: Táo có chứa khoảng 85% nước, giúp duy trì sự hydrat hóa cho cơ thể.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C trong táo giúp tăng cường hệ miễn dịch, bảo vệ cơ thể khỏi cảm cúm và các bệnh nhiễm trùng.\n* Cải thiện tiêu hóa: Chất xơ trong táo hỗ trợ nhu động ruột, giúp cải thiện tiêu hóa, giảm táo bón và duy trì sức khỏe đường ruột.\n* Kiểm soát cholesterol và tim mạch: Pectin trong táo giúp giảm mức cholesterol xấu (LDL), trong khi kali giúp điều hòa huyết áp, bảo vệ tim mạch.\n* Giảm nguy cơ mắc bệnh mãn tính: Các chất chống oxy hóa trong táo giúp giảm viêm, bảo vệ tế bào khỏi sự tổn thương của các gốc tự do, từ đó giảm nguy cơ mắc các bệnh mãn tính như tiểu đường, ung thư và bệnh tim.\n* Hỗ trợ giảm cân: Táo ít calo, giàu nước và chất xơ, giúp tạo cảm giác no lâu và kiểm soát cân nặng hiệu quả.\n* Tốt cho làn da: Các chất chống oxy hóa trong táo giúp bảo vệ da khỏi tác hại của ánh nắng mặt trời và làm chậm quá trình lão hóa.\n* Cải thiện sức khỏe xương: Vitamin K trong táo đóng vai trò quan trọng trong việc duy trì sức khỏe xương và giúp xương chắc khỏe.', 44000.00, 1, 0, 1, 1, '2025-01-22 00:10:11', '2025-01-22 01:13:18'),
(9, 3, 1, 'Chuối', 'chuoi', '[\"products/01JJ6DTEH9D5S624H0MF7BRAP2.jpg\", \"products/01JJ6DTEHB9XXM4JYH351AZNR4.jpg\", \"products/01JJ6DTEHDNB9F3JEEZN4ZHR4Q.jpg\", \"products/01JJ6DTEHTYH181GZYA23VFEZ7.jpg\"]', '**Giá trị dinh dưỡng:**\n* Carbohydrate: Chuối cung cấp một nguồn năng lượng dồi dào nhờ vào lượng carbohydrate, đặc biệt là đường tự nhiên như glucose, fructose và sucrose.\n* Chất xơ: Chuối giàu chất xơ, đặc biệt là pectin, giúp cải thiện tiêu hóa và hỗ trợ sức khỏe ruột.\n* Kali: Chuối là nguồn cung cấp kali dồi dào, giúp điều hòa huyết áp và duy trì sự cân bằng điện giải trong cơ thể.\n* Vitamin B6: Chuối chứa vitamin B6, cần thiết cho chức năng thần kinh, sản xuất hemoglobin và chuyển hóa protein.\n* Vitamin C: Có tác dụng chống oxy hóa, giúp bảo vệ tế bào và tăng cường hệ miễn dịch.\n* Magnesium: Giúp thư giãn cơ bắp, duy trì chức năng thần kinh và điều hòa nhịp tim.\n```\n```\n**Lợi ích sức khỏe:**\n* Cung cấp năng lượng nhanh chóng: Với lượng đường tự nhiên cao, chuối cung cấp năng lượng nhanh chóng và là lựa chọn tuyệt vời cho bữa ăn nhẹ trước hoặc sau khi tập thể dục.\n* Cải thiện tiêu hóa: Chất xơ trong chuối giúp tăng cường nhu động ruột, giảm táo bón và hỗ trợ hệ tiêu hóa khỏe mạnh.\n* Hỗ trợ sức khỏe tim mạch: Kali trong chuối giúp duy trì huyết áp ổn định, giảm nguy cơ đột quỵ và các bệnh tim mạch.\n* Giảm căng thẳng và mệt mỏi: Vitamin B6 và magie giúp giảm căng thẳng, cải thiện tâm trạng và làm dịu các cơn co thắt cơ bắp.\n* Giảm nguy cơ loãng xương: Magie và kali có trong chuối giúp duy trì sức khỏe xương, ngăn ngừa loãng xương và các vấn đề liên quan đến xương.\n', 17000.00, 1, 0, 1, 1, '2025-01-22 00:14:56', '2025-01-22 01:13:43'),
(10, 3, 1, 'Lê', 'le', '[\"products/01JJ6E1SM5R04V35HA993BBD1N.jpg\", \"products/01JJ6E1SM8NEPCQ98JN61B05NM.jpg\", \"products/01JJ6E1SM9DMYAY9BAV69MRFXY.jpg\", \"products/01JJ6E1SMBWAXH9FWBQ3V2X8MM.jpg\"]', '**Giá trị dinh dưỡng:**\n* Chất xơ: Lê rất giàu chất xơ, đặc biệt là pectin, giúp cải thiện tiêu hóa.\n* Vitamin C: Có trong lê, giúp tăng cường hệ miễn dịch và chống oxy hóa.\n* Kali: Giúp duy trì huyết áp ổn định và hỗ trợ sức khỏe tim mạch.\n* Nước: Lê chứa nhiều nước, giúp duy trì sự hydrat hóa cho cơ thể.\n* Các chất chống oxy hóa: Lê cung cấp flavonoid, có tác dụng bảo vệ tế bào khỏi tác hại của gốc tự do.\n```\n\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C giúp cơ thể chống lại bệnh tật.\n* Cải thiện tiêu hóa: Chất xơ trong lê hỗ trợ nhu động ruột và ngăn ngừa táo bón.\n* Hỗ trợ tim mạch: Kali trong lê giúp điều hòa huyết áp và bảo vệ tim.\n* Giảm viêm: Các chất chống oxy hóa trong lê có tác dụng giảm viêm trong cơ thể.\n* Giúp duy trì cân nặng: Lê ít calo và giàu nước, tạo cảm giác no lâu và hỗ trợ giảm cân.', 35000.00, 1, 1, 1, 0, '2025-01-22 00:18:56', '2025-01-22 01:13:57'),
(11, 3, 1, 'Mận', 'man', '[\"products/01JJ6EAEWQPXM46DEQ6XKKBAX5.jpg\", \"products/01JJ6EAEWTEWY1HDPF5YFGGT4G.jpg\", \"products/01JJ6EAEWWFATQTKG2HKZ2V7CH.jpg\", \"products/01JJ6EAEWYZJ5XCWGHVFPGK5KK.jpg\"]', '**Giá trị dinh dưỡng:**\n* Vitamin C: Mận rất giàu vitamin C, giúp tăng cường hệ miễn dịch và bảo vệ cơ thể khỏi các bệnh nhiễm trùng.\n* Chất xơ: Mận chứa một lượng chất xơ đáng kể, đặc biệt là pectin và cellulose, giúp cải thiện hệ tiêu hóa và hỗ trợ sức khỏe đường ruột.\n* Vitamin A: Chứa beta-carotene, tiền chất của vitamin A, giúp bảo vệ mắt và duy trì làn da khỏe mạnh.\n* Vitamin K: Quan trọng cho quá trình đông máu và sức khỏe xương.\n* Kali: Giúp duy trì cân bằng điện giải và hỗ trợ điều hòa huyết áp.\n* Chất chống oxy hóa: Mận chứa các hợp chất phenolic và anthocyanin, là những chất chống oxy hóa mạnh mẽ giúp bảo vệ tế bào khỏi sự tổn thương của gốc tự do.\n* Magnesium: Hỗ trợ chức năng cơ bắp và thần kinh, giúp thư giãn cơ thể.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C trong mận giúp nâng cao sức đề kháng, bảo vệ cơ thể khỏi cảm lạnh, cúm và các bệnh nhiễm trùng.\n* Cải thiện tiêu hóa: Chất xơ trong mận giúp thúc đẩy nhu động ruột, ngăn ngừa táo bón, làm sạch đường tiêu hóa và hỗ trợ hệ tiêu hóa khỏe mạnh.\n* Chống viêm: Các hợp chất chống oxy hóa trong mận giúp giảm viêm trong cơ thể, hỗ trợ điều trị các bệnh viêm nhiễm và viêm khớp.\n* Bảo vệ tim mạch: Mận giúp cải thiện sức khỏe tim mạch nhờ vào chất chống oxy hóa và kali, giúp điều hòa huyết áp và giảm nguy cơ mắc bệnh tim.\n* Giảm nguy cơ ung thư: Các hợp chất phenolic và anthocyanin trong mận có tác dụng chống oxy hóa mạnh mẽ, giúp bảo vệ tế bào khỏi tổn thương và ngăn ngừa sự phát triển của tế bào ung thư.\n* Cải thiện làn da: Vitamin A và C giúp làm sáng da, giảm nếp nhăn và bảo vệ da khỏi tác hại của ánh nắng mặt trời.\n* Hỗ trợ giảm cân: Mận ít calo, giàu nước và chất xơ, tạo cảm giác no lâu và giúp kiểm soát cân nặng hiệu quả.', 22000.00, 1, 0, 1, 1, '2025-01-22 00:23:40', '2025-01-22 01:14:20'),
(12, 4, 1, 'Nho', 'nho', '[\"products/01JJ6EJE4MEZES3R1HZ8A57MYA.jpg\", \"products/01JJ6EJE4Q62C0NMG5SKPZK7NP.jpg\", \"products/01JJ6EJE548C2WSES84S2KRJAP.jpg\", \"products/01JJ6EJE566WY744SE42ZM5SZH.jpg\"]', '**Giá trị dinh dưỡng:**\n* Vitamin C: Nho chứa một lượng vitamin C khá cao, giúp tăng cường hệ miễn dịch và chống lại các tác nhân gây bệnh.\n* Chất chống oxy hóa: Nho đặc biệt giàu các chất chống oxy hóa như flavonoid, resveratrol, và anthocyanin, giúp bảo vệ tế bào khỏi sự tấn công của gốc tự do.\n* Chất xơ: Nho có chứa chất xơ giúp cải thiện tiêu hóa, hỗ trợ sức khỏe đường ruột và giảm nguy cơ táo bón.\n* Kali: Giúp duy trì cân bằng điện giải và hỗ trợ điều hòa huyết áp.\n* Vitamin K: Cần thiết cho quá trình đông máu và duy trì sức khỏe xương.\n* Vitamin B6: Giúp hỗ trợ chức năng thần kinh và chuyển hóa năng lượng.\n* Mangan: Là khoáng chất cần thiết cho quá trình trao đổi chất và bảo vệ tế bào khỏi tổn thương.\n* Nước: Nho chứa nhiều nước, giúp duy trì độ ẩm cho cơ thể.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C và các chất chống oxy hóa trong nho giúp tăng cường hệ miễn dịch, bảo vệ cơ thể khỏi các bệnh cảm cúm và nhiễm trùng.\n* Cải thiện tim mạch: Resveratrol, một chất chống oxy hóa có trong vỏ nho, có tác dụng bảo vệ tim mạch, giảm huyết áp và làm giảm nguy cơ mắc các bệnh tim mạch.\n* Chống lão hóa: Các chất chống oxy hóa như resveratrol và flavonoid giúp bảo vệ tế bào khỏi sự tổn thương của các gốc tự do, làm chậm quá trình lão hóa và ngăn ngừa các dấu hiệu lão hóa sớm.\n* Hỗ trợ tiêu hóa: Chất xơ trong nho giúp cải thiện chức năng tiêu hóa, tăng cường nhu động ruột và ngăn ngừa táo bón.\n* Bảo vệ sức khỏe mắt: Nho chứa vitamin C và các chất chống oxy hóa, giúp bảo vệ mắt khỏi các tác hại của tia UV và giảm nguy cơ mắc các bệnh về mắt như đục thủy tinh thể.\n* Hỗ trợ giảm cân: Nho ít calo và giàu nước, tạo cảm giác no lâu và giúp kiểm soát cân nặng.\n* Tăng cường sức khỏe xương: Vitamin K trong nho giúp duy trì mật độ xương, ngăn ngừa loãng xương và bảo vệ sức khỏe xương khớp.', 38000.00, 1, 1, 1, 0, '2025-01-22 00:28:02', '2025-01-22 01:14:38'),
(13, 4, 1, 'Xoài', 'xoai', '[\"products/01JJ6GHX6EGYSS20B3MVFC9RV2.jpg\", \"products/01JJ6GHX6JYJ685VXDHYDQCD07.jpg\", \"products/01JJ6GHX6MPZKNF28YYKQ52HC5.jpg\", \"products/01JJ6GHX6Q094RBYX0C6GREA9G.jpg\"]', '**Giá trị dinh dưỡng:**\n* Vitamin C: Xoài rất giàu vitamin C, giúp tăng cường hệ miễn dịch và chống lại các tác nhân gây bệnh.\n* Vitamin A: Xoài chứa beta-carotene, tiền chất của vitamin A, giúp bảo vệ mắt và duy trì làn da khỏe mạnh.\n* Vitamin E: Là một chất chống oxy hóa mạnh, vitamin E giúp bảo vệ các tế bào khỏi sự tổn thương của gốc tự do và duy trì làn da khỏe mạnh.\n* Chất xơ: Xoài cung cấp một lượng chất xơ khá cao, giúp cải thiện tiêu hóa và duy trì sức khỏe đường ruột.\n* Kali: Giúp duy trì cân bằng điện giải, điều hòa huyết áp và hỗ trợ sức khỏe tim mạch.\n* Folate (Vitamin B9): Quan trọng trong quá trình phát triển tế bào và hỗ trợ sức khỏe tim mạch.\n* Magnesium: Giúp thư giãn cơ bắp, hỗ trợ chức năng thần kinh và duy trì sức khỏe tim mạch.\n* Chất chống oxy hóa: Xoài chứa các polyphenol, flavonoid và carotenoids giúp bảo vệ tế bào khỏi sự tấn công của các gốc tự do.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C trong xoài giúp tăng cường sức đề kháng, bảo vệ cơ thể khỏi các bệnh nhiễm trùng và cảm lạnh.\n* Bảo vệ mắt: Vitamin A trong xoài giúp duy trì thị lực khỏe mạnh, giảm nguy cơ thoái hóa điểm vàng và khô mắt.\n* Cải thiện tiêu hóa: Xoài chứa enzyme amylase, giúp tiêu hóa carbohydrate và cải thiện chức năng tiêu hóa. Chất xơ trong xoài cũng giúp ngăn ngừa táo bón và hỗ trợ hệ tiêu hóa.\n* Chống lão hóa và bảo vệ da: Các chất chống oxy hóa trong xoài như vitamin C, E và carotenoids giúp làm chậm quá trình lão hóa, bảo vệ da khỏi tác hại của ánh nắng mặt trời và giảm nếp nhăn.\n* Hỗ trợ giảm cân: Xoài có chứa ít calo, nhiều nước và chất xơ, giúp tạo cảm giác no lâu và hỗ trợ quá trình giảm cân.\n* Cải thiện sức khỏe tim mạch: Kali trong xoài giúp điều hòa huyết áp và giảm nguy cơ mắc các bệnh tim mạch. Ngoài ra, chất xơ trong xoài cũng hỗ trợ giảm cholesterol xấu (LDL).\n* Chống viêm: Các polyphenol trong xoài có tác dụng chống viêm, giảm sưng tấy và giúp giảm các triệu chứng của các bệnh viêm nhiễm như viêm khớp.', 23000.00, 1, 0, 1, 0, '2025-01-22 01:02:42', '2025-01-22 01:14:59'),
(14, 4, 1, 'Mít', 'mit', '[\"products/01JJ6GW48JBXNJYD07C59QZ6WP.jpg\", \"products/01JJ6GW48NS6KPEVQRBXX569NA.jpg\", \"products/01JJ6GW48Q18A9SNVJTYGCA3EH.jpg\", \"products/01JJ6GW48SH81PHCHX5HXHXW6R.jpg\"]', '**Giá trị dinh dưỡng:**\n* Calorie: Mít là một nguồn cung cấp năng lượng dồi dào, với khoảng 95-100 calo trong mỗi 100g thịt mít tươi.\n* Carbohydrate: Mít chứa nhiều carbohydrate, chủ yếu là đường tự nhiên (glucose, fructose) và tinh bột, giúp cung cấp năng lượng cho cơ thể.\n* Chất xơ: Mít rất giàu chất xơ, giúp hỗ trợ tiêu hóa và điều hòa nhu động ruột.\n* Vitamin C: Mít là nguồn cung cấp vitamin C rất tốt, giúp tăng cường hệ miễn dịch và chống lại các tác nhân gây bệnh.\n* Vitamin A: Mít cũng chứa một lượng beta-carotene, tiền chất của vitamin A, hỗ trợ sức khỏe mắt và làn da.\n* Vitamin B6: Giúp cải thiện chức năng thần kinh và chuyển hóa năng lượng.\n* Kali: Mít chứa kali, giúp điều hòa huyết áp và duy trì sự cân bằng điện giải trong cơ thể.\n* Magnesium: Quan trọng cho chức năng cơ bắp, thần kinh và duy trì sức khỏe tim mạch.\n* Folate (Vitamin B9): Cần thiết cho sự phát triển tế bào, đặc biệt là trong thai kỳ.\n* Chất chống oxy hóa: Mít chứa các hợp chất phenolic và flavonoid có tác dụng chống oxy hóa, bảo vệ tế bào khỏi sự tấn công của các gốc tự do.\n```\n```\n**Lợi ích sức khỏe:**\n* Cung cấp năng lượng nhanh chóng: Với lượng carbohydrate và đường tự nhiên cao, mít cung cấp năng lượng tức thời, là một lựa chọn tuyệt vời cho những người cần năng lượng nhanh chóng, đặc biệt là vận động viên hoặc những người làm việc nặng.\n* Hỗ trợ tiêu hóa: Chất xơ trong mít giúp tăng cường nhu động ruột, ngăn ngừa táo bón và duy trì sức khỏe đường ruột. Ngoài ra, mít còn có tác dụng làm dịu dạ dày, giảm chứng khó tiêu.\n* Tăng cường hệ miễn dịch: Vitamin C trong mít giúp nâng cao sức đề kháng của cơ thể, bảo vệ khỏi cảm lạnh và các bệnh nhiễm trùng. Vitamin C cũng giúp làm lành vết thương nhanh chóng.\n* Cải thiện sức khỏe tim mạch: Kali trong mít giúp duy trì huyết áp ổn định, giảm nguy cơ bệnh tim mạch và đột quỵ. Chất xơ trong mít cũng có tác dụng giảm cholesterol xấu (LDL).\n* Tốt cho mắt và làn da: Vitamin A (beta-carotene) trong mít giúp duy trì sức khỏe mắt, ngăn ngừa thoái hóa điểm vàng và khô mắt. Vitamin C và các chất chống oxy hóa trong mít giúp làm sáng da và ngăn ngừa lão hóa sớm.\n* Giảm nguy cơ thiếu máu: Mít chứa một lượng nhỏ sắt, giúp hỗ trợ sản xuất hồng cầu và giảm nguy cơ thiếu máu.\nTăng cường sức khỏe xương: Mít chứa các khoáng chất như magnesium và calcium, giúp duy trì sức khỏe xương và ngăn ngừa loãng xương.', 69500.00, 1, 1, 1, 0, '2025-01-22 01:08:16', '2025-01-22 01:15:13'),
(15, 5, 1, 'Thanh Long', 'thanh-long', '[\"products/01JJ6H3KXX917Q8ZK1SCBMY037.jpg\", \"products/01JJ6H3KYC3VA10NB6PER57DSX.jpg\", \"products/01JJ6H3KYEHNRC1WHZKF7QHSW0.jpg\", \"products/01JJ6H3KYGS3ZHRJFZ1F8HDJH5.jpg\"]', '**Giá trị dinh dưỡng:**\n* Calorie: Thanh long là một trái cây ít calo, chỉ khoảng 50-60 calo trên 100g thịt trái cây, rất phù hợp cho những người muốn kiểm soát cân nặng.\n* Carbohydrate: Thanh long chứa lượng carbohydrate vừa phải, chủ yếu là đường tự nhiên như fructose và glucose, cung cấp năng lượng nhanh chóng cho cơ thể.\nChất xơ: Thanh long chứa một lượng chất xơ tốt, giúp cải thiện tiêu hóa và hỗ trợ sức khỏe đường ruột.\n* Vitamin C: Thanh long là nguồn cung cấp vitamin C phong phú, giúp tăng cường hệ miễn dịch và chống lại các tác nhân gây bệnh.\n* Vitamin B1, B2, B3 (Thiamine, Riboflavin, Niacin): Các vitamin nhóm B trong thanh long giúp hỗ trợ chuyển hóa năng lượng, duy trì sức khỏe thần kinh và da.\n* Chất chống oxy hóa: Thanh long chứa các hợp chất chống oxy hóa như betalains (trong thanh long đỏ), flavonoids và carotenoids, giúp bảo vệ tế bào khỏi sự tổn thương do gốc tự do.\n* Kali: Giúp điều hòa huyết áp, hỗ trợ chức năng cơ và thần kinh.\n* Magnesium: Quan trọng cho sự phát triển và duy trì sức khỏe xương, cơ bắp và hệ thần kinh.\n* Sắt: Hỗ trợ sản xuất hồng cầu và ngăn ngừa thiếu máu.\n* Canxi: Thanh long cũng chứa một lượng canxi vừa phải, có lợi cho sức khỏe xương và răng.\n```\n```\n**Lợi ích sức khỏe:**\n* Cung cấp năng lượng cho cơ thể: Với lượng calo vừa phải và đường tự nhiên, thanh long là nguồn cung cấp năng lượng nhanh chóng, thích hợp cho những người cần tăng cường năng lượng trong ngày.\n* Hỗ trợ tiêu hóa: Thanh long chứa nhiều chất xơ, giúp cải thiện hệ tiêu hóa, ngăn ngừa táo bón và duy trì đường ruột khỏe mạnh. Chất xơ cũng giúp giảm nguy cơ mắc bệnh đại tràng và các bệnh tiêu hóa mãn tính.\n* Tăng cường hệ miễn dịch: Vitamin C trong thanh long giúp củng cố hệ miễn dịch, bảo vệ cơ thể khỏi các bệnh nhiễm trùng và cảm lạnh.\n* Chống lão hóa: Các chất chống oxy hóa trong thanh long, đặc biệt là betalains và flavonoids, giúp bảo vệ tế bào khỏi sự tổn thương của gốc tự do, làm chậm quá trình lão hóa và giảm nguy cơ mắc các bệnh mãn tính như ung thư, bệnh tim mạch.\n* Tốt cho tim mạch: Thanh long chứa kali và chất xơ, hai yếu tố quan trọng giúp điều hòa huyết áp và giảm nguy cơ mắc các bệnh tim mạch. Kali giúp duy trì cân bằng điện giải trong cơ thể và hỗ trợ hoạt động của tim.\n* Cải thiện sức khỏe xương: Với lượng canxi và magnesium, thanh long giúp duy trì xương chắc khỏe, ngăn ngừa loãng xương và các vấn.', 22000.00, 1, 0, 1, 1, '2025-01-22 01:12:22', '2025-01-22 01:12:22'),
(16, 5, 1, 'Dưa lưới', 'dua-luoi', '[\"products/01JJ6HFKAC1YJZY1D9BT9FDNA5.jpg\", \"products/01JJ6HFKAFC4XTAYWS3GK269X2.jpg\", \"products/01JJ6HFKAGNSS5RDWAS3HG5P0X.jpg\", \"products/01JJ6HFKAJFN40QXQ9SN9N7FAV.jpg\"]', '**Giá trị dinh dưỡng:**\n* Calorie: Thanh long là một trái cây ít calo, chỉ khoảng 50-60 calo trên 100g thịt trái cây, rất phù hợp cho những người muốn kiểm soát cân nặng.\n* Carbohydrate: Thanh long chứa lượng carbohydrate vừa phải, chủ yếu là đường tự nhiên như fructose và glucose, cung cấp năng lượng nhanh chóng cho cơ thể.\n* Chất xơ: Thanh long chứa một lượng chất xơ tốt, giúp cải thiện tiêu hóa và hỗ trợ sức khỏe đường ruột.\n* Vitamin C: Thanh long là nguồn cung cấp vitamin C phong phú, giúp tăng cường hệ miễn dịch và chống lại các tác nhân gây bệnh.\n* Vitamin B1, B2, B3 (Thiamine, Riboflavin, Niacin): Các vitamin nhóm B trong thanh long giúp hỗ trợ chuyển hóa năng lượng, duy trì sức khỏe thần kinh và da.\n* Chất chống oxy hóa: Thanh long chứa các hợp chất chống oxy hóa như betalains (trong thanh long đỏ), flavonoids và carotenoids, giúp bảo vệ tế bào khỏi sự tổn thương do gốc tự do.\n* Kali: Giúp điều hòa huyết áp, hỗ trợ chức năng cơ và thần kinh.\n* Magnesium: Quan trọng cho sự phát triển và duy trì sức khỏe xương, cơ bắp và hệ thần kinh.\n* Sắt: Hỗ trợ sản xuất hồng cầu và ngăn ngừa thiếu máu.\n* Canxi: Thanh long cũng chứa một lượng canxi vừa phải, có lợi cho sức khỏe xương và răng.\n**Lợi ích sức khỏe:**\n* Cung cấp năng lượng cho cơ thể: Với lượng calo vừa phải và đường tự nhiên, thanh long là nguồn cung cấp năng lượng nhanh chóng, thích hợp cho những người cần tăng cường năng lượng trong ngày.\n* Hỗ trợ tiêu hóa: Thanh long chứa nhiều chất xơ, giúp cải thiện hệ tiêu hóa, ngăn ngừa táo bón và duy trì đường ruột khỏe mạnh. Chất xơ cũng giúp giảm nguy cơ mắc bệnh đại tràng và các bệnh tiêu hóa mãn tính.\n* Tăng cường hệ miễn dịch: Vitamin C trong thanh long giúp củng cố hệ miễn dịch, bảo vệ cơ thể khỏi các bệnh nhiễm trùng và cảm lạnh.\n* Chống lão hóa: Các chất chống oxy hóa trong thanh long, đặc biệt là betalains và flavonoids, giúp bảo vệ tế bào khỏi sự tổn thương của gốc tự do, làm chậm quá trình lão hóa và giảm nguy cơ mắc các bệnh mãn tính như ung thư, bệnh tim mạch.\n* Tốt cho tim mạch: Thanh long chứa kali và chất xơ, hai yếu tố quan trọng giúp điều hòa huyết áp và giảm nguy cơ mắc các bệnh tim mạch. Kali giúp duy trì cân bằng điện giải trong cơ thể và hỗ trợ hoạt động của tim.\n* Cải thiện sức khỏe xương: Với lượng canxi và magnesium, thanh long giúp duy trì xương chắc khỏe, ngăn ngừa loãng xương và các vấn đề', 46900.00, 1, 1, 1, 0, '2025-01-22 01:18:54', '2025-01-22 01:18:54'),
(17, 4, 2, 'GIỏ Trái Cây GQTC15', 'gio-trai-cay-gqtc15', '[\"products/01JJ6JFX4B9BCTVZBGYEK9ZKXS.jpg\", \"products/01JJ6JFX4EQQT8XQ2AS81723N0.jpg\", \"products/01JJ6JFX4GYTS3R24WYWC9204Y.jpg\", \"products/01JJ6JFX4XVGGKHXKSSDTP9SHY.jpg\"]', 'Giỏ trái cây chúc mừng không chỉ là món quà bắt mắt mà còn mang lại giá trị thiết thực, đáp ứng nhiều nhu cầu của khách hàng khi chọn quà tặng:\n```\n\n```\n* Giá trị sức khỏe và dinh dưỡng: Tất cả các loại trái cây trong giỏ đều là những loại giàu vitamin và khoáng chất, giúp bổ sung dinh dưỡng và tăng cường sức khỏe cho người nhận.\n* Thiết kế sang trọng, bắt mắt: Giỏ trái cây được thiết kế tinh tế, từng loại trái cây được sắp xếp hài hòa, tạo cảm giác trang nhã và phù hợp cho nhiều dịp đặc biệt như lễ kỷ niệm, sinh nhật, mừng tân gia.\n* Mức giá hợp lý, phù hợp ngân sách: Với giá 750,000 VNĐ, giỏ trái cây chúc mừng là lựa chọn lý tưởng cho những ai muốn tặng quà đẹp mắt, sang trọng mà vẫn trong tầm giá phải chăng.\n* Dịch vụ giao hàng tận nơi, nhanh chóng: Giỏ trái cây được chuẩn bị ngay trước khi giao, đảm bảo độ tươi ngon. Dịch vụ giao hàng tận nơi đúng hẹn giúp bạn tiết kiệm thời gian và thể hiện sự chu đáo.', 750000.00, 1, 1, 1, 1, '2025-01-22 01:36:33', '2025-01-22 01:36:33'),
(18, 3, 2, 'Giỏ trái cây GQTC26', 'gio-trai-cay-gqtc26', '[\"products/01JJ6JWATY53R1K5AB2S85EZEK.jpg\"]', 'Giỏ trái cây thăm tặng không chỉ đẹp mắt mà còn mang lại nhiều lợi ích thiết thực cho người nhận. Dưới đây là lý do tại sao giỏ quà này được khách hàng yêu thích trong phân khúc dưới 1 triệu đồng:\n```\n\n```\n* Giá trị dinh dưỡng và sức khỏe: Các loại trái cây nhập khẩu đều giàu vitamin, khoáng chất và chất chống oxy hóa, giúp bổ sung dưỡng chất cần thiết và tăng cường sức khỏe.\nThiết kế sang trọng, đầy đặn: Giỏ trái cây được sắp xếp một cách tinh tế, đầy đặn và đẹp mắt, phù hợp cho nhiều mục đích sử dụng từ thăm hỏi đến cúng giỗ.\n* Mức giá phù hợp với ngân sách: Với mức giá 990,000 VNĐ, giỏ trái cây thăm tặng mang lại giá trị vượt trội về cả thẩm mỹ và chất lượng, đáp ứng nhu cầu của khách hàng muốn tặng quà trong phân khúc giá phải chăng.\n* Dịch vụ giao hàng nhanh chóng, tiện lợi: Giỏ trái cây được chuẩn bị ngay trước khi giao, đảm bảo độ tươi ngon và hỗ trợ ship với mức phí 30,000 VNĐ/lượt, giúp bạn tiết kiệm thời gian và gửi gắm tình cảm trọn vẹn đến người nhận.', 990000.00, 1, 1, 1, 0, '2025-01-22 01:43:20', '2025-01-22 01:43:20'),
(19, 4, 1, 'Táo xanh', 'tao-xanh', '[\"products/01JJ6K3BXMHKCDF835SWKA360F.jpg\", \"products/01JJ6K3BXQR7NV0AZ3QSQ5FX68.jpg\", \"products/01JJ6K3BXS0MFXSF35YQBMT9W6.jpg\", \"products/01JJ6K3BXV4K6PQV0RT9PN6MVG.jpg\"]', '**Giá trị dinh dưỡng:**\n* Calorie: Táo xanh có lượng calo thấp, khoảng 50-55 calo mỗi 100g, giúp làm dịu cơn thèm ăn mà không lo tăng cân.\n* Carbohydrate: Khoảng 13-15g carbohydrate mỗi 100g, chủ yếu là đường tự nhiên (fructose và glucose), cung cấp năng lượng cho cơ thể.\n* Chất xơ: Táo xanh rất giàu chất xơ, đặc biệt là pectin (chất xơ hòa tan), với khoảng 2-3g chất xơ mỗi 100g, giúp hỗ trợ tiêu hóa và giảm táo bón.\n* Vitamin C: Mỗi quả táo xanh cung cấp khoảng 5-10% nhu cầu vitamin C hàng ngày của cơ thể, giúp tăng cường hệ miễn dịch và chống oxy hóa.\n* Vitamin A: Táo xanh chứa một lượng nhỏ beta-carotene, tiền chất của vitamin A, giúp bảo vệ mắt và duy trì làn da khỏe mạnh.\n* Vitamin K: Giúp hỗ trợ quá trình đông máu và duy trì xương chắc khỏe.\n* Vitamin B2 (Riboflavin) và B6: Quan trọng cho chuyển hóa năng lượng và duy trì chức năng thần kinh.\n* Kali: Có tác dụng duy trì huyết áp ổn định, giúp cơ bắp và hệ thần kinh hoạt động tốt.\n* Magnesium: Quan trọng cho chức năng cơ bắp và xương.\n* Chất chống oxy hóa: Táo xanh chứa nhiều flavonoid và polyphenol, giúp bảo vệ tế bào khỏi tổn thương do gốc tự do và chống lại các bệnh lý mãn tính.\n```\n```\n**Lợi ích sức khỏe:**\n* Tăng cường hệ miễn dịch: Vitamin C trong táo xanh giúp nâng cao khả năng miễn dịch của cơ thể, bảo vệ khỏi các bệnh nhiễm trùng, cảm lạnh, và viêm nhiễm. Nó cũng giúp làm lành vết thương nhanh chóng.\n* Hỗ trợ tiêu hóa: Chất xơ trong táo xanh, đặc biệt là pectin, giúp hỗ trợ quá trình tiêu hóa, giảm táo bón, và duy trì sự hoạt động bình thường của hệ tiêu hóa. Chất xơ cũng giúp tăng cường lợi khuẩn trong ruột, hỗ trợ hệ vi sinh vật đường ruột.\n* Giảm cân: Táo xanh chứa ít calo và nhiều chất xơ, giúp tạo cảm giác no lâu và giảm cảm giác thèm ăn, rất hữu ích trong việc kiểm soát cân nặng. Ngoài ra, các chất xơ còn giúp ổn định đường huyết, ngăn ngừa các cơn đói bất ngờ.\n* Chống oxy hóa và ngăn ngừa lão hóa: Các hợp chất polyphenol và flavonoid trong táo xanh có khả năng chống lại các gốc tự do gây hại cho tế bào, giảm quá trình oxy hóa và lão hóa, bảo vệ cơ thể khỏi các bệnh mãn tính như ung thư và bệnh tim mạch.\n* Tốt cho tim mạch: Chất xơ hòa tan trong táo xanh (pectin) giúp giảm mức cholesterol xấu (LDL) trong máu, từ đó giảm nguy cơ bệnh tim mạch. Kali trong táo xanh cũng giúp duy trì huyết áp ổn định, giảm nguy cơ đột quỵ và các vấn đề tim mạch.\n* Tốt cho gan: Một số nghiên cứu chỉ ra rằng táo xanh có thể giúp giải độc gan và hỗ trợ quá trình thải độc tố ra khỏi cơ thể, bảo vệ gan khỏi các tổn thương.', 25000.00, 1, 0, 1, 1, '2025-01-22 01:47:11', '2025-01-22 01:47:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$4CA3hbrTXXFnKV7g7f.FCe85nztd3aMhVU.BY276v2f.8.DVkUHpW', NULL, '2025-01-20 19:44:42', '2025-01-20 19:44:42'),
(2, 'Vũ Minh Đức', 'minhduc.code@gmail.com', NULL, '$2y$12$rW1fuwm8cMmJPsDSc6E6neHUOJCEla0YtsnbcuCMC.i9cDm4ao.yK', NULL, '2025-01-20 19:57:09', '2025-01-20 19:57:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
