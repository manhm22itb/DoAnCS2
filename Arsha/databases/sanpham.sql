-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2023 lúc 04:35 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `Ten_SP` varchar(255) NOT NULL,
  `SL` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `ID_Danh_Muc` int(11) NOT NULL,
  `Hinh_Anh` varchar(255) NOT NULL,
  `Mo_Ta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten_SP`, `SL`, `Gia`, `ID_Danh_Muc`, `Hinh_Anh`, `Mo_Ta`) VALUES
(1, 'Agiparofen 525mg', 20, 50, 2, 'Agiparofen.jpg', '<p>- Hoạt chất: Acetaminophen 325mg, Ibuprofen 200mg<br />\r\n- C&ocirc;ng dụng: Giảm đau từ nhẹ đến vừa c&aacute;c chứng đau li&ecirc;n quan đến đau đầu, đau lưng, đau bụng kinh...<br />\r\n- Đối tượng sử dụng: Tr&ecirc;n 12 tuổi<br />\r\n- H&igrave;nh thức: V'),
(2, 'Eugica Fort (hộp 10 vỉ x 10 viên nang mềm)', 50, 80, 2, 'EugicaFort.jpg', '<p>- Hoạt t&iacute;nh: Eucalyptol 100mg, Tinh dầu tr&agrave;m 50mg, Menthol 0,5mg, Tinh dầu tần 0,36mg, Tinh dầu gừng 0,75mg.<br />\r\n- C&ocirc;ng dụng: Điều trị c&aacute;c chứng ho, đau họng, sổ mũi, cảm c&uacute;m.<br />\r\n- Đối tượng sử dụng: Người lớn.<'),
(3, 'Nước khoáng làm dịu và bảo vệ da La Roche-Posay Thermal Spring Water 150ml', 10, 250, 3, 'La Roche-Posay Thermal Spring Water.jpg', '<p>Th&agrave;nh phần</p>\r\n\r\n<p>Nguồn nước kho&aacute;ng giàu Selenium &amp; Silica.</p>\r\n\r\n<p>Xem chi tiết th&agrave;nh phần tr&ecirc;n bao b&igrave; sản phẩm.</p>\r\n\r\n<p>Đặc t&iacute;nh: Kh&ocirc;ng chứa paraben.</p>\r\n\r\n<p>C&ocirc;ng dụng</p>\r\n\r\n<p>Nước '),
(4, 'Avarino (Hộp 5 vỉ x 10 viên)', 10, 137, 2, 'Avarino.jpg', '<p><strong>Th&agrave;nh phần:</strong><br />\r\n- Hoạt chất: Simethicone 300mg, Alverine citrate 60mg.<br />\r\n- T&aacute; dược: Silicon dioxide, Gelatin, Glycerin, nước tinh khiết, oxyd sắt v&agrave;ng, xanh Briliant, oxyd sắt đen, titanium dioxide.<br />\r\n'),
(5, 'Axe Brand Inhaler (1.7g)', 10, 93, 2, 'Axe Brand Inhaler.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nMột ống h&iacute;t mũi trọng lượng trung b&igrave;nh 1.7g<br />\r\n- Hoạt chất: Menthol Crystal 850mg, Eucalyptus Oil 85mg, Camphor 102mg.<br />\r\n- T&aacute; dược: Essential Oil, Industrial Methylated Spirit, nướ'),
(6, 'Berocca Performance (10 viên/tuýp)', 10, 75, 2, 'Berocca Performance.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Mỗi vi&ecirc;n n&eacute;n chứa: Vitamin B1 (thiamine): 15,00mg, Vitamin B2 (riboflavin): 15,00mg, Vitamin B6 (pyridoxine): 10,00mg, Vitamin B12 (cyanocobalamin): 0,01mg, Vitamin B3 (nicotinamid): 50,00mg , Vi'),
(7, 'Bifehema (Hộp 20 ống)', 50, 61, 2, 'Bifehema.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCho 1 ống 10 ml dung dịch uống:<br />\r\n<strong>Hoạt chất:</strong><br />\r\n- Sắt (dưới dạng sắt gluconat).............................................50 mg<br />\r\n- Đồng (dưới dạng đồng gluconat)................'),
(8, 'Cabovis Thanh nhiệt giải độc (Hộp 5 vỉ x 10 viên)', 50, 50, 2, 'Cabovis Thanh nhiệt giải độc.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCho 1 vi&ecirc;n:<br />\r\nCao Cabovis 124.62mg<br />\r\nTương đương với:<br />\r\n- Thạch cao (Gypsum fibrosum) 200mg<br />\r\n- Ho&agrave;ng cầm (Radix Scutellariae) 150mg<br />\r\n- C&aacute;t c&aacute;nh (Radix Platy'),
(9, 'Coldacmin Flu (Hộp 10 vỉ x 10 viên)', 100, 33, 2, 'Coldacmin Flu.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nParacetamol 325mg<br />\r\nClorpheniramin maleat 2mg<br />\r\nT&aacute; dược vừa đủ 1 vi&ecirc;n (Tinh bột m&igrave;, PVA, đường trắng, m&agrave;u đỏ erythrosin, m&agrave;u v&agrave;ng tartrazin)<br />\r\nParacetamol'),
(10, 'Dầu gió nâu Pharmedic (Chai 3ml)', 20, 10, 2, 'Dầu gió nâu Pharmedic.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nTh&agrave;nh phần hoạt chất: Menthol 8g; Methyl salicylat 2g; Tinh dầu bạc h&agrave; 58g.<br />\r\nTh&agrave;nh phần t&aacute; dược: Dầu parafin, M&agrave;u n&acirc;u tan trong dầu vừa đủ 100 ml.<br />\r\n<strong>C'),
(11, 'Dầu gió xanh Thiên Thảo (Chai 12ml)', 20, 23, 2, 'Dầu gió xanh Thiên Thảo.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nChiết xuất tinh dầu bạc h&agrave;: 0,36 ml, Menthol 2,52g, Methyl salicylate 2,16 g, Eucalyptol 0,72 ml, tinh dầu Đinh hương: 0,24 ml, Long n&atilde;o 0,36 ml.<br />\r\nT&aacute; dược vừa đủ.<br />\r\n<strong>Chỉ đ'),
(12, 'Dầu Khuynh Diệp OPC (Hộp 1 chai 15ml)', 20, 41, 2, 'Dầu Khuynh Diệp OPC.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nHoạt chất: Eucalyptol 12,44g.<br />\r\nT&aacute; dược (Dầu parafin, m&agrave;u xanh chlorophyl) vừa đủ 15ml.<br />\r\n<strong>Chỉ định (Thuốc d&ugrave;ng cho bệnh g&igrave;?)</strong><br />\r\nPh&ograve;ng, trị cảm c'),
(13, 'Ebysta (Hộp 20 gói x 10ml)', 50, 92, 2, 'Ebysta.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Mỗi 10ml chứa th&agrave;nh phần dược chất:<br />\r\nSodium alginate 500mg<br />\r\nCalcium bicarbonate 160mg<br />\r\nSodium bicarbonate 267mg<br />\r\n- Th&agrave;nh phần t&aacute; dược: Carbopol 974P, sodium hydrox'),
(14, 'Hapacol 250 (24 gói)', 100, 47, 2, 'Hapacol 250.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nParacetamol .................................... 250 mg<br />\r\nT&aacute; dược vừa đủ .................................... 1 g&oacute;i<br />\r\n(Acid citric khan, manitol, đường trắng, aspartam, natri hydrocarbon'),
(15, 'Osla (15ml)', 100, 20, 2, 'Osla.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Hoạt chất: Natri clorid 0.033g<br />\r\n- T&aacute; dược: vừa đủ 15ml (Borneol, Benzalkonium clorid, Acid boric, Natri borat, nước cất)<br />\r\n<strong>Chỉ định (Thuốc d&ugrave;ng cho bệnh g&igrave;?)</strong><b'),
(16, 'Panadol Extra Optizorb (Hộp 12 vỉ x 10 viên)', 100, 216, 2, 'Panadol Extra Optizorb.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nMỗi vi&ecirc;n n&eacute;n bao phim chứa:<br />\r\nParacetamol: 500 mg<br />\r\nCaffeine: 65 mg<br />\r\nT&aacute; dược: Starch pregelatinized, Povidone, Calcium carbonate, Crospovidone, Sodium methyl parahydroxybenzo'),
(17, 'Phosphalugel (Hộp 26 gói)', 100, 109, 2, 'Phosphalugel.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Mỗi g&oacute;i chứa: Colloidal aluminium phosphate gel 20%: 12,380g.<br />\r\n- T&aacute; dược: Calcium sulphate dihydrate, pectin, agar 800, hương cam, potassium sorbate, dung dịch sorbitol (kh&ocirc;ng tinh t'),
(18, 'Refresh Tears (15ml)', 100, 65, 2, 'Refresh Tears.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Hoạt chất: Natri carboxymethylcellulose 0.5%<br />\r\n- T&aacute; dược: Acid boric, calci clorid dihydrat, magnesi clorid hexahydrat, kali clorid, nước tinh khiết, PURITT (phức hợp oxydoro được l&agrave;m ổn đị'),
(19, 'Salonpas Pain Relief Patch (3 miếng/hộp) 7 x10cm', 200, 25, 2, 'Salonpas Pain Relief Patch.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n- Hoạt chất: Methyl salicylate 10%, L - Menthol 3%.<br />\r\n- T&aacute; dược: Polyisobutylene, Liquid paraffin, Synthetic aluminium silicate, Alicyclic saturated hydrocarbon resin, Styrene isoprene block copolym'),
(20, 'Silymarin Extra Max (10 vỉ x 10 viên)', 100, 160, 2, 'Silymarin Extra Max.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCho 3 vi&ecirc;n nang mềm:<br />\r\nCao kế sữa (Carduus marianus) 300mg<br />\r\nCao c&agrave; gai leo 300mg<br />\r\nCao bồ c&ocirc;ng anh 150mg<br />\r\nCao actiso 120mg<br />\r\nThymomodulin 30mg<br />\r\nVitamin PP (Ni'),
(21, 'Thực phẩm bảo vệ sức khỏe bổ sung khoáng chất Plusssz Max MultiVitamin (Tuýp 20 viên)', 200, 44, 2, 'Plusssz Max MultiVitamin.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\n-Th&agrave;nh phần: L-ascorbic acid (vitamin C) 60.00 mg, nicotine amide (niacin) 18.00 mg, DL-alphatocopheryl acetate (vitamin E) 10.00 mg, calcium D-pantothenate (pantothenic acid) 6.00 mg, pyridoxine hydroch'),
(22, 'Thuốc điều trị viêm loét đường tiêu hóa, giảm buồn nôn Konimag (30 gói x 7ml/hộp)', 100, 51, 2, 'Konimag.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nHoạt chất: Gel kh&ocirc; aluminium hydroxide 300mg tương đương: aluminium hydroxide 229.5mg, Magnesium trisilicate 4.8 - 6.2 H2O 300mg, Dimethylpolysiloxane hoạt h&oacute;a 25mg.<br />\r\nT&aacute; dược: Dung dịc'),
(23, 'Trĩ Nhất Nhất (Hộp 3 Vỉ x 10 viên)', 50, 165, 2, 'Trĩ Nhất Nhất.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nTh&agrave;nh phần (cho 1 vi&ecirc;n n&eacute;n bao phim): 500mg cao kh&ocirc; hỗn hợp dược liệu tương đương với:<br />\r\nĐảng s&acirc;m (Radix Codonopsis pilosulae) 700 mg<br />\r\nHo&agrave;ng kỳ (Radix Astragali'),
(24, 'Bộ kit dành cho da mụn Some By Mi AHA-BHA-PHA 30 Days Miracle Travel Kit', 20, 285, 3, 'Miracle Travel Kit.jpg', '<p>Some By Mi AHA-BHA-PHA 30 Days Miracle Travel Kit đ&acirc;y l&agrave; bộ sản phẩm dưỡng da to&agrave;n diện, d&agrave;nh cho l&agrave;n da gặp phải c&aacute;c vấn đề về mụn, lỗ ch&acirc;n l&ocirc;ng to hay da sần s&ugrave;i, k&eacute;m mịn m&agrave;ng.'),
(25, 'Gel giảm mụn và vết thâm Megaduo (15g)', 100, 125, 3, 'Megaduo.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nWater, Ascorbic Acid, Tocopherol, Panthenol, Niacinamide, Retinal, Zinc Oxide, Lactic Acid, Glycolic Acid, Kojic Acid, Salicylic Acid, Ubiquinone, Squalane, Allantoin, Adenosine, Bisabolol, Glyceryl, BHT, Sorbi'),
(26, 'Gel ngừa mụn Decumar Advanced (20g)', 100, 77, 3, 'Decumar Advanced.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nPurified water, PEG-40 Hydrogenated Castor Oil, Propylene Glycol, Glycerin (and) Allium Cepa Extract (Chiết xu&aacute;t h&agrave;nh t&acirc;y đỏ), Glycerin, Isopropyl Alcohol, Aloe vera extract (Chiết xuất L&oc'),
(27, 'Gel rửa mặt ngăn ngừa mụn Decumar Clean (50g)', 100, 81, 3, 'Decumar Clean.jpg', '<p><strong>Th&agrave;nh phần</strong>&nbsp;<strong>Th&agrave;nh phần</strong><br />\r\nPurified water, Azadirachta indica leaf extract, Glycerin, Propylen glycol, Nano curcumin,...<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nL&agrave;m sạch nhẹ nh&agrave'),
(28, 'Hỗ trợ giảm ngứa do bị viêm da Atopiclair Lotion (120ml)', 50, 203, 3, 'Atopiclair Lotion.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nNước, Sodium hyaluronate, Butyrospermum parkii butter, Glycyrrhetinic acid, Vitis vinifera leaf extract, Ascorbyl tetraisopalmitate, Tocopheryl acetate, Telmesteine, c&aacute;c t&aacute; dược<br />\r\n<strong>C&o'),
(29, 'Kem chống nắng không nhờn rít Ideal Soleil SPF50 Vichy (50ml)', 20, 535, 3, 'Ideal Soleil SPF50 Vichy.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua/Water; Homosalate; Silica; Ethylhexyl Salicylate; Ethylhexyl Triazone; C12-15 Alkyl Benzoate; Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine; Drometrizole Trisiloxane; Butyl Methoxydibenzoylmethane; Octocr'),
(30, 'Kem chống nắng mỏng nhẹ và bảo vệ da tối ưu La Roche Posay Anthelios UV Mune 400 SPF50+ 50ml (Tuýp 50ml)', 20, 535, 3, 'La Roche Posay Anthelios UV Mune.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua, Alcohol Denat, Diisopropyl Sebacate, Silica,...<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nKem chống nắng cho da mặt dạng sữa lỏng nhẹ, kh&ocirc;ng nhờn r&iacute;t, gi&uacute;p bảo vệ da trước t&aacut'),
(31, 'Kem chống nắng Sunplay Skin Aqua Clear White (Tuýp 25g)', 20, 119, 3, 'Sunplay Skin Aqua Clear White.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nWater, Cyclopentasiloxane, Zinc Oxide, Ethylhexyl Methoxycinnamate, Methyl Methacrylate Crosspolymer, Dimethicone, PEG-9 Polydimethylsiloxyethyl Dimethicone, Simmondsia Chinensis (Jojoba) Seed Oil&hellip;<br />'),
(32, 'Kem chống nắng Sunplay Skin Aqua Silky White Gel (Tuýp 25g)', 10, 104, 3, 'Sunplay Skin Aqua Silky White Gel.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nWater, Ethylhexyl Methoxycinnamate, Glycerin, Dipropylene Glycol, Isononyl Isononanoate, Cetyl Alcohol, Polymethylsilsesquioxane, Diethylamino Hydroxybenzoyl Hexyl Benzoate&hellip;<br />\r\n<strong>C&ocirc;ng dụn'),
(33, 'Kem dưỡng ẩm dành cho da khô CeraVe Moisturising Cream (50ml)g Cream', 50, 145, 3, 'CeraVe Moisturising Cream.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCETEARETH-20, AQUA / WATER, PETROLATUM, GLYCERIN, POTASSIUM PHOSPHATE, CERAMIDE NP, CETEARYL ALCOHOL, CERAMIDE AP, CAPRYLIC/CAPRIC, TRIGLYCERIDE, CERAMIDE EOP, CETYL ALCOHOL, CARBOMER, DIMETHICONE, BEHENTRIMONI'),
(34, 'Kem dưỡng da Dottorprimo Emergency 400 (30ml)', 100, 350, 3, 'Dottorprimo Emergency.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua, Ozonized Sunflower Seed Oil, Hydrogenated Polyisobutene, C12-20 Acid Peg-8 Ester, C 13-15 Alkane, Caprylic/Capric Triglyceride, Cetyl Alcohol, Glyceryl Stearate, Peg-90 Stearate, Stearic Acid, Parfum, Bis'),
(35, 'Kem dưỡng giúp làm dịu và phục hồi da La Roche-Posay Cicaplast Baume B5+ (Tuýp 100ml)', 10, 635, 3, 'La Roche-Posay Cicaplast Baume.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua/Water/Eau, Dicaprylyl Ether, Panthenol, Glycerin, Pentylene Glycol, Polyglyceryl-6 Distearate, Propanediol, Cetyl Esters, Jojoba Esters, Behenyl Alcohol, Acacia Decurrens Flower Cera / Acacia Decurrens Flo'),
(36, 'Kem dưỡng Hada Labo Perfect White Cream (Hộp 50g)', 50, 192, 3, 'Hada Labo Perfect White Cream.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nWater, Cyclopentasiloxane, Methyl Methacrylate Crosspolymer, Dipropylene Glycol, Methylene Bis-Benzotriazolyl Tetramethylbutylphenol, Niacinamide, Squalane, Glycerin&hellip;<br />\r\nC&ocirc;ng dụng: Kem dưỡng t'),
(37, 'Kem dưỡng phục hồi độ ẩm và bảo vệ môi La Roche-Posay Cicaplast Levres (7.5ml)', 20, 186, 3, 'La Roche-Posay Cicaplast Levres.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCaprylic/Capric Triglyceride, Butyrospermum Parkii Butter/Shea Butter, Aqua/Water...<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nKem dưỡng ẩm gi&uacute;p da m&ocirc;i kh&ocirc;ng c&ograve;n kh&ocirc;, nứt nẻ'),
(38, 'Kem hỗ trợ nuôi dưỡng và bảo vệ da The Plant Base AC Clear Magic Cica Cream (60ml)', 50, 240, 3, 'The Plant Base AC Clear Magic Cica Cream.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCentella Asiatica Leaf Water, Dipropylene Glycol, Astrocaryum Murumuru Seed Butter, Cyclopentasiloxane, Squalane, Glyceryl Stearate SE, Trimethylolpropane Triisostearate, Beeswax, Diphenylsiloxy Phenyl Trimethi'),
(39, 'Mặt nạ ngủ môi Care:nel Berry Lip Night Mask (5g)', 100, 70, 3, 'Berry Lip Night Mask.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nPolyisobutene, Mineral Oil, Petrolatum, Diisostearyl Malate, Bees Wax, Euphorbia Cerifera (Candelilla) Wax, Hydrogenated Styrene/Isoprene Copolymer, Ceresin, Sorbitan Sesquioleate, Caprylyl Glycol, Fragrance&he'),
(40, 'Mặt nạ ngủ mặt mềm mịn và căng bóng da Care:nel Aqua Night Mask (15ml)', 50, 42, 3, 'Aqua Night Mask.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nWater, Cyclopentasiloxane, Butylene Glycol, Glycerin, Cyclohexasiloxane, Propanediol, Trehalose, Portulaca Oleracea Extract, Centella Asiatica Extract, Arnica Montana Flower Extract, Helianthus Annuus (Sunflowe'),
(41, 'Nước hoa hồng dành cho da mụn Eucerin Dermo Purifyer Toner (200ml)', 20, 389, 3, 'Eucerin Dermo Purifyer Toner.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua, Alcohol Denat, Butylene Glycol, PEG-40 Hydrogenated Castor Oil, Poloxamer 124, Lactic Acid, Glyceryl Caprylate, Phenoxyethanol, Methylparaben, Parfum.<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nSản ph'),
(42, 'Nước tẩy trang làm sạch sâu dành cho da dầu nhạy cảm La Roche-Posay Effaclar Micellar Water Ultra (400ml)', 50, 495, 3, 'La Roche-Posay Effaclar Micellar Water Ultra.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nAqua/Water, PEG-7 Caprylic/Capric Glycerides, Poloxamer 124, Poloxamer 184, PEG-6 Caprylic/Capric Glycerides, Glycerin, Polysorbate 80, Zinc Pca, Sodium Hydroxide, Disodium Edta, BHT, Myrtrimonium Bromide, Parf'),
(43, 'Thực phẩm bảo vệ sức khỏe chăm sóc da, tóc, móng Vitabiotics Perfectil (Hộp 30 viên)', 20, 317, 4, 'Vitabiotics Perfectil.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nMagnesi (Magnesi oxyd) 75mg, Vitamin C (Acid L-Ascorbic) 60mg, Vitamin E (D-alpha tocopheryl succinate) 40mg, Pantothenic acid (muốii canxi) 40mg, Niacin (Nicotinamide) 18mg, Kēm (Kēm sulfat) 15mg,Chiết xuất hạ'),
(44, 'Thực phẩm bảo vệ sức khỏe hỗ trợ xương khớp cho người lớn Vitabiotics Osteocare (Hộp 30 viên)', 20, 262, 4, 'Vitabiotics Osteocare.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCalci (calci carbonat) 400mg, Magnesi (Magnesi hydroxyd) 150mg, kẽm (kẽm sulfat) 5mg, Vitamin D3 (Cholecalciferol) 5&mu;g.<br />\r\n<strong>C&ocirc;ng dụng</strong>&nbsp;Hỗ trợ bổ sung canxi, magie, vitamin D, kẽ'),
(45, 'Thực phẩm bảo vệ sức khỏe hỗ trợ chức năng cơ bắp, giảm triệu chứng tiền kinh nguyệt Blackmores Bio Magnesium (Chai 100 viên)', 10, 680, 4, 'Blackmores Bio Magnesium.jpg', '<p><strong>Đối tượng sử dụng</strong>: Người lớn v&agrave; trẻ em tr&ecirc;n 9 tuổi<br />\r\n<strong>Th&agrave;nh phần</strong>: Magnesium oxide 440mg, Magnesium phosphate 175mg, Calcium ascorbate dihydrate 50mg, Vitamin B6 50mg,...<br />\r\n<strong>C&ocirc;n'),
(46, 'Thực phẩm bảo vệ sức khỏe tim mạch Blackmores CoQ10 150mg (Chai 30 viên)', 10, 473, 4, 'Blackmores CoQ10.jpg', '<p><strong>Th&agrave;nh phần</strong>: Ubidecareone (coenzyme Q10) 150mg.<br />\r\n<strong>C&ocirc;ng dụng:</strong>&nbsp;Gi&uacute;p chống oxy h&oacute;a v&agrave; tăng cường năng lượng cho tim, hỗ trợ duy tr&igrave; sức khỏe tim mạch v&agrave; l&agrave;m '),
(47, 'iên uống Blackmores Executive B Stress Formula hỗ trợ sức khỏe, thần kinh (62 viên)', 10, 428, 4, 'Blackmores Stress formula.jpg', '<p><strong>ối tượng sử dụng</strong><br />\r\nD&ugrave;ng cho người từ 12 tuổi trở l&ecirc;n.<br />\r\n<strong>Th&agrave;nh phần</strong><br />\r\nVitamin B1 75mg, Vitamin B2 10mg, Nicotinamide 100mg, Vitamin B5, Chiết xuất Avena sativa (Yến mạch) tương đương v'),
(48, 'Thực phẩm bảo vệ sức khỏe viên uống bổ não Blackmores Ginkgoforte (Hộp 40 viên)', 20, 460, 4, 'Blackmores Ginkgoforte.jpg', '<p><strong>Th&agrave;nh phần:</strong><br />\r\nBạch quả (Ginkgo) tr&iacute;ết xuất equiv. để l&agrave;m kh&ocirc; l&aacute; ...........2g (2000mg)<br />\r\nChuẩn h&oacute;a để c&oacute; bạch quả flavonglycosides ...................10.7mg<br />\r\nGinkgoilides '),
(49, 'Thực phẩm bảo vệ sức khoẻ viên uống cho bà bầu Blackmores Pregnancy And Breast Feeding Gold (Chai 60 viên)', 20, 510, 4, 'Blackmores Pregnancy And Breast Feeding Gold.jpg', '<p><strong>Đối tượng sử dụng</strong><br />\r\nPhụ nữ mang thai v&agrave; cho con b&uacute;.<br />\r\n<strong>Th&agrave;nh phần</strong><br />\r\nDầu c&aacute; Omega-3 triglycerides c&ocirc; đặc 250mg chứa 150mg Omega-3 marine triglycerides gồm docosahexaenoic '),
(50, 'Thực phẩm bảo vệ sức khỏe hỗ trợ làm giảm các triệu chứng của bệnh trĩ An Trĩ Vương (Hộp 3 vỉ x 10 viên)', 20, 185, 4, 'An Trĩ Vương.jpg', '<p>Th&agrave;nh phần<br />\r\nCao diếp c&aacute;: 450 mg (tương đương 3375 mg dược liệu)<br />\r\nCao Đương quy: 150 mg (tương đương 855 mg dược liệu)<br />\r\nMagi&ecirc; (dưới dạng Magnesium oxide): 30 mg<br />\r\nRutin: 25 mg<br />\r\nMeriva (Curcuma phospholipo'),
(51, 'Nước uống tinh nghệ Inno.N Condition Curcumin Fast (100ml)', 20, 680, 4, 'Condition Curcumin Fast.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCurcumin 12, Indigestion maltodextrin, siro đường bắp, FOS, natri citrat, chiết xuất thảo mộc, hương mật ong.<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nHỗ trợ tăng cường khả năng chống oxy h&oacute;a, gi&u'),
(52, 'Siro bổ máu cho trẻ em Vitabiotics Feroglobin (200ml)', 50, 365, 4, 'Vitabiotics Feroglobin.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nMalt 1000mg, Mật ong 200mg, L-lysine (Hydrochlorid) 40mg, Calci Glycerolphosphate 20mg, Niacin (Nicotinamid) 20mg, Sắt (Sắt (III) Amomonium Citrate), Vitamin B1 (Thiamin hydrochlorid) 10mg, Kẽm (Kẽm sulphate) 6'),
(53, 'Siro bổ sung canxi giúp xương chắc khỏe cho trẻ em Vitabiotics Osteocare (200ml)', 20, 317, 4, 'Vitabiotics Osteocare D.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCalci (Calci carbonat) 300mg, Magnesi (Magnesi hydroxid) 150mg, Kẽm (Kẽm gluconat) 6mg, Vitamin D3 (Cholecalciferol) 3.8&mu;g.<br />\r\n<strong>C&ocirc;ng dụng</strong><br />\r\nHỗ trợ bổ sung canxi, magie, vitamin'),
(54, 'Siro vitamin và khoáng chất cho trẻ Vitabiotics Wellkid Multi-vitamin Liquid (150ml)', 50, 410, 4, 'Vitabiotics Wellkid Multi-vitamin Liquid.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nChiết xuất mạch nha 500 mg, Vitamin C (dưới dạng Acid L-Ascorbic) 12mg, Niacin (dưới dạng Nicotinamide) 8mg, Sắt (dưới dạng Ammonium citrate) 5mg, Vitamin E (dưới dạng DL-Alphatocopheryl acetat) 5mg, Kẽm (dưới '),
(55, 'Thực phẩm bảo vệ sức khỏe Alcofree (Lốc 3 chai x 50ml)', 50, 103, 4, 'Alcofree.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nCao đặc Đảng S&acirc;m &hellip;&hellip;&hellip;.. 500mg<br />\r\nTaurine &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 400mg<br />\r\nCao đặc Actiso &hellip;&hellip;&hellip;&hellip;&helli'),
(56, 'TPCN bảo vệ gan Vitabiotics Liveril (Hộp 30 viên)', 50, 450, 4, 'Vitabiotics Liveril.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nSilymarin (chiết xuất từ kế sữa) 14mg, Vitamin C (Acid L-Ascorbic) 75mg, L-carnitine tartrate 50mg, Choline bitartrate 50mg, Inositol 50mg, N-acetyl cystein 50mg, L-ornithine (L-ornithine Hydrochloride) 50mg, c'),
(57, 'Viên bổ sung khoáng chất Solgar Calcium Magnesium Plus Zinc (Chai 100 viên)', 50, 680, 4, 'Solgar Calcium Magnesium Plus Zinc.jpg', '<p><strong>C&ocirc;ng dụng</strong><br />\r\n- Bổ sung Canxi, Maggie v&agrave; Kẽm, hỗ trợ việc ph&aacute;t triển xương, hỗ trợ duy tr&igrave; hoạt động cơ bắp, th&ocirc;ng m&aacute;u.<br />\r\n- Hỗ trợ c&aacute;c tế b&agrave;o thần kinh.<br />\r\n<strong>Th&ag'),
(58, 'Viên bổ sung Omega-3 Fish Oil Solgar (Chai 120 Viên)', 50, 950, 4, 'Omega-3 Fish Oil Solgar.jpg', '<p><strong>C&ocirc;ng dụng</strong><br />\r\nBổ sung omega-3 gi&uacute;p hỗ trợ hạn chế c&aacute;c bệnh tim mạch, giảm xơ vữa động mạch, giảm cholesterol trong m&aacute;u.<br />\r\nBổ sung dưỡng chất cho n&atilde;o, cải thiện tr&iacute; nhớ, tốt cho mắt.<br /'),
(59, 'Viên bổ sung vitamin B, C Solgar B-Complex with Vitamin C (Chai 100 viên)', 50, 880, 4, 'Solgar B-Complex with Vitamin C.jpg', '<p><strong>C&ocirc;ng dụng</strong><br />\r\n- Bổ sung Vitamin C v&agrave; c&aacute;c Vitamin nh&oacute;m B gi&uacute;p tăng cường sức khỏe.<br />\r\n- Gi&uacute;p giảm căng thẳng mệt mỏi, tăng độ bền bỉ cho cơ thể<br />\r\n- Hỗ trợ c&acirc;n bằng chế độ dinh d'),
(60, 'Viên dầu anh thảo Solgar Evening Primrose Oil 1300 mg (Chai 60 viên)', 20, 800, 4, 'Solgar Evening Primrose Oil.jpg', '<p><strong>C&ocirc;ng dụng</strong><br />\r\n- Hỗ trợ giữ ẩm, gi&uacute;p bảo vệ nu&ocirc;i dưỡng v&agrave; giữ g&igrave;n cho da.<br />\r\n- Hỗ trợ duy tr&igrave; v&agrave; điều h&ograve;a nội tiết tố nữ.<br />\r\n<strong>Th&agrave;nh phần</strong><br />\r\nMỗi '),
(61, 'Viên dưỡng mắt Lutein 20mg Solgar (Lọ 60 Viên)', 50, 1504, 4, 'Lutein 20mg Solgar.jpg', '<p><strong>C&ocirc;ng dụng:</strong>&nbsp;Hỗ trợ tăng cường sức khỏe cho mắt.<br />\r\n<strong>Đối tượng sử dụng:</strong>&nbsp;Người lớn tr&ecirc;n 19 tuổi.<br />\r\n<strong>Lưu &yacute;:</strong>&nbsp;Người đang điều trị c&aacute;c bệnh đặc biệt kh&aacute;c'),
(62, 'Viên giảm đau & giảm viêm khớp Vitabiotics Jointace Original (Hộp 30 viên)', 50, 410, 4, 'Vitabiotics Jointace Original.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nGlucosamine sulphate 2KCl 500mg &ensp;&ensp;&ensp;<br />\r\nChondroitin sulphate natri 200mg &ensp;&ensp;&ensp;<br />\r\nChiết xuất rễ gừng 40mg &ensp;&ensp;&ensp;<br />\r\nVitamin C (Acid L-Ascorbic ) 30mg &ensp;&en'),
(63, 'Viên hỗ trợ sáng mắt Rohto Lutein V5 ( Hộp 30 viên)', 100, 388, 4, 'Rohto Lutein V5.jpg', '<p><strong>Th&agrave;nh phần</strong><br />\r\nLutein (10mg), Zeaxanthin (2mg), Gelatin, dầu c&aacute; tinh luyện c&oacute; chứa DHA, dầu c&acirc;y Rum, bột chiết xuất từ thịt g&agrave;, dầu thực vật c&oacute; chứa vitamin E, nước &eacute;p, quả kim ng&acir');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
