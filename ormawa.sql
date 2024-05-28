-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Jun 2023 pada 16.01
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ormawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add barang', 7, 'add_barang'),
(26, 'Can change barang', 7, 'change_barang'),
(27, 'Can delete barang', 7, 'delete_barang'),
(28, 'Can view barang', 7, 'view_barang'),
(29, 'Can add ormawa', 8, 'add_ormawa'),
(30, 'Can change ormawa', 8, 'change_ormawa'),
(31, 'Can delete ormawa', 8, 'delete_ormawa'),
(32, 'Can view ormawa', 8, 'view_ormawa'),
(33, 'Can add request peminjaman', 9, 'add_requestpeminjaman'),
(34, 'Can change request peminjaman', 9, 'change_requestpeminjaman'),
(35, 'Can delete request peminjaman', 9, 'delete_requestpeminjaman'),
(36, 'Can view request peminjaman', 9, 'view_requestpeminjaman'),
(37, 'Can add unit kerja', 10, 'add_unitkerja'),
(38, 'Can change unit kerja', 10, 'change_unitkerja'),
(39, 'Can delete unit kerja', 10, 'delete_unitkerja'),
(40, 'Can view unit kerja', 10, 'view_unitkerja'),
(41, 'Can add transaksi', 11, 'add_transaksi'),
(42, 'Can change transaksi', 11, 'change_transaksi'),
(43, 'Can delete transaksi', 11, 'delete_transaksi'),
(44, 'Can view transaksi', 11, 'view_transaksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ZEztoI0B6pzbM1og20bR83$6aO4+Ay/omXIcjDYkrkchBE4VYU+OCO6KFZKWXRuqm8=', '2023-06-07 11:23:51.747902', 1, 'admin', '', '', 'admin@yaho.com', 1, 1, '2023-05-26 00:49:40.651150'),
(6, 'pbkdf2_sha256$600000$rarn0cWJ0t0br1soUmQOvz$MGZXMUuQbvldtuSuMLPT1iA1FEYW5/eXd+yDZ4kyVQ8=', '2023-06-07 13:59:15.964435', 1, 'hmif', '', '', 'hmif@gmail.com', 1, 1, '2023-06-07 11:25:02.556346'),
(7, 'pbkdf2_sha256$600000$rwuQEGp5kE14CFbnwFPkBD$nF+2b7Yry5Kz1RIzThHangOp35b3DlLava/b0I+rl9M=', '2023-06-07 13:41:19.696047', 1, 'hmsi', '', '', 'hmsi@gmail.com', 1, 1, '2023-06-07 11:25:14.408819'),
(5, 'pbkdf2_sha256$600000$3ZPELW2n2uZOMlDI6PZ2vp$nYKYxeL72o4OXK7Od4N9gxPb+Y+qoNc+G6KsJ84y530=', '2023-06-07 13:57:01.904405', 1, 'bem', '', '', 'bem@gmail.com', 1, 1, '2023-06-07 11:24:48.621455');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-26 01:14:52.797791', 'B1', 'Barang object (B1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-05-26 01:15:07.642437', 'B2', 'Barang object (B2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-05-26 01:15:21.765983', 'B3', 'Barang object (B3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-05-26 01:15:42.980995', '1', 'UnitKerja object (1)', 1, '[{\"added\": {}}]', 10, 1),
(5, '2023-05-26 01:15:56.031471', '2', 'UnitKerja object (2)', 1, '[{\"added\": {}}]', 10, 1),
(6, '2023-05-26 01:16:17.990352', 'OR1', 'Ormawa object (OR1)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-05-26 01:16:46.610168', 'OR2', 'Ormawa object (OR2)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-05-26 02:44:34.670157', '1', 'Transaksi object (1)', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-05-26 02:45:20.593502', '1', 'Transaksi object (1)', 3, '', 11, 1),
(10, '2023-05-26 02:46:17.108813', '2', 'Transaksi object (2)', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-05-28 02:41:53.077916', '3', 'Transaksi object (3)', 1, '[{\"added\": {}}]', 11, 1),
(12, '2023-05-28 02:44:32.848916', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(13, '2023-05-28 02:53:09.341625', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(14, '2023-05-28 13:28:02.372868', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(15, '2023-05-30 07:38:05.698282', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(16, '2023-05-30 23:48:46.426344', '3', 'RequestPeminjaman object (3)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-05-30 23:49:25.987067', '4', 'Transaksi object (4)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2023-05-30 23:56:16.264452', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(19, '2023-05-30 23:57:11.423356', '2', 'RequestPeminjaman object (2)', 2, '[{\"changed\": {\"fields\": [\"Tgl kembali\"]}}]', 9, 1),
(20, '2023-06-01 15:53:05.678035', '3', 'UnitKerja object (3)', 1, '[{\"added\": {}}]', 10, 1),
(21, '2023-06-01 15:53:18.890827', '4', 'UnitKerja object (4)', 1, '[{\"added\": {}}]', 10, 1),
(22, '2023-06-01 15:53:31.735859', '5', 'UnitKerja object (5)', 1, '[{\"added\": {}}]', 10, 1),
(23, '2023-06-01 15:55:06.480415', 'OR3', 'Ormawa object (OR3)', 1, '[{\"added\": {}}]', 8, 1),
(24, '2023-06-06 08:11:43.254071', '5', 'RequestPeminjaman object (5)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2023-06-06 09:47:29.106876', 'OR1', 'Ormawa object (OR1)', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 8, 1),
(47, '2023-06-07 11:26:28.436155', 'OR3', 'Ormawa object (OR3)', 1, '[{\"added\": {}}]', 8, 1),
(46, '2023-06-07 11:26:12.150117', 'OR2', 'Ormawa object (OR2)', 1, '[{\"added\": {}}]', 8, 1),
(45, '2023-06-07 11:25:52.771367', 'OR1', 'Ormawa object (OR1)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'inventory', 'barang'),
(8, 'inventory', 'ormawa'),
(9, 'inventory', 'requestpeminjaman'),
(10, 'inventory', 'unitkerja'),
(11, 'inventory', 'transaksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-26 00:41:23.783407'),
(2, 'auth', '0001_initial', '2023-05-26 00:41:26.099557'),
(3, 'admin', '0001_initial', '2023-05-26 00:41:26.582563'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-26 00:41:26.639554'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-26 00:41:26.693564'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-26 00:41:27.000559'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-26 00:41:27.164569'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-26 00:41:27.333559'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-26 00:41:27.386559'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-26 00:41:27.549563'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-26 00:41:27.566569'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-26 00:41:27.619560'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-26 00:41:27.783561'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-26 00:41:27.929559'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-26 00:41:28.104568'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-26 00:41:28.167553'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-26 00:41:28.316555'),
(18, 'inventory', '0001_initial', '2023-05-26 00:41:29.303567'),
(19, 'sessions', '0001_initial', '2023-05-26 00:41:29.476556'),
(20, 'inventory', '0002_remove_ormawa_ketua_ormawa_user', '2023-06-05 17:52:53.949129'),
(21, 'inventory', '0003_remove_ormawa_ketua_alter_ormawa_user', '2023-06-07 13:58:46.219905');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('09r308n8ogkoy71iz7cj02acnb0p4rux', '.eJxVjDsOwjAQRO_iGll2iH-U9JzB2s2ucQDZUpxUiLvjSClA0817M28RYVtz3BovcSZxEVqcfjuE6cllB_SAcq9yqmVdZpS7Ig_a5K0Sv66H-3eQoeW-Ns55n9C4Hk9nYk2gBs0Ygh4YMdkQTMfBogVlUemRTWLDVo2JlROfL9idN7w:1q2Lf1:xIK6LkirpHasW-NkXCcUVy_dZljGA-44NIcGQA5KuVc', '2023-06-09 00:50:27.835342'),
('4crm6yjvexwg5ulapm261m6tihoagivk', '.eJxVjDsOwjAQRO_iGll2iH-U9JzB2s2ucQDZUpxUiLvjSClA0817M28RYVtz3BovcSZxEVqcfjuE6cllB_SAcq9yqmVdZpS7Ig_a5K0Sv66H-3eQoeW-Ns55n9C4Hk9nYk2gBs0Ygh4YMdkQTMfBogVlUemRTWLDVo2JlROfL9idN7w:1q2nLz:6IlhqFAtfxez2bbz71C-7aCOjY-Eb3LzdIfKIxtRpKY', '2023-06-10 06:24:39.985814'),
('8il9pd0a58d5m5tsbqmqyv2h0lq01m3y', '.eJxVjDsOwjAQRO_iGll2iH-U9JzB2s2ucQDZUpxUiLvjSClA0817M28RYVtz3BovcSZxEVqcfjuE6cllB_SAcq9yqmVdZpS7Ig_a5K0Sv66H-3eQoeW-Ns55n9C4Hk9nYk2gBs0Ygh4YMdkQTMfBogVlUemRTWLDVo2JlROfL9idN7w:1q4ke3:Xy_QRAbWGJ2AsJ0qHRDiwwoWDAv7sR3nGsGUCjpoPqo', '2023-06-15 15:55:23.933090'),
('1j1fv4bb6qeh2gaf2cz9iz4vmtxs7rup', 'e30:1q5GNd:gnAlB535l3yjuSY1LF045_F1-nZA5qcOaSdgmjX1fkQ', '2023-06-17 01:48:33.002153'),
('c07v5ke53z1slux8tm1sczpncrdejgnn', '.eJxVjDsOwjAQBe_iGlnG6y8lfc4QbXbXOIASKU4qxN0hUgpo38y8l-pxW2u_NVn6kdVFndXpdxuQHjLtgO843WZN87Qu46B3RR-06W5meV4P9--gYqvf2iNnydEnMpYdFXBYSFzgIFnARk9QBihRCChwNDa5ZAidBAYv2aj3BwDYOHY:1q6pG9:KXOmY-vMv8SXVd7b9qDb9nGaPa4LlfPuV_XzVtni-qE', '2023-06-21 09:15:17.634323'),
('5tqs9oc5ofuu4apvg2e2muytkle4nwrc', '.eJxVjMsOwiAQRf-FtSEODI-6dN9vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhYXYcXpd4uUHrntgO_UbrNMc1uXKcpdkQftcpw5P6-H-3dQqddvTQB0jmVwjBgJvSWTQBXlVWG2RBq0cdZorxHRFDdYHRMWyACOFRbx_gDgJzdt:1q6tgx:KxhhxZpPCQSImFHPvMDR_01B-0Vg6yL9R3wI9i5lkJk', '2023-06-21 13:59:15.965442');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_barang`
--

CREATE TABLE `inventory_barang` (
  `id_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jml_stok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `inventory_barang`
--

INSERT INTO `inventory_barang` (`id_barang`, `nama_barang`, `jml_stok`) VALUES
('B1', 'PROYEKTOR', 10),
('B2', 'TIKAR', 20),
('B3', 'Mic', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_ormawa`
--

CREATE TABLE `inventory_ormawa` (
  `id_ormawa` varchar(50) NOT NULL,
  `nama_ormawa` varchar(255) NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `unitkerja_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `inventory_ormawa`
--

INSERT INTO `inventory_ormawa` (`id_ormawa`, `nama_ormawa`, `no_hp`, `unitkerja_id`, `user_id`) VALUES
('OR2', 'hmif', '081234567891', 1, 6),
('OR3', 'hmsi', '081234567895', 3, 7),
('OR1', 'bem', '081234567892', 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_requestpeminjaman`
--

CREATE TABLE `inventory_requestpeminjaman` (
  `id` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_pinjam` datetime(6) NOT NULL,
  `tgl_kembali` datetime(6) NOT NULL,
  `barang_id` varchar(50) NOT NULL,
  `ormawa_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `inventory_requestpeminjaman`
--

INSERT INTO `inventory_requestpeminjaman` (`id`, `jumlah`, `tgl_pinjam`, `tgl_kembali`, `barang_id`, `ormawa_id`) VALUES
(6, 2, '2023-06-07 11:41:31.000000', '2023-06-08 11:41:55.000000', 'B2', 'OR2'),
(16, 4, '2023-06-07 13:39:55.000000', '2023-06-09 00:00:00.000000', 'B1', 'OR2'),
(15, 2, '2023-06-07 13:39:25.000000', '2023-06-08 12:56:25.000000', 'B2', 'OR2'),
(17, 4, '2023-06-07 13:41:23.000000', '2023-06-12 00:00:00.000000', 'B1', 'OR3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_transaksi`
--

CREATE TABLE `inventory_transaksi` (
  `id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `alasan` varchar(225) NOT NULL,
  `id_request_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory_unitkerja`
--

CREATE TABLE `inventory_unitkerja` (
  `id` bigint(20) NOT NULL,
  `nama_unitKerja` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `inventory_unitkerja`
--

INSERT INTO `inventory_unitkerja` (`id`, `nama_unitKerja`) VALUES
(1, 'Informatika'),
(2, 'FTTI'),
(3, 'Sistem Informasi'),
(4, 'Teknologi Informasi'),
(5, 'Teknik Industri');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `inventory_barang`
--
ALTER TABLE `inventory_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `inventory_ormawa`
--
ALTER TABLE `inventory_ormawa`
  ADD PRIMARY KEY (`id_ormawa`),
  ADD KEY `inventory_ormawa_unitkerja_id_d63f577b` (`unitkerja_id`),
  ADD KEY `inventory_ormawa_user_id_bbde812f` (`user_id`);

--
-- Indeks untuk tabel `inventory_requestpeminjaman`
--
ALTER TABLE `inventory_requestpeminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_requestpeminjaman_barang_id_27fbcba3` (`barang_id`),
  ADD KEY `inventory_requestpeminjaman_ormawa_id_f0537d14` (`ormawa_id`);

--
-- Indeks untuk tabel `inventory_transaksi`
--
ALTER TABLE `inventory_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_transaksi_id_request_id_a212e0e1` (`id_request_id`);

--
-- Indeks untuk tabel `inventory_unitkerja`
--
ALTER TABLE `inventory_unitkerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `inventory_requestpeminjaman`
--
ALTER TABLE `inventory_requestpeminjaman`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `inventory_transaksi`
--
ALTER TABLE `inventory_transaksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `inventory_unitkerja`
--
ALTER TABLE `inventory_unitkerja`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
