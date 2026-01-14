-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2026 pada 23.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `image` text DEFAULT NULL,
  `qty` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_items`
--

CREATE TABLE `product_items` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `promo` double NOT NULL,
  `description` varchar(150) NOT NULL,
  `images` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `vendors` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_items`
--

INSERT INTO `product_items` (`id`, `name`, `price`, `promo`, `description`, `images`, `stock`, `vendors`, `category`) VALUES
(1, 'Mesin Cuci Twin Tube 20 Kg QW-2070HT ', 1110663, 1000000, 'AQUA Elektronik Mesin Cuci Twin Tube 20 Kg QW-1370HT memiliki fitur Dynamic Balance Technology, ABT Pulsator, Air Dry - Stainless Steel Spin Tub, Hija', 'https://aiostore.co.id/wp-content/uploads/2025/12/QW-2070HT-LEFT-1024x1024.jpg', 229, 'GITA ELEKTRONIK 8199', 'Elektronik'),
(2, 'Samsung Tab Pro14', 1.379, 1000000, 'Tablet PC Baru Android murah 12.1inch 16GB+512GB Wifi 4G/5G Dual SIM smart Tablets 128GB Untuk Anak Belajar hp tablet gaming tab Bluetooth Layar - Ung', 'https://id-live-01.slatic.net/p/211935a9c3197a5d2bd27a96f7b190f9.jpg', 28, ' Smart tablets A', 'Elektronik'),
(3, 'Samsung Smartwatch Watch 9', 899000, 179800, 'Layar : 2.2” HD AMOLED 468*568 Pixel Ukuran : 49*44*14.4mm CPU : W9 Chip\r\n erat : 50g Watch case : Alloy Watch band : Silikon Pengecesan : NirkabelBlu', 'https://img.lazcdn.com/g/ff/kf/S54ad4f57dac8499ba7a66f16d5d5c0baL.jpg_720x720q80.jpg', 33, 'beautymakeupskinshop.', 'Elektronik'),
(4, 'HUAWEI MatePad SE 11\"', 2699000, 2299000, '11-inches Eye Comfort HUAWEI FullView Display\r\n475g, 6.9mm Metal Unibody Design dengan Tampilan Premium dan Kuat Baterai 7,700 mAh and 22.5 W Fast Cha', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-176169784/huawei_huawei_matepad_se_11_full01_cohpctk3.jpg', 56, 'Huawei Indonesia', 'Elektronik'),
(5, 'Smart HY300-A Projector', 1500000, 1000000, 'Model‎: HY300A Lumen: 6000 Lumens Resolusi Layar: 1280 x 720P Tegangan: 260V (AC)Watt: 60W Sistem Operasi: Android RAM 2/16 Gb Wifi: Wifi 6 Bluetooth:', 'https://m.media-amazon.com/images/I/519qw7On-vL.jpg', 22, 'Smad Tech Indonesia', 'Elektronik'),
(6, 'TV Android TV Smart 32 inch TV Digital 4', 1000110, 999900, 'TV Android TV Smart 32 inch TV Digital 43 inch 4K adalah produk TV yang memiliki banyak keuntungan dan fitur yang lengkap. TV ini dilengkapi dengan si', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/MTA-3964316/changhong_changhong_l32h4_android_smart_tv_led_-32_inch-_google_certified-__hd_digital-_unit_only_hitam__bali_full01_e5oqytp7.jpeg', 18, ' emak wiwin', 'Elektronik'),
(7, 'Kaos polo shirt zipper', 60000, 50000, 'Dilengkapi zipper yang menambah kesan stylish. Model slimfit dengan ujung bawah baju membentuk curve. Dengan zipper, kaos polo lebih terkesan stylish.', 'https://moko.co.id/wp-content/uploads/2017/01/polo-shirt-zipper-white-blue-a-moko-konveksi.jpg', 17, 'Cogan Clothies', 'Baju Pria'),
(8, ' Flexitee Oversize T-Shirt', 89500, 80000, 'Potongan oversize-nya kasih look yang kekinian dan effortless, cocok buat kamu yang suka tampil chill tapi tetap keren. Plus, bahannya tebal tapi teta', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/760575ad60f842fc8633b7a7e0efb664~.jpeg', 50, 'Broguy_NEW', 'Baju Pria'),
(9, 'Kaos Polo Shirt Pria Kaos Polo Pria Kaos', 222250, 899000, 'Polo Shirt Pria Terbaru dengan kualitas premium. Bahan katun CVC, tebal tidak menerawang. Pola dan jahitan rapi, tidak luntur. Kaos kerah berkancing, ', 'https://houseofsmith.co.id/wp-content/uploads/2024/08/Union-Polo-Brown-a-1.jpg', 45, 'Polo Branded', 'Baju Pria'),
(10, 'KAOS POLO SHIRT RUGBY LOS ANGLES NICE', 62350, 60000, 'Deskripsi ProdukThe Best Material. Thenational Oversize Polo Shirt Unisex dibuat menggunakan 100% bahan cotton combed 24s dengan jahitan rapi', 'https://dynamic.zacdn.com/4v2Bf4C3jRqM6IWbSjYeCqtOmDo=/filters:quality(70):format(webp)/https://static-id.zacdn.com/p/ootdsupply-1206-4643244-1.jpg', 46, 'Alysafashion', 'Baju Pria'),
(11, 'Workhiet Kemeja Black Boxy. Do Not bey B', 250000, 87500, 'EDINAL Workshirt Zipper Black boxy Material : Katun DRILL Print: l/ BORDEL Sebelum melakukan Transaksi di Harapkan untuk mengkonfirmasi ketersediaan', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/9236197cc8cf4d99926ad6add66e9631~.jpeg', 30, 'Edinal efficial store', 'Baju Pria'),
(12, 'Tshirt Mineral Blue Rocket Coyote - Kaos', 210000, 889900, '𝖱𝖾𝗀𝗎𝗅𝖺𝗋 𝖥𝗂𝗍 – 𝖯𝗈𝗍𝗈𝗇𝗀𝖺𝗇 𝗉𝖺𝗌 𝗎𝗇𝗍𝗎𝗄 𝗍𝖺𝗆𝗉𝗂𝗅𝖺𝗇 𝗄𝖺𝗌𝗎𝖺𝗅 𝗒𝖺𝗇𝗀 𝗌𝗍𝗒𝗅𝗂𝗌𝗁𝖴𝗇𝗂𝗌𝖾𝗑 – 𝖢𝗈𝖼𝗈𝗄 𝖽𝗂𝗉𝖺𝗄𝖺𝗂 𝗉𝗋𝗂𝖺 𝗆𝖺𝗎𝗉𝗎𝗇 𝗐𝖺𝗇𝗂𝗍𝖺𝖣𝖾𝗍𝖺𝗂𝗅 𝖤𝗄𝗌𝗄𝗅𝗎𝗌𝗂𝖿 – 𝖲𝖺𝖻𝗅𝗈𝗇 𝖽𝖾𝗍𝖺𝗂𝗅 𝗌𝗂𝗓𝖾 𝖽𝗂 𝖻𝖺𝗀𝗂𝖺𝗇 ', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/066c4a2b510c4bb0941ec12242702a7a~.jpeg', 48, 'Troy Company', 'Baju Pria'),
(13, 'rika Blouse Stripe Atasan Wanita Peplum ', 165000, 59999, 'Arika Blouse, desain elegan dengan lengan puff dan fit body. Cocok untuk wanita yang mencari atasan modis. Bahan semiwoll memberikan kenyamanan. Kanci', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/3994ce97933a42bb95e2eb85e5cf014c~.jpeg', 29, 'Lbitzofficial', 'Baju Wanita'),
(14, 'Midi Dress Wanita Vintage Style Korea', 199000, 189900, 'S: Ld 76-86, pinggang 56-82, panjang lengan 56, panjang dress 110M: Ld 80-90, pinggang 60-86, panjang lengan 57, panjang dress 111L: Ld 84-94, pinggan', 'https://img.lazcdn.com/g/p/ef869be5676dad9cb27557cb276d0554.jpg_720x720q80.jpg', 64, 'First_Girl', 'Baju Wanita'),
(15, 'Blazer Pink Lengan Panjang Autumn', 222000, 200000, 'CARI PRODUK TERBAIK DENGAN KUALITAS TERBAIK DAN TERJAMIN DI SINI TEMPATNYAREADY STOK SIAP KIRIMBISA BAYAR Di TEMPATGOOD QUALITYFASHIONABLE & NYAMAN', 'https://img.lazcdn.com/g/ff/kf/S1461fe1b84ec4d7b8ed80cad9f4057f65.jpg_720x720q80.jpg', 24, 'Susana Mall', 'Baju Wanita'),
(16, 'Dress Midi Casual Square Neck Mutiara', 99000, 80000, 'Cuci Gudang Dress Midi Casual Square Neck Mutiara Lengan Pendek Dada Full Karet M432 - black, SBagian dada fuul karet Bahan twill lembut dengn variasi', 'https://laz-img-sg.alicdn.com/p/3c0bc1d3db424cc5efff12de67f52d2f.jpg', 13, 'Susana Mall', 'Baju Wanita'),
(17, 'Blazer Putih Crop Elegan Cardigan Korea ', 172000, 160000, 'Size Chart Putih S Lingkar dada 96cm Panjang Lengan 54cm Panjang blazer 45cmM Lingkar dada 98cm Panjang Lengan 56cm Panjang blazer 47cmL Lingkar dada ', 'https://images.tokopedia.net/img/cache/700/o3syd0/1997/1/1/7db2ce36be354e4abbd6187e894b9c3a~.jpeg', 15, 'Susana Mall', 'Baju Wanita'),
(18, 'Long Dress Retro Biru Abstrak Batik Dres', 175000, 150000, 'S Lingkar dada 94cm Lingkar Pinggang 90cm Panjang Lengan 56cm Panjang Dress 125cmM Lingkar dada 100cm Lingkar Pinggang 92cm', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/c05c36467a5540f49ced46f83deb9224~.jpeg', 18, 'Susana Mall', 'Baju Wanita'),
(19, 'Sepatu Sneakers PRIA Casual Korean Style', 150000, 52000, 'Sepatu Sneakers ARAN Collection PRIA Casual Korean Style Cowo AR07 dari koleksi ARAN hadir dengan desain trendy yang cocok dipakai untuk kegiatan kasu', 'https://dynamic.zacdn.com/41jH_oi3yw02KqYGQSnd_wdGsfE=/filters:quality(70):format(webp)/https://static-id.zacdn.com/p/panarybody-0096-7472615-1.jpg', 4, 'ARAN Collection_NEW', 'Sepatu Pria'),
(20, 'Sepatu sneakers pria', 139000, 59000, 'BAHAN Sintetis ImportKondisi 100% Baru dengan kualitas tinggiNyaman dan awet di pakai.(panjang telapak kaki)36:23menit37: 23,5cm38: 24cm39: 24,5cm40 :', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/29bc388c68d340239307f6367d2205a8~.jpeg', 15, ' ADELIASSHOP', 'Sepatu Pria'),
(21, 'Sepatu Casual Pria Olahraga Sneakers Spo', 399000, 127500, 'Fitur : Sol Berbahan Karet Jadi Terasa Empuk & Nyaman Ketika Digunakan. Cocok Digunakan Untuk : Sekolah, Kuliah, Kerja, Traveling.\r\n', 'https://images.tokopedia.net/img/cache/700/o3syd0/1997/1/1/7c73baa0b7a7459192971cdf3e7bbaf9~.jpeg', 40, 'Leedoo', 'Sepatu Pria'),
(22, 'Oslan Black - Sepatu Pantofel Docmart', 599000, 260400, 'Sepatu Pantofel Pria  \r\nMNDY Official - Oslan Black - Sepatu Boots Loafers Pantofel Formal slip On Pria Produk berkualitas\r\nTerbuat dari bahan Synthet', 'https://id-test-11.slatic.net/p/ef663a324142d310d2449aab5f8b9e97.png', 26, 'Monday Official', 'Sepatu Pria'),
(23, 'Sepatu Slip On Hitam Pria Sepatu Kulit', 149000, 89000, 'Leedoo Sepatu Slip On Pria Sepatu Kulit Kerja Formal Sepatu Kuliah MC446', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//107/MTA-61275986/att_sepatu_karet_pantofel_full_hitam_att_ab_350_anti_slip_anti_hujan_39_40_41_42_43_full01_n7b73ebh.jpg', 22, 'Leedo', 'Sepatu Pria'),
(24, 'Sepatu Pria Sneakers Sepatu Olahraga', 199000, 89000, 'Fitur : Sol Berbahan Karet Jadi Terasa Empuk & Nyaman Ketika Digunakan.Cocok Digunakan Untuk : Sekolah, Kuliah, Kerja, Traveling, HangOutReady warna :', 'https://images.tokopedia.net/img/cache/700/o3syd0/1997/1/1/d367e8d1a5e14dc69a907ac0d4b703a4~.jpeg', 12, 'Leedo', 'Sepatu Pria'),
(25, 'Sepatu Flat Shoes Cantik Sepatu Wanita', 194700, 189999, 'Tipe: JENIFERWarna: BLACK, CREAM, MAROONSize: 35-41Material Sepatu: Super Hi-Grade LeatherMaterial Sol: Karet Anti SlipTinggi Sol: FLAT', '', 981, 'Rowey.id', 'Sepatu Wanita'),
(26, 'Junsung Sepatu Sneakers Wanita Sport Sho', 499500, 199999, 'Tinggi Sol : 3 cmMaterial : High Quality kulit SintetisMaterial Sole : Karet Non Slip\r\n', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/fc3e06c337a8431296a018611f9777d0~.jpeg', 7, 'pvnshoes', 'Sepatu Wanita'),
(27, 'Marsha Sepatu Wanita Sneakers Olahraga N', 499000, 179900, 'Nama produk : Marsha SneakersMaterial atas : Kulit sintesis high qualityMaterial bawah : Karet non-slipTinggi Sol : 5 cmReferensi Size : KECIL', 'https://p16-images-sign-sg.tokopedia-static.net/tos-alisg-i-aphluv4xwc-sg/2d0eed5275d0461fb1b04ca3fafb20d4~tplv-aphluv4xwc-white-pad-v1:1600:1600.jpeg?lk3s=0ccea506&x-expires=1765957714&x-signature=CXmHpTuKo8V4PR2LGewwRvIF0Kw%3D&x-signature-webp=SIpX2r9%2', 642, 'Sovella.id', 'Sepatu Wanita'),
(28, 'Sepatu Wanita Flat Shoes Korea Mary Jane', 185700, 150000, 'Tipe: SAMIRAWarna: BLACK, MAROON, CREAM, BROWNSize: 35-41Material Sepatu: Super Hi-Grade LeatherMaterial Sol: Karet Anti SlipTinggi Sol: FLAT', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/bfce622b32f9462b9b4f56bbb1fc82c3~.jpeg', 987, 'Rowey.id', 'Sepatu Wanita'),
(29, 'Sepatu Flat Santai Wanita.Slip-on Kerja ', 530000, 159000, 'Model slip-on yang praktis, memudahkan penggunaan sehari-hari. Ideal untuk kerja atau acara santai.\r\nSepatu loafer ini menawarkan gaya yang elegan dan', 'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/3ec5993ba41549d1bb9550496a1ab775~.jpeg', 996, 'CMATRAV', 'Sepatu Wanita'),
(30, 'Sepatu Running Original Puma Speedcat Pi', 720000, 700000, 'Perfect Kicks Quality ( 1:1 Original)Brand New In Box ( Box Original )ART CODE VALID & AUTHORIZED BY GOOGLE', 'https://p16-images-sign-sg.tokopedia-static.net/tos-alisg-i-aphluv4xwc-sg/img/VqbcmM/2025/1/22/7772a295-a165-4d85-8d11-764239aa988d.jpg~tplv-aphluv4xwc-white-pad-v1:1600:1600.jpeg?lk3s=0ccea506&x-expires=1765957397&x-signature=Q9mj%2BL7aoBDXsjyQIwEBK0Bl%2', 4, ' Luckone Sneakers', 'Sepatu Wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'res', 'res@gmail.com', '$2y$10$S4bc0Lu2WKQTlKDwvkxqq.kFtYKZ9dxPAkWkhbQYEIp'),
(4, 'tina', 'tina@gmail.com', '$2y$10$7Pos7IgWx2UwQdpB8jw3RerKfHNfadMYNP36YKZYWbI'),
(5, 'a', 'a@gmail.com', '$2y$10$85WbgG/OQ4MJt7waZ98bxuASlMVFd9qtd9SzAupX9ui'),
(6, 'w', 'w@gmail.com', '$2y$10$DVZwvrhwC.2gEgl6l/d2X.8Z1ev3SdX0j2GfH7qm2X1'),
(7, 'avriel', 'avriel@gmail.com', '$2y$10$9E4Hgq7mYAnnXHCkDj00beeePFov1u.ctWPy4LFzITCQ1Prday7Oe');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
