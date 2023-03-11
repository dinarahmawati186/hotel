-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2022 pada 06.58
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbujikom_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$HuyPrVhn7bvVj8cxWvEhAOWWqdug7i6Q3gNUWS2yHgAZrGr29cub.', NULL, '2022-05-10 05:52:16', '2022-05-10 05:52:16'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$IuHC8xCAgAkb/QckgiA05eo.aHRmI/IJVM92m6E/fcAeunXChU7XG', NULL, '2022-05-10 05:52:16', '2022-05-10 05:52:16'),
(3, 'Hayabusa', 'haya', 'resepsionis', '$2y$10$8Q5/ELLdtlbim0H.QF5M9OXJNofrNVi4snBr/Z00EBSAyqjlv89gC', NULL, '2022-05-10 05:52:17', '2022-05-10 05:52:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', '488_1652245766.jpg', 'Sed purus diam, placerat sit amet blandit sed, rutrum non elit. Donec porta orci sed mauris facilisis, consectetur dapibus odio molestie. Praesent sit amet fermentum sapien, a ornare lectus. Suspendisse id ante velit. Sed eros sem, laoreet sit amet turpis non, venenatis blandit purus. Vestibulum vitae lectus ex. Vivamus aliquet tempus massa a varius. Integer ultricies mi vel interdum egestas. Proin quis odio non elit varius blandit. Vivamus luctus ante magna, id dapibus ante efficitur a.'),
(2, 'Restoran', '850_1654053744.jpg', 'Hotel kami menyediakan restoran untuk sarapan pagi gratis dan untuk makan tamu kami.'),
(3, 'Parkir Luas', '784_1654054032.jpg', 'Menyediakan parkiran untuk kenyamanan pengunjung menyimpan kendaraannya dengan aman.'),
(4, 'Sarapan Pagi Gratis', '46_1654053833.jpg', 'sarapan pagi gratis.'),
(5, 'Lift', '803_1654054712.jpg', 'Menyediakan Lift untuk kenyamanan pengunjung naik turun lantai dengan aman dan cepat'),
(6, 'Lobi Hotel', '549_1654054845.jpg', 'Lobby merupakan tempat utama yang dapat ditemui pengunjung pada setiap gedung, salah satunya yakni lobby hotel, di tempat ini pengunjung dapat melakukan aktivitas seperti berbincang-bincang, menunggu teman.'),
(7, 'Ruang Rapat', '42_1654055193.jpg', 'Ruang rapat yang nyaman bisa digunakan sebagai tempat dan waktu untuk berhenti sejenak dari rutinitas pekerjaan yang dilakukan. Berhenti sejenak memberikan dampak positif dalam meminimalisir kesalahan dalam pekerjaan dan menambah konsentrasi individu-individu dalam bekerja sebagai sebuah tim.'),
(8, 'Rooftop', '682_1654055514.jpg', 'Rooftop sebagai tempat bersantai sebenarnya tidak jauh berbeda dengan ruang makan outdoor.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_kamars`
--

INSERT INTO `fasilitas_kamars` (`id`, `kamar_id`, `nama_fasilitas_kamar`) VALUES
(1, 1, 'TV'),
(2, 1, 'AC'),
(3, 2, 'TV'),
(4, 2, 'AC'),
(5, 1, 'Sarapan pagi'),
(6, 1, 'Wi-Fi'),
(7, 2, 'Sarapan pagi'),
(8, 2, 'Wi-Fi'),
(9, 3, 'AC'),
(10, 3, 'TV'),
(11, 3, 'Wi-Fi'),
(12, 3, 'Sarapan pagi'),
(13, 4, 'AC'),
(14, 4, 'TV'),
(15, 4, 'Sarapan pagi'),
(16, 4, 'Wi-Fi'),
(17, 5, 'AC'),
(18, 5, 'TV'),
(19, 5, 'Sarapan pagi'),
(20, 5, 'Wi-Fi'),
(21, 6, 'TV'),
(22, 6, 'AC'),
(23, 6, 'Sarapan pagi'),
(24, 6, 'Wi-Fi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'Deluxe Room', '166_1652245407.jpg', 10, 700000, 'Satu king bed bisa untung sepasang atau dua orang.'),
(2, 'Eksekutif Double Room', '978_1654055962.jpg', 10, 650000, 'Menyediakan Double bed dengan dua ranjang untuk 2 orang'),
(3, 'Singel Room', '153_1654056729.jpg', 10, 400000, 'Double bed dengan ranjang terpisah.'),
(4, 'Singel King Room', '126_1654056960.jpg', 15, 500000, '1 king bed'),
(5, 'Suite Double Room', '747_1654057730.jpg', 15, 800000, '1 king bed'),
(6, 'Presidential Suite Room', '515_1654058059.jpg', 10, 950000, '1 king bed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_06_073255_create_admins_table', 1),
(3, '2022_04_14_024848_create_kamars_table', 1),
(4, '2022_04_17_040925_create_fasilitas_kamars_table', 1),
(5, '2022_04_19_131448_create_fasilitas_hotels_table', 1),
(6, '2022_04_21_122447_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `kamar_id`, `tgl_checkin`, `tgl_checkout`, `jum_kamar_dipesan`, `nama_pemesan`, `email_pemesan`, `no_hp`, `nama_tamu`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-03', '2022-05-06', 1, 'Durward Gulgowski', 'sylvia06@hotmail.com', '1-541-403-9995', 'Wilton Fahey', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(2, 3, '2022-05-08', '2022-05-11', 2, 'Mara Ernser', 'egoyette@gmail.com', '(702) 803-7621', 'Valentine Swift', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(3, 2, '2022-05-12', '2022-05-15', 1, 'Mrs. Herta Farrell', 'eric.rolfson@yahoo.com', '951.461.2536', 'Katelynn Kling', 'pesan', '2022-05-10 17:00:00', '2022-05-10 17:00:00'),
(4, 2, '2022-05-16', '2022-05-19', 1, 'Ms. Augusta Hessel MD', 'schroeder.geovany@gmail.com', '1-575-292-0900', 'Miss Hanna Schaefer', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(5, 1, '2022-05-12', '2022-05-13', 1, 'Dariana Durgan', 'amos47@gmail.com', '941.625.1984', 'Steve Welch', 'pesan', '2022-05-10 17:00:00', '2022-05-10 17:00:00'),
(6, 3, '2022-05-09', '2022-05-11', 2, 'Garrick Osinski', 'sgerlach@gmail.com', '1-707-599-9112', 'Dana Deckow', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(7, 3, '2022-05-04', '2022-05-07', 1, 'Imogene Zulauf', 'howe.lonie@yahoo.com', '463-503-3077', 'Dr. Vicente Macejkovic', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(8, 1, '2022-05-09', '2022-05-12', 2, 'Yvette Ankunding', 'ymayer@gmail.com', '256.379.6860', 'Raoul Gorczany', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(9, 2, '2022-05-05', '2022-05-07', 1, 'Madelynn Turcotte', 'balistreri.gordon@hotmail.com', '757.695.8304', 'Jonas Rutherford', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(10, 1, '2022-05-04', '2022-05-05', 2, 'Thad Mayert', 'mmurphy@gmail.com', '+1.585.852.0427', 'Corrine Ernser', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(11, 1, '2022-05-08', '2022-05-11', 1, 'America Batz III', 'odie.lehner@gmail.com', '+1 (541) 247-3354', 'Mr. Merlin Nolan MD', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(12, 2, '2022-05-11', '2022-05-13', 2, 'Erick Windler', 'bruen.ned@gmail.com', '+1 (864) 521-3896', 'Serena Cartwright', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(13, 3, '2022-05-07', '2022-05-09', 1, 'Rigoberto Howe', 'lavern.larson@yahoo.com', '(206) 685-3959', 'Dr. Karl Cummings', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(14, 2, '2022-05-05', '2022-05-08', 1, 'Milton Kuhn', 'yjaskolski@hotmail.com', '531.358.4125', 'Frederic Zemlak', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(15, 3, '2022-05-04', '2022-05-05', 2, 'Donato Reichel', 'kovacek.rebeka@gmail.com', '281-749-0540', 'Rashawn Wisozk', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(16, 2, '2022-05-12', '2022-05-15', 2, 'Susana Parker', 'raleigh84@yahoo.com', '+16465786826', 'Dr. Devante Mayer Sr.', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(17, 3, '2022-05-10', '2022-05-11', 2, 'Flo Abbott', 'wpurdy@hotmail.com', '+18019372682', 'Maurice Yost', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(18, 3, '2022-05-05', '2022-05-06', 2, 'Jamal Nolan', 'ufahey@hotmail.com', '+16167806537', 'Ahmad Morissette III', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(19, 2, '2022-05-11', '2022-05-13', 1, 'Camille Rath', 'bhegmann@yahoo.com', '+1 (651) 238-1820', 'Rafaela Robel', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(20, 3, '2022-05-04', '2022-05-07', 2, 'Dr. Litzy Deckow Sr.', 'valentine68@gmail.com', '520.727.8323', 'Miss Keely Kassulke', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(21, 1, '2022-05-16', '2022-05-17', 1, 'Montana Kozey MD', 'oaufderhar@gmail.com', '+1 (240) 650-9728', 'Prof. Arne Wiza', 'pesan', '2022-05-13 17:00:00', '2022-05-13 17:00:00'),
(22, 1, '2022-05-11', '2022-05-14', 2, 'Mireya Cassin', 'gus76@yahoo.com', '+1 (901) 321-4694', 'Velma Flatley', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(23, 3, '2022-05-06', '2022-05-09', 2, 'Emely Spinka', 'johnpaul38@yahoo.com', '(319) 321-1388', 'Meggie DuBuque', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(24, 1, '2022-05-07', '2022-05-09', 1, 'Ms. Queenie Flatley', 'wendy.stracke@gmail.com', '+1-517-530-1611', 'Rosamond Beatty', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(25, 3, '2022-05-14', '2022-05-17', 1, 'Velda Kessler', 'rowe.frederik@yahoo.com', '361-749-6228', 'Dr. Trey Kub DDS', 'pesan', '2022-05-11 17:00:00', '2022-05-11 17:00:00'),
(26, 2, '2022-05-07', '2022-05-09', 1, 'Prof. Weldon Kling', 'freeman.fisher@hotmail.com', '251.486.2575', 'Mr. Israel Farrell', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(27, 1, '2022-05-13', '2022-05-14', 1, 'Kaylah Bayer', 'sipes.raul@hotmail.com', '+1-424-412-0536', 'Prof. Raven Leannon MD', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(28, 3, '2022-05-10', '2022-05-13', 2, 'Gregg Homenick', 'darian95@hotmail.com', '878-519-5452', 'Rosella Braun III', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(29, 2, '2022-05-05', '2022-05-06', 2, 'Phoebe Cormier', 'dmante@yahoo.com', '484.423.6422', 'Alaina Olson', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(30, 2, '2022-05-10', '2022-05-13', 1, 'Kendrick Zboncak II', 'katrina.white@gmail.com', '605.404.2611', 'Magnolia Kiehn', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(31, 3, '2022-05-14', '2022-05-17', 1, 'Dr. Lynn Baumbach Jr.', 'dwillms@hotmail.com', '352-997-6999', 'America Pfannerstill', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(32, 3, '2022-05-17', '2022-05-18', 2, 'Corrine Kirlin', 'mabel.treutel@gmail.com', '540-437-9744', 'Shayne Hansen', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(33, 2, '2022-05-13', '2022-05-14', 2, 'Maeve Hermann', 'stroman.derrick@gmail.com', '724-915-0116', 'Camden Bartell', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(34, 2, '2022-05-12', '2022-05-14', 2, 'Keanu Roob', 'qkihn@hotmail.com', '(248) 336-7143', 'Duncan Tremblay', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(35, 1, '2022-05-13', '2022-05-15', 2, 'Elenora Morar DVM', 'imorar@gmail.com', '+1 (534) 306-9570', 'Ettie O\'Hara', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(36, 2, '2022-05-14', '2022-05-17', 2, 'Dr. Urban Kuhlman', 'fhagenes@yahoo.com', '+1.828.836.0189', 'German Torphy', 'pesan', '2022-05-10 17:00:00', '2022-05-10 17:00:00'),
(37, 3, '2022-05-07', '2022-05-10', 2, 'Jasen DuBuque', 'eleonore04@gmail.com', '(858) 348-5980', 'Marlee Hermiston', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(38, 1, '2022-05-16', '2022-05-17', 1, 'Abdiel Stoltenberg', 'enienow@yahoo.com', '864.721.5452', 'Joanny Beatty', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(39, 2, '2022-05-16', '2022-05-19', 1, 'D\'angelo Bode', 'doyle.favian@hotmail.com', '+1.585.424.1617', 'Ara O\'Hara Sr.', 'pesan', '2022-05-13 17:00:00', '2022-05-13 17:00:00'),
(40, 2, '2022-05-08', '2022-05-11', 2, 'Rosalyn Monahan', 'laurie34@yahoo.com', '1-256-420-2163', 'Marcelle Gulgowski', 'pesan', '2022-05-04 17:00:00', '2022-05-04 17:00:00'),
(41, 1, '2022-05-15', '2022-05-17', 2, 'Desmond Kiehn PhD', 'kquitzon@yahoo.com', '718-321-6152', 'Mrs. Sadye Wiegand PhD', 'pesan', '2022-05-13 17:00:00', '2022-05-13 17:00:00'),
(42, 3, '2022-05-17', '2022-05-18', 2, 'Stewart King', 'kessler.bobbie@yahoo.com', '+1.325.779.8221', 'Terrell Kub', 'pesan', '2022-05-15 17:00:00', '2022-05-15 17:00:00'),
(43, 1, '2022-05-04', '2022-05-07', 2, 'Gretchen Schaden', 'emelie12@hotmail.com', '+1 (564) 924-0134', 'Prof. Vernie Schaefer Jr.', 'pesan', '2022-04-30 17:00:00', '2022-04-30 17:00:00'),
(44, 3, '2022-05-09', '2022-05-12', 2, 'Marisa Orn', 'shanie.considine@gmail.com', '1-272-740-6105', 'Tommie Hamill Sr.', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(45, 2, '2022-05-13', '2022-05-14', 1, 'Etha Osinski MD', 'jast.zella@yahoo.com', '818-798-0121', 'Dr. Jefferey Altenwerth PhD', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(46, 1, '2022-05-08', '2022-05-10', 2, 'Johnathon Terry II', 'elnora.jenkins@gmail.com', '1-585-336-4104', 'Kenya Medhurst', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(47, 3, '2022-05-07', '2022-05-10', 2, 'Deontae Dietrich', 'casper.mavis@yahoo.com', '+16366104493', 'Mr. Turner Langworth', 'pesan', '2022-05-04 17:00:00', '2022-05-04 17:00:00'),
(48, 3, '2022-05-11', '2022-05-12', 2, 'Nola Klein', 'gkohler@yahoo.com', '1-541-955-7871', 'Leilani Moore II', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(49, 1, '2022-05-05', '2022-05-07', 2, 'Miss Alivia Walker', 'jdurgan@yahoo.com', '931.423.8519', 'Tressie Erdman', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(50, 1, '2022-05-15', '2022-05-16', 2, 'Alexandre Lind', 'pedro.rolfson@gmail.com', '534.517.4924', 'Mr. Javier Hansen II', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(51, 3, '2022-05-14', '2022-05-17', 2, 'Kody Jast', 'tjacobi@yahoo.com', '321-982-7689', 'Isabella Lynch', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(52, 3, '2022-05-04', '2022-05-07', 2, 'Mr. Aidan Schulist PhD', 'rosamond.nienow@yahoo.com', '1-681-328-3636', 'Ms. Ardella Pouros', 'pesan', '2022-04-30 17:00:00', '2022-04-30 17:00:00'),
(53, 1, '2022-05-10', '2022-05-11', 1, 'Lorena Wisozk DDS', 'cletus.maggio@gmail.com', '740.246.5404', 'Miss Freda Ullrich DDS', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(54, 3, '2022-05-17', '2022-05-18', 1, 'Khalid McCullough', 'ritchie.petra@hotmail.com', '1-224-527-9765', 'Ms. Erna Heathcote DDS', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(55, 3, '2022-05-06', '2022-05-07', 2, 'Wanda Towne', 'uhammes@hotmail.com', '(207) 481-5888', 'Dr. Shawn Walsh IV', 'pesan', '2022-05-04 17:00:00', '2022-05-04 17:00:00'),
(56, 3, '2022-05-16', '2022-05-18', 2, 'Mrs. Ana Paucek III', 'ivah.block@gmail.com', '+1-281-314-6023', 'Mrs. Coralie Dietrich', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(57, 2, '2022-05-08', '2022-05-10', 1, 'Annabell Auer', 'skiles.tianna@yahoo.com', '+12052200797', 'Dr. Nicolas Pollich Sr.', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(58, 2, '2022-05-07', '2022-05-10', 2, 'Makenzie Christiansen', 'nelson.hammes@gmail.com', '434.529.7850', 'Mrs. Graciela Lakin I', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(59, 2, '2022-05-04', '2022-05-07', 2, 'Melody Grant', 'savanah06@yahoo.com', '+1-678-684-6661', 'Mr. Adrian Langosh III', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(60, 1, '2022-05-15', '2022-05-16', 2, 'Berenice Gerhold Jr.', 'carmella67@hotmail.com', '1-215-508-1234', 'Mr. Freeman Brakus Jr.', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(61, 3, '2022-05-14', '2022-05-15', 2, 'Brenden Bins Sr.', 'vleannon@hotmail.com', '+15514531231', 'Audrey Kuphal', 'pesan', '2022-05-10 17:00:00', '2022-05-10 17:00:00'),
(62, 1, '2022-05-03', '2022-05-05', 1, 'Ms. Albertha Franecki II', 'weissnat.alvena@hotmail.com', '1-256-467-2694', 'Damon Gottlieb I', 'pesan', '2022-04-30 17:00:00', '2022-04-30 17:00:00'),
(63, 3, '2022-05-14', '2022-05-15', 2, 'Elsie Weissnat', 'caterina.schmitt@gmail.com', '417.412.5910', 'Elinore Waters MD', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(64, 2, '2022-05-12', '2022-05-14', 1, 'Lonzo Hermiston', 'baby68@hotmail.com', '(586) 692-8725', 'Mathias Okuneva', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(65, 3, '2022-05-11', '2022-05-12', 2, 'Ms. Elnora Price I', 'ortiz.amya@gmail.com', '+1 (857) 539-1379', 'Maryse Kiehn', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(66, 1, '2022-05-05', '2022-05-08', 2, 'Dr. Daisha Luettgen', 'ken.morar@hotmail.com', '1-303-414-2559', 'Dr. Wyatt Labadie', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(67, 1, '2022-05-13', '2022-05-16', 1, 'Emmalee Bahringer', 'schiller.marlene@gmail.com', '838-549-7805', 'Dr. Josianne Lind', 'pesan', '2022-05-10 17:00:00', '2022-05-10 17:00:00'),
(68, 1, '2022-05-07', '2022-05-08', 2, 'Walton Flatley', 'malvina56@yahoo.com', '+1 (341) 838-0759', 'Marlin Kris', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(69, 3, '2022-05-17', '2022-05-18', 1, 'Alysson Purdy', 'joy24@yahoo.com', '408-965-4812', 'Dr. Vicenta Lockman II', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(70, 3, '2022-05-06', '2022-05-09', 1, 'Clare Gerhold', 'royal26@gmail.com', '+1-520-743-4256', 'Guido Hettinger', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(71, 2, '2022-05-15', '2022-05-18', 2, 'Waino Gleichner', 'tillman.charley@yahoo.com', '+14237520545', 'Joel VonRueden', 'pesan', '2022-05-11 17:00:00', '2022-05-11 17:00:00'),
(72, 1, '2022-05-10', '2022-05-13', 2, 'Charlie Metz MD', 'franecki.cordie@yahoo.com', '+1-628-613-4777', 'Luna Marquardt', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(73, 3, '2022-05-09', '2022-05-11', 1, 'Mr. Quinn Mante III', 'justyn21@gmail.com', '(445) 430-8576', 'Morgan Gleichner Sr.', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(74, 2, '2022-05-06', '2022-05-07', 2, 'Miss Laurine West MD', 'ynader@hotmail.com', '878.343.8304', 'Jaylen Wintheiser', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(75, 2, '2022-05-08', '2022-05-10', 2, 'Alfonso Mraz', 'dudley83@gmail.com', '+1-678-708-4982', 'Cassidy Kohler', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(76, 1, '2022-05-11', '2022-05-13', 2, 'Jonatan Feeney', 'ywiegand@gmail.com', '734.774.0710', 'Willa Corwin', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(77, 1, '2022-05-10', '2022-05-11', 1, 'Gerardo Kautzer', 'lynch.elna@hotmail.com', '+1-240-697-9234', 'Jerry Homenick', 'pesan', '2022-05-07 17:00:00', '2022-05-07 17:00:00'),
(78, 3, '2022-05-17', '2022-05-19', 2, 'Imogene Morissette', 'macejkovic.kale@hotmail.com', '434-354-0850', 'Irving Auer', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(79, 3, '2022-05-04', '2022-05-05', 1, 'Dr. Darrin Hackett', 'qflatley@gmail.com', '(860) 659-9180', 'Aliya Steuber V', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(80, 3, '2022-05-10', '2022-05-11', 2, 'Dr. Billie Zemlak MD', 'kmante@hotmail.com', '626-281-9957', 'Dr. Luigi Kassulke III', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(81, 2, '2022-05-13', '2022-05-15', 2, 'Breanna Harber', 'rosenbaum.phoebe@yahoo.com', '458-672-6130', 'Gerard Runolfsdottir III', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(82, 3, '2022-05-16', '2022-05-17', 1, 'Mrs. Amelie Jenkins I', 'zjerde@hotmail.com', '707.919.5108', 'Lauriane Romaguera DVM', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(83, 1, '2022-05-08', '2022-05-10', 1, 'Lolita Gaylord', 'kathryn55@yahoo.com', '(720) 877-9709', 'Dudley Torphy', 'pesan', '2022-05-04 17:00:00', '2022-05-04 17:00:00'),
(84, 3, '2022-05-12', '2022-05-13', 2, 'Garrick O\'Conner', 'theathcote@hotmail.com', '+1.814.223.1534', 'Kitty Marquardt', 'pesan', '2022-05-08 17:00:00', '2022-05-08 17:00:00'),
(85, 2, '2022-05-04', '2022-05-07', 1, 'Earnestine Kuhn', 'schulist.dillan@yahoo.com', '(808) 580-9606', 'Mr. Javonte Frami I', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(86, 1, '2022-05-04', '2022-05-05', 1, 'Lela Jaskolski', 'milford35@gmail.com', '(484) 771-8510', 'Mertie Kulas', 'pesan', '2022-04-30 17:00:00', '2022-04-30 17:00:00'),
(87, 3, '2022-05-14', '2022-05-16', 2, 'Dr. Tate Gaylord', 'philip.jacobson@gmail.com', '319.680.2827', 'Jaime Ledner', 'pesan', '2022-05-11 17:00:00', '2022-05-11 17:00:00'),
(88, 1, '2022-05-06', '2022-05-09', 1, 'Clyde Ullrich', 'jerrold92@gmail.com', '380-213-2350', 'Easter Lockman', 'pesan', '2022-05-03 17:00:00', '2022-05-03 17:00:00'),
(89, 1, '2022-05-15', '2022-05-18', 1, 'Gavin Pouros', 'amber.botsford@gmail.com', '+1-360-718-9454', 'Jessy Greenfelder', 'pesan', '2022-05-11 17:00:00', '2022-05-11 17:00:00'),
(90, 3, '2022-05-08', '2022-05-10', 1, 'Ottilie Swaniawski', 'wiza.rosamond@hotmail.com', '(786) 243-9065', 'Miss Kassandra Mayer', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(91, 1, '2022-05-16', '2022-05-18', 2, 'Leta Langosh DDS', 'hagenes.nash@yahoo.com', '+1-424-439-7026', 'Prof. Blake Klein', 'pesan', '2022-05-12 17:00:00', '2022-05-12 17:00:00'),
(92, 3, '2022-05-11', '2022-05-13', 2, 'Mrs. Helena Schoen MD', 'brodriguez@gmail.com', '831-381-6356', 'Mikel Satterfield', 'pesan', '2022-05-09 17:00:00', '2022-05-09 17:00:00'),
(93, 3, '2022-05-08', '2022-05-09', 1, 'Wiley Greenholt', 'emanuel66@yahoo.com', '1-341-246-0202', 'Aglae Fadel', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(94, 1, '2022-05-08', '2022-05-11', 1, 'Mr. Garnett Walter', 'russel.wade@yahoo.com', '779-955-6366', 'Prof. Candelario Davis Sr.', 'pesan', '2022-05-05 17:00:00', '2022-05-05 17:00:00'),
(95, 1, '2022-05-16', '2022-05-17', 2, 'Mr. Doris Doyle', 'kaylah10@yahoo.com', '+16826421599', 'Pauline Thompson', 'pesan', '2022-05-13 17:00:00', '2022-05-13 17:00:00'),
(96, 2, '2022-05-10', '2022-05-12', 2, 'Mrs. Maria Hessel', 'kgerhold@yahoo.com', '341-215-3922', 'Nicklaus Considine', 'pesan', '2022-05-06 17:00:00', '2022-05-06 17:00:00'),
(97, 2, '2022-05-17', '2022-05-19', 2, 'Ms. Orpha Lubowitz', 'aiyana90@hotmail.com', '+1-847-629-4921', 'Bennie Kreiger', 'pesan', '2022-05-15 17:00:00', '2022-05-15 17:00:00'),
(98, 3, '2022-05-05', '2022-05-06', 1, 'Yessenia Boyle I', 'roberts.cameron@gmail.com', '+1-318-740-3642', 'Prof. Arne Schroeder IV', 'pesan', '2022-05-01 17:00:00', '2022-05-01 17:00:00'),
(99, 3, '2022-05-05', '2022-05-06', 2, 'Darian Runolfsson', 'irodriguez@yahoo.com', '(612) 644-5318', 'Maritza Kohler', 'pesan', '2022-05-02 17:00:00', '2022-05-02 17:00:00'),
(100, 3, '2022-05-16', '2022-05-17', 1, 'Brain Cummings', 'hartmann.shawna@gmail.com', '+1.774.760.4267', 'Mrs. Pat Leffler', 'pesan', '2022-05-14 17:00:00', '2022-05-14 17:00:00'),
(101, 1, '2022-05-23', '2022-05-24', 1, 'Jungkook', 'jungkook@gmail.com', '12345678900', 'Jungkook', 'pesan', '2022-05-21 20:44:09', '2022-05-21 20:44:09'),
(102, 1, '2022-05-31', '2022-06-02', 2, 'Namjoon', 'namjoon@gmail.com', '12345678909', 'Namjoon', 'checkout', '2022-05-28 20:20:56', '2022-05-31 20:15:06'),
(103, 1, '2022-05-31', '2022-06-02', 2, 'Namjoon', 'namjoon@gmail.com', '12345678909', 'Namjoon', 'pesan', '2022-05-28 20:22:36', '2022-05-28 20:22:36'),
(104, 1, '2022-05-31', '2022-06-02', 2, 'Namjoon', 'namjoon@gmail.com', '12345678909', 'Namjoon', 'pesan', '2022-05-28 20:23:13', '2022-05-28 20:23:13'),
(105, 1, '2022-05-31', '2022-06-01', 2, 'Jimin', 'jimin@gmail.com', '123456789088', 'Jimin', 'pesan', '2022-05-30 05:34:33', '2022-05-30 05:34:33'),
(106, 1, '2022-06-02', '2022-06-03', 2, 'Suga', 'suga@gmail.com', '2436576947545', 'yoongi', 'pesan', '2022-05-31 20:02:12', '2022-05-31 20:02:12'),
(107, 4, '2022-06-04', '2022-06-06', 1, 'Seokjin', 'jin@gmail.com', '234675865', 'jinnie', 'pesan', '2022-05-31 21:38:33', '2022-05-31 21:38:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
