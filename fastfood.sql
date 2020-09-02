-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2019 г., 13:54
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fastfood`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`Id`, `Name`, `Type`, `Price`, `Img`, `Description`) VALUES
(0, '1000 Островов', 3, 0, '\\ingredients\\sauces\\1000-islands.png', ''),
(1, '15 сантиметров', 4, 0, '\\sizes\\1x.jpg', ''),
(2, '30 сантиметров', 4, 100, '\\sizes\\2x.jpg', ''),
(3, 'Бекон', 2, 35, '\\ingredients\\products\\bacon.png', '(3-4 кусочка)'),
(4, 'Белый итальянский', 1, 0, '\\bread\\white-italian.png', ''),
(5, 'Белый с кунжутом', 1, 0, '\\bread\\white-sesame.png', ''),
(6, 'БМТ', 2, 60, '\\ingredients\\products\\bmt.png', ''),
(7, 'Ветчина', 2, 45, '\\ingredients\\products\\ham.png', '(4 кусочка)'),
(8, 'Винный уксус', 3, 0, '\\ingredients\\sauces\\wine-vinegar.png', ''),
(9, 'Горчица', 3, 0, '\\ingredients\\sauces\\mustard.png', ''),
(10, 'Горчица медовая', 3, 0, '\\ingredients\\sauces\\mustard-and-honey.png', ''),
(11, 'Грибы', 2, 50, '\\ingredients\\products\\mushrooms.png', '(2 скупа)'),
(12, 'Индейка', 2, 45, '\\ingredients\\products\\turkey.png', '(3 кусочка)'),
(13, 'Индейка и ветчина', 2, 45, '\\ingredients\\products\\turkey-ham.png', '(2/2 кусочка)'),
(14, 'Кисло-сладкий', 3, 0, '\\ingredients\\sauces\\sweet-and-sour.png', ''),
(15, 'Красный лук', 5, 0, '\\ingredients\\vegetables\\onion-purple.png', ''),
(16, 'Куриная грудка', 2, 60, '\\ingredients\\products\\chicken-breast.png', ''),
(17, 'Курица Терияки', 2, 65, '\\ingredients\\products\\chicken-teriyaki.png', ''),
(18, 'Майонез', 3, 0, '\\ingredients\\sauces\\mayonnaise.png', ''),
(19, 'Маслины', 5, 0, '\\ingredients\\vegetables\\olives.png', ''),
(20, 'Мелт', 2, 70, '\\ingredients\\products\\melt.png', ''),
(21, 'Морепродукты', 2, 40, '\\ingredients\\products\\seafood.png', '(2 скупа)'),
(22, 'Оливковое масло', 3, 0, '\\ingredients\\sauces\\olive-oil.png', ''),
(23, 'Омлет', 2, 50, '\\ingredients\\products\\omelet.png', ''),
(24, 'Орегано-пармезан', 1, 0, '\\bread\\oregano-parmesan.png', ''),
(25, 'Острый итальянский', 2, 60, '\\ingredients\\products\\spicy-italian.png', ''),
(26, 'Острый кетчуп', 3, 0, '\\ingredients\\sauces\\spicy-ketchup.png', ''),
(27, 'Острый перец Халапеньо', 5, 0, '\\ingredients\\vegetables\\pepper-hapapeno.png', ''),
(28, 'Пекинская капуста', 5, 0, '\\ingredients\\vegetables\\pekinka.png', ''),
(29, 'Пепперони', 2, 40, '\\ingredients\\products\\pepperoni.png', '(3 кусочка)'),
(30, 'Помидор', 5, 0, '\\ingredients\\vegetables\\tomato.png', ''),
(31, 'Ростбиф', 2, 55, '\\ingredients\\products\\roast.png', '(2-3 кусочка)'),
(32, 'Сабвэй Клаб', 2, 70, '\\ingredients\\products\\subway-club.png', ''),
(33, 'Салями', 2, 40, '\\ingredients\\products\\salami.png', '(4 кусочка)'),
(34, 'Свинина Барбекю', 2, 65, '\\ingredients\\products\\pork-bbq.png', ''),
(35, 'Серый', 1, 0, '\\bread\\unknown_1.png', ''),
(36, 'Серый с овсяными хлопьями', 1, 0, '\\bread\\grey-with-cereal.png', ''),
(37, 'Сладкий лук', 3, 0, '\\ingredients\\sauces\\sweet-onion.png', ''),
(38, 'Соленый огурец', 5, 0, '\\ingredients\\vegetables\\pickled-cucumber.png', ''),
(39, 'Сыр', 2, 20, '\\ingredients\\products\\cheese.png', '(2 треугольника)'),
(40, 'Сырный', 3, 0, '\\ingredients\\sauces\\cheese.png', ''),
(41, 'Тунец', 2, 55, '\\ingredients\\products\\tuna.png', '(2 скупа)'),
(42, 'Чесночный', 3, 0, '\\ingredients\\sauces\\garlic.png', ''),
(43, 'Чиппотл', 2, 0, '\\ingredients\\sauces\\chipotle.png', ''),
(44, 'Болгарский перец', 5, 0, '\\ingredients\\vegetables\\green-peppers-bulgarian.png', '');

-- --------------------------------------------------------

--
-- Структура таблицы `logotips`
--

CREATE TABLE `logotips` (
  `LogoId` int(11) NOT NULL,
  `Picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `logotips`
--

INSERT INTO `logotips` (`LogoId`, `Picture`) VALUES
(1, 0x89504e470d0a1a0a0000000d494844520000003d0000002808060000004d79f2c10000000473424954080808087c0864880000149f494441546881d599775c55d796c7bfe71640ae8814290a8a8a5c6ca8a0a2b162074bc408b698185b8c35c598e79bc4125b548c92f644f1a9799a608f2d9817234a0acd885d01b162e3022a48bdf79c357f5cf565263a93799fcce4cdeff3d99f7b3ef79cb3cefeadb6d7da5be137425114c568341a9d9c9c6af9fafab6eed1a3c7869a9a9a201f1f1f860c1ecc735dba28bf55d6bf241445510c0683e1f1af4ea7d3858787af360799e5b9ce9d65c992c5929e912e55d55592979b63993f7ffed2c2c242cbca952be3fee8b9ff8f6130180c61616161172e5cc8f9fefb5419376e9cf878fb888fb78f984c2619f6c20ba2699a689a26168bc5b274e9d2a50b162c58081017b7725561e11dcbd0a14387fed13c7e331e93f9fae041e9dab5ab74edda553efe285eae5fbf2e090909623299242020405455154dd3242e2e2e0e60e1c285efaf5cf8e6aa9cedaf5beeff1027d69b69a26936494e4e3e54b76eddba8aa2fcebbabda6699297972bad5bb592bd7bf73eb1a888c8eddbb7c4b54e1d31994c9297972b9aa6496161a1252e2e6e55fea53ccbfdbfb4919ff66f948cef8fc8c88ef5a4fad6f147cab1c9ba75ebd6ffd1dc9e89e4e4e4432693c9a4288a121414644e4b4b4b5fba74e9528bc562d1344dde7bf75dd9ba658becdab54be6cc9923111111e2efe727dd026bcbd7afd695b2b232a9aaae92614307cb91b858495f3751aa2f1d144dad91c4c4c40dffd216ffcf888b8b5b75323b5ba64c79f5496c3f1e81de76c2d97bd788a6d944d33451354d345593224ba16cfd7489ec5c1c236a65b12426266ef82ddfd3e974ba5f265083c160007bbe511445d1e9743a676767934ea7d3fdb39c9ea9fdb4b4b4f43d7b76ff78fefc85975252523c015c6abbd0a76f1ffaf4e943cbfa467c2ec451dd79318dc306a028424e4e1eebd7afa7a6c64adfbe7d888a8a62fbb66d549fddc6b825bb4054d4bb27115b357aafd6280e6e8802daed0cb4924be8dc03d17bb7a566e7307e2a70c1ddc79fe6bd4661f40ec17a7e1bb72f6651535ec2cd87b5706d1e913be9ed95a3cf9c3d7bc61e899a6630180c369bcda6d3e974369bcdf69b492727271f8ae815d1ff83651ff0f147f15455d7d0a47163a6cf984168bb76ecd8b9939c1f76f3e7eed534786537be81a13cf6dc99336771ead046427c849faec19c15eb898d1dc18bc3a2583d6f02c6ec8fb8ef13c95da94f497e0626834a97c163c8fecb584cd19b29389fced533dfd3d6964aa3b979545557b366ee64a674aca4ba5e380d23e7a2691a0073c74732af8fc63597dedcb9758d4e1103f0f27447a9ed83de270c9ddee1b78593a66952525c24919191623299c4dfcf4f121212242f2f57c68d1b27818181f2e68468c9f893bf14e46489a6d9e46476b69cf8394b344d938888083936c549b46548d922a34c1e11299a6693848404898f767d1206090909f2f5c18392959929f322dd24e94ffd45d534b97efdba78ba9a64ed9b91a2aaaa58ad5631079965deab43455555515555366dda249a6693050b16c8a4c1614f9e1bf57c7f397d74b76cfd7489242d7949d4ea52b978f162ced378ea7e49b8acac8c21cf0f25353595eeddbbf3e34f3fa1d7eb58be7c05c307f7e5d496992ceb9ccf715d4f7c0343397bee3c43a3a3a9b1a9804691c54243374151c064b0d2d2740bd061369b49d7f7a2cde0e9a8aab06bd74ebef8f24b42dbb7275bdf85db2eed5180821b37d8f1d57e3a8d5d0a8ac2cf277ee6eeed02a2c6ff09148503070eb060c10240476565253e6d225114854b972e31f9f577f8fedc6d6227cfe186b115c91b97d32c2828e899a41d1c1c1c00a64d9b46767636d1d1d1ecdab593f2f27206746bcb672fe81970650ab5526662b49ce664ca57cc9d3b97819151d493425cebb8023a2a1e94e0ea284f847b7bf900e06034d27b4014a0e3d2a54b5c3e9586d9c3868246a380c638d4ad0f40505033ae5dbb4e90390805f8eef061ea7ad4232c340c0558b3660d83060da6c65ac3d7070fd2a367cf470653c9cfcfe7cf73e702f0e2d817f96ced7ab03e7caa471b0054555533b332d9b3670fad5ab562ddba041c952a9a5abe4097b906c5fa10857f9059debf9a69fb3e6178538868ac6232999edc33eaedcf090a0ebead00b014151110d01880c0c04016ad59c7833b57115168de3c98a8815176b92b96b371dd5afaf7ef8793532dd2d3d209313742afd723228c19339a98985816cc5fc0f5ebd7691f16fa48b95e2c5cb090fea10dd0ebf5b8b9bb937bbb025b71ee5349eb00f47abd3e283010835e8fab6b1df4f9bbd136b6c7f0e32274d6b2ff405833ba60f20b66d3d440964fee884d53301a0dbf125c54e54883d081009c3d7b0647470700de79e71d5cebb8326eea9b008484b4c666b50270ead4690699156a39390170f5ea55a2faf400e0c1fd7b6cddfa0511113df97cdd474cec1f8c8b6b5d003ef9f433825d1e3032daaebcc2bb857672627d36699bcd66abebe64e68581827327ea27cd704f40fae00f0b8a4d0740e587d3ba0757c1dc2df06ffee289673d468a028f6d4e0e4a8b75b59e0424d33423b7503e0c891144e9f3e632772ed1a33a64ca2e2e143ce9d3fc7a08183b876ed3a0015159504d713be3b9202c05bb367d33fe6152e5c384fddbaeeb8b9bbd3c325872f5e6dca5bcbd6a3a0a1aa2a1b121379a9ad8d80ae2301f83e3595604f41a95dffa9a40d8f2d6dcb584e7fe74c326df0c35585816605cd350069dc0ff1eb8abe495f8c4eeed82e1d44973c195d65110a8283ce899a9a1abb069d5cb1aa7729c7887bff85e8f57af2f32f71ea783a7a6b29a3468e60c6f469382a93313a38f2c6eb6fd0b18170fc7816bd7af5c2d1d1919e4de1b5b75fe5727e3e41663363468da6aaba8a5dbb77b32d2989dcdc1cbcbdbcb01415e3830e9d4e68dec417bf2e91b4691b8aaaaa246ed8c0c0b000742e0d9e4dda66b3d9b2b6cccf880c76085f7454d85fdc8ac8973e41ef13862806bb466f67614d7b157d7e323aade61f027442595929002e2e2e3ca856b8dbf8253a74b7375bf1f11fd3ab5d43826b5da24fdfbec4c6c60230fdcd3f21965cf6bf64e395cd4bb9783187c2bb77a1252ce96b63f5c6452494081d1a68f40914ba756a4feb761da9e5ec4c5646066be2e3319bcd6cdfbe8d84cfb7e3d7c00f148535ab5773e37c162fbf33034b5149d133498b888cdc572ff66aeee96be6943e7c7ba618bcda83a207eb43ac47ff8cfee43a8c5a8ddddd7fb1ec7b9a142c9622829b838787073f9b8610f5623c0a1aa74f9de156c155761e39476656269ff5ebcdcf498b7950a70543863c4ffd8b6bf0ad5dc1b611c24769db29372864dc303036f1124bf32f537cee30f5eb7b83a31b1bc63bb1eac3d578dcfa3b135aaaf8fad857861d3b77f1c6eb6fd2a3670f0a0b0b3973229375637d70eb368bd59f6ddafc34d2fac71765650f4b070c1c32c06030fa7dfbedb7f4eed50bbf065e5877c760bcf0253a51817fc4f863a8e8395c62a673e7ce040505d173f8748c0e0edc2b2e66784c0c6ddb85d1af5f3f4e9c3841d9c95d248da8c0a3e33826bcb1807da72b901b1904d7b3d233c0caf05636aa82c712dc7d38bef51b10d8f639ea350dc5ab51304d9a065270e306c195c7e8e42fd0fa65fcfcfd59b16239cb9f2bc0e1c125fc9402860fee8db89ba95dc79df09e9141dede3e3e5bb67cbe3534342c6cf7eeddbbe017c58988486cecc8989898e100ecf96a37d60b3b71b8928c82bde0785a9fe4e762e3ef1b17f1e1aa55f8f9fba1d7eb3973ea14fdfaf7c7549a47f326f6b82a2828a0a9a7c6f552075af5791145513877e102a9379dc975eac251632c5f9c76c2d0662ca023372787ce9dbb307ad428021a36a46d4808495f26f1d0ea80c9c9c0ecd9b3d9b62d89f2871574f417e6742d675c6713a123de27f69d444ee4dce2eca144cf50afaa37ef641ff48c191231e2fdf7172c5294c769f7116edcb8712335f5fb0d7e0dfcd8b7f700dcca401ef9b2887d68a23cb91601bda2b271580d995f2ca455cb96b40909a167f7ae34d572f9728415e7bade00dcb97d1b5f17076e369b817f1333fbf7efa7f0ee5da66ebc40e0f4147abcf1255fdcefc9dfbff93b00274f6613ff513c8989896cdcb4097f43217d3c2ed326b821f55efb91e443872829b94779a93d6c05858b8ddea07548087abdc20ba3c7d363cc5c7a8c994bad26dd58b97811cf776bfd6f0683c1f0abf66cc68c1953a64e9b4ac1cd0242a7ed65c0e7b519b1cdc48c83263efcb11629f90ea8a247505045cffd6a079c8d42d2880a4ebd56c19cd6f92cec63e08d2e2a560ddcdcdc00b01459b86e30d326663ed7af5f63d6ac597cf2f1c7787979b16a551cd5d555848787e359af1e003e3e3e5456543063c60c7af5ea45cbbe63e9d70c3c87c6e3d3a425478f1ec5d1d1819d7b0fb2ee84333538b0f960168aa25056564e8be62d88898d65eddab5d4ae5d9b862d3bb3f9d30f1011f95555a1aaaa5a5afa20c3a0d7879b5bb56554c37cd492cb94da9c2829b372304f61cb69232607c1af593bc22306d0a55d23d2b24e917ce21095759a111be141fb7b9f936751a85bb7ee13d92fcf4b44b55919336a34f57d7d69dda60d77efde61e58a154c9e3489a2a2620202020068ddaa15635f7a190f0f0f00cce660567fde92e4f63da8aaaa62d6ac5984981b317efc77cc53db73a734959e614d01387af42853a74d25bc533893264c64de7befd2282080c8a656344dd37e656911918f3ffe24367ad830be3b728c9296b3286e188321a01b819da318f3da1c3ef8cb5f796bedb7348d9ac9eeccbb444cfe8c5dd9e58c7c71241ff4ba4787e20de8b41aee552ad4aee302c0fcf9f3691edc9cf113275159709a97877401e0c87747086c168473edda1c3b9a82b3c9f991671493f5532a61cd1b01505e5e41db4e11288ac2f7a9c770532d4c8eee0ae8885bb58a85df1971f33303e0e468242a2a92bb77eeb27dc70efa061ae8ec9ccba8a80e4fb734c0fdfbf7ef545656625355929292f0f2f2029ca9282fa7f8e037dcb89188a743155dccb519d0ae1ecb26d7a256f11674e7cbfe839c8a6ac1d7c54edadbdb87fbf74a389599c68111364ed47143c1eefeeb13d7f3d9a79f517ceb328e0e8e80bd89086de24eb3e016005cb8709e1e3dec25695a7a26811ed0b4c78b005cb97c850339c284003be9b0b0f6c4c48e202a3292c18307a334eccaf42e169ac52e4399b059792a69abd56a0d0f0f8fbf79f3e6ac2b57ae3066cc68b4c36f53a76e15be7e10dc0f3c9c3514ad18b80677ecef3dceeef2a854afb0412da75a803d7bfbf9d567f4cbe3292c8aa3f07e05a0f1b0a29c77e6bc43da0fa94c1bd0849e8f3aa74b97f249d8938acba36666cc9831848585a1280a57af5ec5cddc9dc79de3b163c7086de24ecb1676057d7bf83039a732983c791200ae9e5e5cd035c15ccbebe9ee6d9fb4c8ecd9b3df9c396b26168b8516810d79794033a2fbb4a653d40bb8bbb9a0d36aec4bd92fc663c28fffa9b029383d6a34e6cd9b478dd5c6ac5933f9f462636a39e8011d4181cdb89393c5dad19e4c98bf8e4d9b362122ecd9b3876d4949b87b78929e96c6ea35f1bcfbee7b88084e4e8e8c9d3e9733a74f0390979bcbe0576653d7cd1d555559b97225d12d1442424200b876ed3a0e52fe34aabf466a6a4a7acb407f1915ea2cea3245d4658a68cbf86fc795b98e1237a896fc6d542d79f0e081689a26ad5bb592f8f878d1349bdcbe7d4bf2f2729f6c35dfbe7d4b4a8a8be4bd77df1593c9241f7ef8a1545494db4f50f272c51c649698b626896aeb25a7cf9c968a8a7249493922bd7bf796aaea2a39999d2de919e99295992929294724d0bbb6ec98d942545595224ba178b8bb49fe8125b27efdfaf5f0a80c7d1662860d7d3eae6fcd9d190774e4163b60f6a87ee6b3d538925da0b0e3ac8e7b953a6674b671f2f63faa998a072524ad5d4268683b3a74ecc8db6fcf61ffbe7d0c888ca44183061c3d9ac29dab397c19a3b26ec37b6cd9f2373c3d3df9f9f8717a35ac61fdab815cbb944f74d400da3fd78d63478fd1cce5217d7af7a16bd7ae6cddb285818306b278d122429bfb631ef8160009ebd611ea6dc3bf7517a60deb370dfe8bdd50b09f691d9b624c7beb6b4378dbfa7a1286943d2178b518f28ae0bcc5c0cf37e152313cd70806050bc7ae0ad74a14a2cc82ef84fd74e8d081d056cdd91d5bca0b5be021b5d1594bd9394ae3a76b0a670bf504b8698ceb6ca27eb7b1a8999f927c4121b7584f8b7a367a0f1e88d3a04dd8f68fe572fa21b69dd1e3ef2a8c6ea7b1f3b48eaf7314c2ea0b670bf5f49cfa0923478dc4683092753c8b8191916c7ec59f3bc153ff3a71d29409ff2d69005793836bd228c3fd51db140ebd028772848317edf7bc6b2bb4f713c2fdc1cd5961db29e187ab3030185eeba4515123f4fdab91db0f855a06d8354aa5b58fc6890285d6816eb80d58845c3f0a350f51bc42d0b59988e2e28f569283e47d05d60aa47e278c8dfbdabb3dad1adbd92d70fb38f8b647f1eb8a64ad81921c7037732f7d33c3b71a28afd30c6f6f1f3233d279a975351f7c92804bd804c79a473df06fda267d7f7af4d2335969732b1f96b1674c158a5e8f38baa2d50de0a1cd918cacb3149756d3c24b08f1b6a2383853ddb82f7a6b25d6bcc3143cd0e1eee946a6d6f19b514bbe1d5e555553e5e1e9eeb1e7ab7d7b3b857708cfc8c8ca183264c890a2a2228b4ea7d38988180c0683d56adf5251144527229ad168343e9e93aaaa2ad893ae878787c7be7d5fed0f23355c3dbae08997b4f1157ac58c67f3d59689935f7d6dd2130ffe2da4753a9dee72ee39b55bcfbe2c78ae9871edaa1ebd6ccfd8bf6c4444ecbb2c5ac82b94b65f84ab520cd5f7d975f4fc8e512f4e1c2122f2b46ffc1ef83a39f950df509ffe92b31bace57c73dded9b11d3960daba8a8a8f81f0b6bd2a44913555565fbdfd64b7d776739f556ed676672759922d5fbc6885a5d2a090909a26936d9b62d69fbffc55996f208fa47f85d846aaa264b962c969681fe927f6089d46ced29b63817b12d77105b9c8b5425454a4dce1eb15aad121f1f2f29294764d1a2458b7f978fff5178fffdf717a9aa2a4b962c96c0c040d9bb77afa8d5a5a256168b66ab94b2b232397cf8b04c9f3e43be39f4b52c5ebc78f1ffabd3caff0a8989891b52528e48bf7e7d253030504243db49efdebd65e2c489b27dc776a9a82897e4e4e4437ff43c7f57288aa2444747471716165a1e574e9aa6c9ca152b64fb8eeda269daff5ab2fa3df04f9df18a88ecd9b3678f9797573d676793e2e4e8a4346cd8d0ff41e983dcf4b4f4df7b8ebf3bfee983edff8c82828282ecec936f878586fe5e22ffd7f0ef6990c20636fc9fa30000000049454e44ae426082),
(2, 0x89504e470d0a1a0a0000000d494844520000009800000028080300000035d6c366000001f5504c54454c6971030101010101030101020101020101010101010101010101010101010101040102010101010101010101010101010101040102020101a71d36aa1e377b1528aa1d37a71d36a51c3592192fa11b33aa1d370201016b12229e1b3392192ea31c34a21c3401010188192ba71d36a81d369b1b325c101ea81d368a182d9e1b33a91d36a91e37a11b34a41c35a41d35a91d3602010184172b9a1b3187172c91192ea11c347e15289619307915276b12239a1b32941930380b129f1c33a71d363008109a1a3190192e7a152703010190192f88182c6c1223741425991a31991b31a51d358d182ea51d354a0c1888172c391211a01c34941a30410c156b12224f0e1a59101d9e1b33991a32a21c3460111f3409117f1629a21c34f8a933420c159e1b33971a317e1529a11c344a0c186e13249c1b32791527961a316d1323981a31230b0aa61d366812221e060aa21c345d101ea51d355b101d1f060aa61d3585162b9b1a3286172b8e192e72142487182b4a0d18db982cf6ac3259101d821a2963112089152e3a0b13c54e36b78025cf922a941a2f8c621dc88b28bb8b25b93736ab412ff2a93193661ea56d23ab1e38ab1e37fdb033ffca329f0938ffb733a81638ffc132ec9634f09a34d87135ffbc32ffc532de7a35be4336e78b34b02737d46835980038d05e36ffd631ffee318b0039f7b13311d8324e0000008f74524e5300210f0c181a12080402011624271f0b2b1c14e4fc58f8dfdb8ec5f42f2aac85bfce366cd1c4bc4ae971b2ecf29ec9d6ef32629c5195b97aa92651ad9b2ab6d72f73465d397c67304b9590b181a1463c2080a234454025a661923e1a6497fc1177b283d33a1e7c6c58658a3fb639358b5ea63529ad896c357671904e8ae45775189914fc5774663a685ffbafd13f697687881000000e6b4944415478da6d98077b13c7d680bdd24a02b648abdeac2e5bb62559b6842beed872efdd18dc30ae80e904420de426b9f7ce98c4180825e496dff99d33b3fa449ee71ecceeecceec9c774edbd156a09c3b77f6ec19100b1ece9e3d77aee27fc939143ed4623518cc2006832193f0568ad9d488164a8413c33d896ca267185a99d7896cd75e4f227130e9f2ae15bbb645772040897bb5480294d2a6a258a0011abe450384d240b8122e2819291a2c963367ff5f3deab2582c46143823daffa03a8b442888655f994411a522e9595dced6b9e8429e2c93fe618fc733dc4f3ac8c82dd2ff20d4480b34df41c86ce29e96a124b4401d1d591a08d5d126ed304ad2858e04a95b58a059214b720b0e929b3772305d25e8321acc764992ec66037441df5fd1743b31c1a1d25e1d93bc498ba40705d2a8ee05f25e21557338e0683c743923811ac11175a983ce906340cda42399822a502a085d1e7590762a73a44ed55c34a40a8d242f08a9ac3a489aa097640c564b090cb8c0046651fbf1879f7ef85113edd0a7537f6b520402ffa148a2b64028989ed4aa1d1d61da4f07846177c82bd40da91d44506b02f154bf50171aec9e4d795382b0d0460273c21625ae595916e224e16aa15e18062c723ff5b7cdde96d538f1cbf203d26506bba06ece65348b938fff7e8cf2f7c793a2b96ccf3217da49144d1a8a20e73958489875176838e47c40875c244c1a8530e9d79a6837699aa5c34391387539f3b3cead05b22c6f390949092a2010423d7d820060328051929305214e01ac8f38ca609ceba7ef8f4bf2fd4f65b23217987479d89fcdcf753b40c21708c57fed7247c493d4b4642aa46921c790206422796dc1bfe7cfc7fdd1fafefe6c5f4de452c425d776cb7384ee0dc0aa00e13c8d28088616238970bc0476e9af6056b3f8eaf85b79259aaddf822197a4f970a5c4bd4e01a869b7c581166b5704553389a204226aaa20c0a50862c23617595698c8b709c1a1a28b2c2801322ba88da4168120c642c3aa8b46642143936530502afe80386fdffcc6b07e7f7bfc8368d04d56e66a220c8c5027fc8f36c4d62901309bcc50248c3c533e01121781d1a4322019259f4aa5ea52a9ad2d484e9324adf490c4ed7ed2d42d84a9bf43d8a391e565e21020d6666a285d2c07bfc5689fbc0c3cbf7d7cf9ee039c2e7ffe7c7c79d26ee4fdbaafed5a2d1a8ab203e0f91b1aaa0834d783366546d64c1ccc8bfd432288767bb4337261dc97cd66e7f294ada7cd018743bbb9978526214dcbd0d883038bd519ca969d97ca1601833d4643bdf9f49fd3dfc16eefbefefcf6f8b168282707f8da34caa908e15a1818c8f347ed0e772ab48c2693b42c8ed9d3c0918340c16d4baa7d8483f5fbf696e6cde6caa5bde101756068a07bc837d40687e17c7ed8751b2ef2e14193bd0c66356bdf33b03f7ebd8c163b3e79f9e6f87b0da38c83a1236f2114ff6378fe60b00a5b0e37c3750fa2ffb404620f6b9abaecc44efe4c5bb3d78d8fb4c92a332c944b20176426020a6f62180ada371633da7f3c2e81bdfdf0e1c35b0260c7ffb01b114c3798564bb89e5c1d612d06c6edc708d282266ac24c35c80c6872f0dbccbad7820d5e0a02609a28a180a755b9dad732fd7406806e77a35cb7d9c69f36bb045e103898f4b712d8c7d33fff383d3d79091efd9b64b4e86016a3d4ad7bf1eef5eb3ea6d26fb35551c2cdc2cefd9064fe500bc82559692665db7230742526b0a69958cace74b2be7458516ad3b95c2e1dd96fc799a2b33ced38d82b0ef6fed7d3ff7efe7cf9f2c927007b25193818a6a418e68a9a15b07813eae3605c333b646521ccad7ac1664b2170eae64d07b758d0833adb94073e260f5461aeae14b0e76d7e4211b18e4fe43c2ca55dd9621fd1956fdfbcf9f2e95b8b314fd6332eaf22c092fb704e8fa27057d24d2fe30b74cba31ccc17dc65c67a12b45553b4982de8c1c71fd9d28475046425854339dafe3a0f5d14663366b2728c31b0771f3efc76ca2df60f09634cf7e42dfee4a800c967afcc80f40b4a15bbf7b0a1619a85dab8324a98f81ada5155d4a6c84a17a8baa4d83858d0c1bd9b527c789d6ea9c7ebaa9bd34e0a52ca7752e469c7b35277e5bbdf8fdf7ffaf4f5cf7ff1acd4c10c620d5fd19c065b0f23bcc7317ce54e9cc51fb4d98269ecac5666aadb51c3dd9807f5876555559b60485c563ca8f349c3b41b073adaafb39cbd198be5f07cf1a29399cfaf076d1b9aa45cc738d8bf3e9e7cf972423fbf7d6c325b381886d810f3514e062b835861976117854ed4d26253141b3a9a5643f8f970e68d981b355c134ca2b4ddd5d55510140faee1516c03c03004efe2b0682c166bc1691f5e741290e686869b6e04746174972b3f077b73faf1dde9975fff78dbc193838141b160364e0812a43208b0192415c1688b22c84a3d7a02c12e300d17994bfa34c96c60d655650f46f53ee309c34258546e00d806827c87162329347d15453011c1caef4a6eb1cf2fff787ff2e5dd4fc25fc0fc0425a242c2f06dacc50860e89f7619aa563d4130685c404508861e01bf5bad605d49133c981d9b84e7b53247292ee9e1c3875578ebf945b4b0174ddf4e38184f4b886eb3f6eaf737fffef8f5f2bfdf7ffdf5849efca2a80c0cfacf615246595cd622d8191dccae21180d09aa0a60303f0723142d86a35d26289516b603153c8467a063178abb7cad54e378b1391f7343cb033d4a2dde2e83b1bdc33f3fbefff9ebcf9fbe7c3d39813854b68a58814b60593643ad86607c83cd5c49c95fc104dd95701f5d6966116944309da1caa600fe28af1a5c2882c1d983a6c7902983b15d8dd8d1f2fce5e9973f3f7dfe79da9b766649ae67c20264dc95113671275a0c631f3313821f6f7230d45302a30006426a5488317da8872120045a2cac1b8b72c0f30d4e2c8c90c4422d2dbbb2b485750ddae2fbbffcf397fda7b1dd66df742894bac14cc6c0426c7d7e5582a8b93281af612c177c07cbc1088f3124da8098816b9fac89f679180b433dec793df69530369dd317ce7369bb5e062bc5d8196631f69a76358e3737dc8d6dc4369eecde1c9f9b931b7b0c3a98411c668bab1744c833c9e1181ed4542cb094b0e087ace4e582053fb97bd1813d517c357afc2e93c6b292a6d3147b9fda6ccd14241d0bda702309213feea4dfb892bab052418ee93f4606038e40ce1d70bb8933e07678a3b54ddb3ccab0c0c6f90e42d124bb64eaa2c038aad83818cc0d6018638a82e502d23f56c5a27bdca6cc110074c90ac658e0e62661afce862778728e0358f70c92cd3931c61458218f310d154314b15f1a76ad295057e7f56e6e3eaf8a564537a3f58e1a892526be9266100ce31b7f20a55935b005d771fe69ccf24de4807d8b4d07fb8e814563d7a3a808d6c0626c7fdfcd3cfa2416c0fe5d000b0786b614db3e82796dc0c8c1a0225821be2b30f9cda23a1a08b84172cdebdee7eb551b91da36133399fe124737b0d06d23d8ae7ff4308ab4fe6bb6f16b0ee4b8bb1b0c62f003d8231eeaa93a8276b6f18a4af72fde64039d173750ff664330e880ab765b03167c5ec728cb22d8c64296559cc13aaec9113d83bd0102037314f29d9b0c83ccc768dce360153f65e9f51dd1933e781e5b58bb9bbd39eccbf9d9cf01fc43f1297da3750836bd1baba228de69d6e9bde0c50723cd51279cdcd1f1ea2cdb0cd5fb3bc4c2bdb5d68a8989a91bdb334a8b0e56e5a5517faec5db39da549c372218fa922bcf6dec8203d91bb9198e0ccce6a39c307b1e6eb04edb38c7c283dba6447024ce8ca6c186dbcbbaf9e17aad5e4a5c7dd88b5308b35d6391a38aded6890ccd3f7dee705266e296e8fa7a7dd4eb7092e4c8b3922f3bb9f2922568d0c7a746308e4aa2615d5d9da24c9746d21a5908a15af6c277732b3bc6d1a79c6714b8f946b8da8567f4b5dab39ad859abb0dceb9d74e03503a3249d626744efb1eabe946ee94febd6a955da4b35f2f690be508f8f378853100086329cb0aa694dd0c0cb4e057bf1b6b2e5d56d1a96e5a83e739babb425d60a5ddb5363159689d78bfd0eee0436057fba2b34b4c32b199099c50794f5e9fab684d9c6c6c64b97e0a02e4303a56dab0fc5e52a98444d8d6773e9aefc2cfe2c1f8cc76b50065538a3c43b04d9579f0e38428350eb060706e2f1f8c0404787de6884ed524fa61782bf75a49077c24a71117a02b487dab44a5ec8789d33f9b043b7499fca7f5368a593aa6a4ce064623f31014db8ad6ad8c60b2e389237a0a5767403158263373e579a11b74b57ad98952f5e484d0f3a8983a4d239e7a6c3f334dfe86aac9c281af9064327abc97132ea7081423b8a84522c8a65994714d886ad88930228b5b3b6c4474c82e65b7028fd8633990ec5c949dec6234ec73fd0592d58c7d8d7b1a24b6d0cb734e5e8f9d1e9d00238a370bfd5ca3ee0953f54750c773969201b1650f97cab01c45c29997b0af6ca4900928a92d43302cbbd0a6fee3bc5c23db1729e7d0a9d5ad9b64f16edf36395f3d2d4a4bd084f1741bf5d1c4b4a77e6572acdb0c449f34ad1ccc4d0fa0ca84a951f4a3f7e8cabad0d2f389685d71250632fda8bbf4d111e5ec7b70e3b4ccc0c2f96928ba07f2c59301c99d7920791557be6e0c89e995abcb7bd63345626a5d56221725080ed45b277b1677264a4b798589de85d321f2533e6a93b910983a1325098489a7b926b2b536b532b47078be6a5c2aa6129719f693e5ba17fec351a560ab744f1f0f5e13cb365f9233127635f3841702f63b5de1bcb4e59ad5757138bf7bb0cc91b634b23e6c444d74a64a2e81cbb62b5aedd3178cc233b6319a3f56ad278b03335d6dbbb43460c4799d6e4da81d9d39b6c351a7b9386d5d5ca4c64c4e075562edde819a91c594b1aeb7a5900a1ea731c0dd9508c571955198b93011a0cb10232ca8de49d568ba5752ad9bb73e3c58dc59e7bafefa78ed6cc23522b9db042774feb912171670cc2a13763bc73b53732f66c7b69e9c552efcedae2d4e46a320b8b5b5c358e15ee270f160d8931c3cec141b1984cee5cbdc39497f5323614a4d2917529a395c582910064ad9667b87184256d2f150d4683f1680aef5fb15c31decfdcbfc29a1680a8bc6a7c66345c315a5f18af182a6f2417add803a38cadadf83c8e00ebb6e24d3d82fe0fde69065ddf9f68d80000000049454e44ae426082),
(3, 0x89504e470d0a1a0a0000000d494844520000008e0000002808030000001f6632c900000204504c54454c697101010101010101010101010101010101010101010101010101010101010101010100362b010101004839003b2f010101004335010b0801060500564200473800181306564300534100241d003a2e00503e005240004238001913004b3a005643004133004e3d003429003328004f3e004839004034004e3b005140004c40004f3d003a2e005042fffffffff100ffff00004748005543fff400003721003b4dfffe00005643fffb00fff700003b27004b3800331c0c5d40004d3a003450005045fff300003c4e005342014f3df3ec04004936fff000002a53fff8004a8432004b47e3edea002b1300442f236b3c003850749d2800412d5e912dd8e6e300444a9fc1b9c4d9d5cededb015847508632004b4b679b904184770017009eb71c11613ff8fbfbaac6c0bdca14e8e508faf104c5cf13fdf302003153327537003f4a4e8c7f004633327c6e00414caec2183a7e70ecf4f28dac20dfde0bdadc0c588b2fb8d0cb97bab383a52400523fe3e20a3a7937d3d70f80a99f00200819653f002f518cb3abf2f6f6125847b6c415538c31f3f703427e35e7f0ee91b5ad86ada42a716275a59b2a713a001f59035a412d766767942aeee8077ba1261b6655155f4ed1e2de5c9185749b9094b01fccd310001d2e69982a4a8173236c5cddeae85f958a3e75665a887b0031414a7a37386b3d365f4e095a31889a8f498d9297b1099eaea5f596c0180000002e74524e5300181014020e080401071a0c4c168b581e732821eb8025fed33652c1e17a309cf266a84248b3926ef5c9b9eb60f1a8e6fc6400000adc4944415478dabd58f9571ad9127e42c00841158942dcf72433a397a6a1a1c1ee16105105106d154dd4b84b8c6a4c4c8c514d4cc6c9a2d997c94c665fdef24fbebaf776131132e7cc79e7bcef17aaab6f535f57d5adaabeffc88dd3181997b9f08fff1da74fe5ebf5654d3aa3be20ffd4e99c4c4efd1f002f434c011ba3e61c7356a3d367d35156e41714e8f5fa82827c8c02b8c889cc257f03f82185557e815ea7cd6b66ca4bb5d97c800ce6a2d71b751846a31e44903f0fa302dddf00f95fe53dc0355a43a945922a0c5a63417e261df00c5da135e5e5994c5a0a135ce486495d0342d6a2bf7a084243a0d368f38acb8a38692c70cea001f79c6403646045435dd5d9aa2f6dc58033e71414e542a31996349cf97b686c6ca8d6e8c0a51a93a1b8a1a8ae2235d01fb7949a205c99499e0f9134d86a2abd099ee7a3e7ad85e61226280431188edb14b02c04929b21af02e1ab8aba46266027903886617a891860184e52b51ce81459d131e56526f0a9e14c7d65af5d5e0e4fa3317b0d0ed709df684cc5cde53c1ff861f5f2eaeb101badb4044302b6bb9964025412929b02a78011787ed3c230ed14c0a197c893404c92da893819904047f10c2e01b0b008bc6aae09f8fdcc642c169b411371c696a7d16756009da9ccbae4fb61a8af1563647b5f10848d118c614ee0b7df6269f0f9ced33e156fa73eb22139d689f1f57527632f5fff1aa499763b27f67f8db59e4351ba4124d0bfe80109dfeead329bcf5964f160e5ceacc7e1f074a343d15aacd565b2d19659f9d0a3d64f78be73990ac36c2874858ac1c47d2a504c2dfd7a8090cbe542fd2227dec622ba3326f58e7512e59c7f01eb08d0408cdc4631b9b9ba8413f75710426e404717babbdcdb62d01ca35360d41a2e24a2c3c74cad954786a8748d65156243e3d75a3370e9bb7ed4d6d6d6ed3e94edd2ac0b44b4e267c4ef51475b9bbb7b373ce976b71174a09e3107c80e74e0acf93220fe3e83babbdad47bfd0bb565da341d9c38792da184ca869288306b44e8f30aec14d55d1ebf9749e7edafd711e6b02e49e22be000e2ed38388728af2f2c4c80002034c475a27d15afe5167e4308c8a8707bdae5a6bc63b1326acb6a234f8f1b1ae67dab54bae50b2569ac7e8c260633e95c19fb37b1f160592e9f779137bde9141f2207b1118eb9ddaa45c7ae384d964ef8032265031c9103ffba21ac52c3273a90c7554bfb6093606368a4b57595f5dd535c928ed5bdf1275418fccf8622c80fa823fc0b103580072dc6e51b8846203e8dad7610a7cd30e204652ec763844d174273b75f7603a7f9955149aa4dd38158192a7cdb0a9bab3e367af9a977a97c8d3aa03ce4bba5c46f5c49f5d73b91773499786a7a203c3643e8b86627c337b173d04b297c88bac105ee79cce2c31844130b37e2f64ed44518fe161e7301a7fe5dbf93ab28c9a053c96f28bef179b920cf06d8ab6aacbcc16f687287a25418e6990875d8bfd84e845db275f43d7000a0b965ff5dea9c3d3f718e6b7ac643c219a734eff889971c685ada0387adf4c8a2bdb6fe8c49732c93b5a55f2c0d2b11f1e1021b60d22e618158e6be7ab7131168794afde9706397707e78630fb6f6edd122f24020ee8c857bb079d7dd01a29ff0a7e006e4c98d09acee801de8e7ca07627ea7642d311b4c1ae3273a46a0a3eef2b75181017805ea896f825e764a8dd5631abed5fd5fded2b87eb7e5f2e00060d39ed94e471b7a713447fcd5135ea65eea7981e886b3ef92649f8727e07ada9fe2182e255bea8b8a810cf4551a295a914badfc949a3b9124547c76557189cf1ba0a5af2fb1d447756a29dc8e38471179f5853ba8cb3537e371a0dd76e29cf5e5bd873436f115c2ea855362ee9028394806c929ab25c058abcc863cd2e4f3a185aa3399d650d6e47baa6eded72cf049971a5e25f6689ce68b8ae15f78c1ff02171b74b0883adcebb7dd1d6ecf182e44dd686b4fc209eb403d0b4002ff3a2519763a06b09ddd7756d82ed49f03c768753002e1998c744e18578d9abc52f3b18dfe6362890b71f7a91c12d8218518dd5769dcda8926e3b77164ba771fa02ed43f8020930f3ddd3814f13da8cc60f765bc1d87a8dbbdb8cce0c500c256ac359756e7d1e9a700b8e0799590d1e199acbad99afc54068758265d6a7ca17d2af52d4569acd298e237f12e010eb067dceee4b7080ad0b7a80bcc2d86a5972e9242475b2481db76ed0c8d2c29536168eb2448e0184a060064c8185454ff55c29bf47e6a59d778755fada6f7d5f6f8f3d613b8ca2e3f40d81773a80bf2074a907b7add8dfb96738f368fe985f04d12ce19ae978bf7503aae4ec95e589aa7812f08850b0521632eb10659fef9136f9217be51dd1351c4b54daf1aabe7b0afa853fe78dfa73612fb079c189d9e0e0f74ea0ef0c73c76857b32fccc839de3eaf1fb29afbb9214f0037752711e2e58800d0912254301e35f63bd25ea8b7e9c028730c9c84f0a9d9188dac2d990778d6ef868684dcda1c83e15d7a410698b1e070c096152563cd81513a2484b5ddbfaccccac83f4f9e580bc4b3b185a97a52283560f6432c7f5b2ba8b9b3cfbe6fd307ed14d8ef3bd56e80ca663c547d4e20c35507598c00fd20d3ff6270c15b4551d1c0d405430dcb3d03b11ed9d2e047d82961d4e7ca1386740b4c2708c87f54c5c6498e0cf5364435d8af800f7d4260af60892e3e01c821f76949b97c6f99d5585f5af8b6a72aecb226432955fed892b54a6204dcdc940cf509df365b1d698fda55714e0d5be797fe3f1fbed742a5f8a5e5178fd7350cda62545fae98f9fdfdf57b6dd77e011e58df7c63e20ea90f9f2f0a1ab1b6b3d00e57e8f538e7968acfac54a73b1569f4dc7d49478d29a0bc29b939a37e0912cbc26b320003a94fcec25c84aeffc00bbbdcb832054946eb76b3105b32b1563a916734eefd0992b1b3fed64b0a443c7adac65ef7cfeeb0a85ef17ec306a51667298961ad7e8ef5b5bbfcfb988c77665195a186d0fd285e65293b1208b8ec6d0128a0e669979ec5b0adc3fa10905fb4e2e7bea0bfa5790121fbb138a0a0d5b180c77e1de1e76a6443f14235276c4984b89d59133e5bc9897239575da62abef6471bbf2ce2724d9ede3aaf73e81bf7662d9e0c7489091e7900380ae8b5cbc1f8b1df0f2e101e401dd3c23375d5c3e74b9410d65270cf701aef9f69bfd03fd07459a6c3a30b0db02be21a090b6d2f7f80d1b3c5b28443ff5a7a9276c90f34d657019fa45602d855f419bc4e82eb7e31a47b0156ef710e19568b1d5c00448f0412c9fa7d2dcd1cacbbb68a22a071df89c29ae897aafb45efbf9d1c6c8e0c8c6a377015fc25262365784d88fb786070747a6b69fb0bce54240b87a298dab4f605af436d9aa25aee7e1e8e8e8c3453b1790b688d8d3db3b79b30783915aaa6b7b17076e020616ed9303a3180f63a9d862ec2066cb112c32e858228f5b133e36110a86122c1bb21496c1376b697d80679782412fcf26024db6662609f7d24808d6c286b2b2168e49393196391890642741e0994405c9626e649ed9e9850c5a0afb33bb6c4fb5641fa1d0ef2b4391f0e6aad7525179fefcf9ca8a9aba329840c8177d8df58ba000aac2c6d2d2bab3c7505552642b36c0f188adf0af70b6c1602bc98d3a1b3960caa683bf3e2b8404d76c3657579bc1084c20f81c091fbec0d861c3aa3ce504c740011210d668741a721664c80d58f3d90322b061d4e7ab74b24e0aca03cc19304b8dc068460fc1801100ab74e4844ba30264588481697f06f49c2be3c18cc7299b1c7c34da2aa692308655641d00186173549575fc5790af00f47f7976a83e98fd38ede6d9740a60e8a92c04af905564020160462a402697998ad354fb599c5291fb4e8e93e0ff0272b7beb093a1d46d0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logo` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Ingredients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`Id`, `Name`, `Img`, `Logo`, `Price`, `Ingredients`, `Type`) VALUES
(1, 'Буррито с говядиной', '\\shaurma\\burrito.jpg', 1, 230, 'Говядина, Халапеньо, фасоль, сметана, сыр', 7),
(2, 'Буррито с курицей (остр)', '\\shaurma\\burrito.jpg', 1, 190, 'Курица, Халапеньо, фасоль, сметана, сыр', 7),
(3, 'Фахитос с курицей', '\\shaurma\\fahitas.jpg', 1, 200, 'Курица, мексиканская смесь, соус гуакамоле, грибы, маслины', 7),
(4, 'Фахитос с говядиной', '\\shaurma\\fahitas.jpg', 1, 260, 'Говядина, мексиканская смесь, соус гуакамоле, грибы, маслины', 7),
(5, 'Шаурма c курицей', '\\shaurma\\shaurma_kurica.jpg', 1, 170, 'Куриная шаурма в лаваше с фирменным соусом и овощами', 7),
(6, 'Шаурма c говядиной', '\\shaurma\\shaurma_goviadina.jpg', 1, 220, 'Говядина со свежими овощами в лаваше', 7),
(7, 'Мини-шаурма c курицей', '\\shaurma\\shaurma_kurica.jpg', 1, 130, 'Мини-версия фирменной шаурмы', 7),
(9, 'Мини-шаурма c говядиной', '\\shaurma\\shaurma_goviadina.jpg', 1, 150, 'Мини-версия фирменной шаурмы', 7),
(10, 'Свинина с овощами в соусе тайчили', '\\shaurma\\pork-taychiliroll.png', 1, 210, 'Добрая порция свинины в лаваше', 7),
(11, 'Курица с овощами в соусе терияки', '\\shaurma\\teriyaki-chiken.png', 1, 190, 'Курица в лаваше со свежими овощами в соусе терияки', 7),
(313, 'Овощной', '\\sandwiches\\ovoshnoy.png', 3, 105, 'Соус и овощи на выбор', 6),
(314, 'Индейка', '\\sandwiches\\ind.png', 3, 130, 'Сэндвич с индейкой, соус и овощи на выбор', 6),
(315, 'Ветчина', '\\sandwiches\\vetchina.png', 3, 130, 'Сэндвич с ветчиной, соус и овощи на выбор', 6),
(316, 'Индейка и ветчина', '\\sandwiches\\indandvet.png', 3, 130, 'Сендвич с индейкой и ветчиной, соус и овощи на выбор', 6),
(318, 'Морепродукты', '\\sandwiches\\moreprodukty.png', 3, 130, 'Сэндвич с филе тунца, соус и овощи на выбор', 6),
(319, 'Тунец', '\\sandwiches\\tune.png', 3, 150, 'Сэндвич с филе тунца, соус и овощи на выбор', 6),
(320, 'Острый итальянский', '\\sandwiches\\ostitaliansky.png', 3, 150, 'Сэндвич с салями и пепперони, соус и овощи на выбор', 6),
(321, 'Б.М.Т.', '\\sandwiches\\bmt.png', 3, 150, 'Ветчина, салями, пепперони, соус и овощи на выбор', 6),
(322, 'Куриная грудка', '\\sandwiches\\kurgrud.png', 3, 150, 'Куриное филе, соус и овощи на выбор', 6),
(323, 'Ростбиф', '\\sandwiches\\rostbif.png', 3, 165, 'Сэндвич с говядиной, соус и овощи на выбор', 6),
(324, 'Мелт', '\\sandwiches\\malt.png', 3, 165, 'Индейка, ветчина, бекон, соус и овощи на выбор', 6),
(325, 'Курица бекон', '\\sandwiches\\kurbeckon.png', 3, 165, 'Куриное филе с беконом. Соус и овощи на выбор', 6),
(326, 'Террияки', '\\sandwiches\\teriaki.png', 3, 165, 'Куриное филе в кисло-сладком соусе. Соус и овощи на выбор', 6),
(327, 'Биф Клаб', '\\sandwiches\\beef-club.png', 3, 150, 'С котлетой из курицы и говядины', 6),
(328, 'Vega Бургер', '\\burgers\\vegaburger.png', 2, 125, 'Вегетарианский с овощной котлетой (можно в пост)', 1),
(329, 'Дарт Вейдер', '\\burgers\\darthvader.png', 2, 195, 'С большой говяжей котлетой, сыром, салатом', 1),
(330, 'Деревенский', '\\burgers\\derevenskiy.png', 2, 124, 'Со свиной котлетой, беконом, драником и салатом', 1),
(333, 'Вестерн', '', 2, 110, 'Со свиной котлетой, луковыми кольцами и соусом чипотл', 1),
(334, 'Гамбургер', '\\burgers\\gamburger.png', 2, 55, 'Бургер с говяжей котлетой и кетчупом, но без овощей', 1),
(335, 'Чизбургер', '\\burgers\\cheesburger.png', 2, 65, 'С говяжей котлетой, кетчупом и сыром, без овощей', 1),
(336, 'Чикенбург', '\\burgers\\chikenburger.png', 2, 69, 'Бургер с куриной котлетой в панировке', 1),
(337, 'Премиум', '\\burgers\\premium.png', 2, 135, 'Говядина, салат, соленый огурец, помидор, лук', 1),
(338, 'Пикантный бургер', '\\burgers\\spisy.png', 2, 135, 'куриная котлета, салат, лук, сол. огурец, сыр и медовая горчица', 1),
(339, 'Двойной премиум', '\\burgers\\dublepremium.png', 2, 175, 'Такой же, как Премиум, но с 2', 1),
(340, 'Королевский бургер', '\\burgers\\kingburger.png', 2, 230, 'Говядина, бекон, куриное филе, сыр, салат, овощи', 1),
(341, 'Чизбургер с беконом', '\\burgers\\cheeseburger-with-bacon.png', 2, 95, 'С говядиной, беконом, луком, сыром и огурцами', 1),
(342, 'Пири-пири Бургер', '\\burgers\\burgerskurinymfile.png', 2, 125, 'С острым куриным филе', 1),
(343, 'С куриным филе', '\\burgers\\burgersojguchimfile.png', 2, 95, 'С фирменным куриным филе, майонезом и салатом', 1),
(344, 'Слоппи джо', '\\burgers\\sloppyjo.png', 2, 130, 'С куриным филе в соусе BBQ, салатом и майонезом', 1),
(345, 'Со жгучим куриным филе', '\\burgers\\cheeseburgersbekonom.png', 2, 100, 'С фирменным ОСТРЫМ куриным филе, майонезом и салатом', 1),
(346, 'Имперский', '\\burgers\\imperial.png', 2, 145, 'С куриным филе, картофельным драником, сыром, салатом', 1),
(347, 'Сырный бургер с беконом', '\\burgers\\cheeseburger-with-bacon.png', 2, 140, 'С куриным филе и беконом, сыром, майонезом и салатом', 1),
(348, 'Овощной салат', '\\salads\\vegasalad.png', 2, 95, 'Вегетарианский салат (можно в пост)', 5),
(349, 'Кубит', '\\salads\\kubit.png', 2, 150, 'С куриным филе и картофельным драником', 5),
(350, 'Vega Ролл', '\\salads\\vegaroll.png', 2, 100, 'Вегетарианский с луковыми биточками (можно в пост)', 5),
(351, 'Цезарь', '\\salads\\salad.png', 2, 135, 'С куриным филе, салатом, сыром Пармезан и сухариками', 5),
(352, 'Лукошко', '\\salads\\lukoshko.png', 2, 125, 'С куриным филе, жареными грибочками, соленым огурцами и сыром', 5),
(353, 'Салат с тунцом', '\\salads\\saladtun.png', 2, 163, 'Тунец с салатом, болгарским перцем, маслинами и кукурузой', 5),
(354, 'Курица с яблоком и апельсином', '\\salads\\salad.png', 2, 120, 'салат, яблоко, апельсин, огурец свежий, куриное филе', 5),
(355, 'Курица с грецким орехом и черносливом', '\\salads\\salad.png', 2, 120, 'салат, орех, чернослив, куриное филе с чесночным соусом', 5),
(356, 'Салат греческий', '\\salads\\salad.png', 2, 130, 'Салат, помидоры, огурцы, маслины, болгар. перец, Фета', 5),
(357, 'Мини-тортилья', '\\salads\\tortiliya.png', 2, 65, 'Мини-лепешка, куриное филе, сыр, салат, помидор', 5),
(358, 'Тортилья SFC', '\\salads\\tortiliya.png', 2, 120, 'Куриное филе SFC, салат, помидор, сыр, майонез', 5),
(359, 'Тортилья пири-пири', '\\salads\\tortiliya.png', 2, 130, 'С острой курицей Пири-пири, салат, помидор, майонез, сыр', 5),
(360, 'Pepsi', '\\drinks\\pepsi.jpg', 3, 48, 'Объемом от 0.4 Л, на выбор', 3),
(361, 'Pepsi', '\\drinks\\pepsi-bottle.jpg', 3, 60, 'Бутылка 0.6', 3),
(362, 'Mirinda', '\\drinks\\mirinda-bottle.jpg', 3, 60, 'Бутылка 0.6', 3),
(363, '7up', '\\drinks\\7up-bottle.png', 3, 60, 'Бутылка 0.6', 3),
(364, 'Mountain dew', '\\drinks\\mountain-dew-bottle.jpg', 3, 60, 'Бутылка 0.6', 3),
(365, 'Сок', '\\drinks\\juice.jpg', 3, 40, 'Упаковка 0.25', 3),
(366, 'Минеральная вода', '\\drinks\\mineral-water-bottle.jpg', 3, 50, 'Бутылка 0.6', 3),
(367, 'Адреналин раш', '\\drinks\\adrenaline-rush.jpg', 3, 70, '', 3),
(368, 'Кленовый пекан', '\\drinks\\maple-pecan.png', 3, 75, 'самая популярная выпечка Subway', 3),
(369, 'Кукис', '\\drinks\\cookies.jpg', 3, 40, 'Творожная масса с шоколадной крошкой', 3),
(370, 'Брюссельская вафля\"', '\\drinks\\brussels-waffle.png', 3, 70, '', 3),
(371, 'Маффин', '\\drinks\\muffin.jpg', 3, 65, '', 3),
(372, 'Круассан', '\\drinks\\croissant.jpg', 3, 75, '', 3),
(373, 'Кусок фирменной курицы', '\\chicken\\kusok-kuricy.png', 2, 65, '1 кусочек курицы в фирменной панировке SFC\"', 2),
(374, 'Чикен барбекю', '\\chicken\\chiken-barbequ.png', 2, 95, 'Куриный шашлычок на шпажке с болгарским перцем и луком', 2),
(375, 'Чикен стрипс', '\\chicken\\chiken-strips.png', 2, 149, '6 кусочков фирменного филе', 2),
(376, 'Чикен террияки байтс', '\\chicken\\chiken-bits.png', 2, 137, '6 кусочков филе в соусе террияки с салатом и кунжутом', 2),
(377, 'Пири-пири вингс', '\\chicken\\2bolshih-kryla.png', 2, 105, 'Пара крыльев в фирменной панировке пири-пири', 2),
(378, '6 Острых крылышек Hot\'n\'Flakey', '\\chicken\\6ostryh-krylishek.png', 2, 180, '6 шт в острой фирменной панировке', 2),
(379, '12 Острых крылышек Hot\'n\'Flakey', '\\chicken\\6ostryh-krylishek.png', 2, 324, '12 шт в острой фирменной панировке', 2),
(380, '24 Острых крылышек Hot\'n\'Flakey', '\\chicken\\6ostryh-krylishek.png', 2, 599, '24 шт в острой фирменной панировке', 2),
(381, 'Маленькая картошка', '\\chicken\\free-mini.png', 2, 45, 'Стандартная порция на одного', 2),
(382, 'Большая картошка', '\\chicken\\free.png', 2, 69, 'Большая порция на одного голодного', 2),
(383, 'Картошка \'по-английски\'', '\\chicken\\potatoes-in-english.png', 2, 65, 'Крупные дольки молодого картофеля', 2),
(384, 'Картофельные драники', '\\chicken\\dranik.png', 2, 40, 'Треугольные биточки из картофеля', 2),
(385, 'Соус сырный (порц)', '\\chicken\\sirniy1.png', 2, 20, '', 2),
(386, 'Соус чесночный (порц)', '\\chicken\\chesnochniy1.png', 2, 20, '', 2),
(387, 'Соус карри (порц)', '\\chicken\\curry1.png', 2, 20, '', 2),
(388, 'Соус кисло-сладкий (порц)', '\\chicken\\kislosladkiy2.png', 2, 20, '', 2),
(389, 'Соус горчичный (порц)', '\\chicken\\gorchichniy1.png', 2, 20, '', 2),
(390, 'Соус сальса (порц)', '\\chicken\\salsa1.png', 2, 20, 'островатый', 2),
(391, 'Соус барбекью (порц)', '\\chicken\\bbq1.png', 2, 20, 'с дымком', 2),
(392, 'Соус томатный кетчуп (порц)', '\\chicken\\tomatniy1.png', 2, 20, 'классический вкус Heinz', 2),
(393, 'Куриная лапша', '\\chicken\\kursup.png', 2, 80, 'На курином бульоне с домашней лапшой', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `typesoffood`
--

CREATE TABLE `typesoffood` (
  `TypeId` int(11) NOT NULL,
  `TypesOfFood` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `typesoffood`
--

INSERT INTO `typesoffood` (`TypeId`, `TypesOfFood`) VALUES
(1, 'burger'),
(2, 'chicken'),
(3, 'drink'),
(4, 'pizza'),
(5, 'salad'),
(6, 'sandwich'),
(7, 'shaurma');

-- --------------------------------------------------------

--
-- Структура таблицы `typesofingredients`
--

CREATE TABLE `typesofingredients` (
  `Id` int(11) NOT NULL,
  `TypeName` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TypeNameRussian` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `typesofingredients`
--

INSERT INTO `typesofingredients` (`Id`, `TypeName`, `TypeNameRussian`) VALUES
(1, 'bread', 'Хлеб'),
(2, 'fillings', 'Начина'),
(3, 'sauces', 'Соус'),
(4, 'sizes', 'Размер'),
(5, 'vegetables', 'Овощи');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Type` (`Type`);

--
-- Индексы таблицы `logotips`
--
ALTER TABLE `logotips`
  ADD PRIMARY KEY (`LogoId`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Logo` (`Logo`),
  ADD KEY `Type` (`Type`);

--
-- Индексы таблицы `typesoffood`
--
ALTER TABLE `typesoffood`
  ADD PRIMARY KEY (`TypeId`);

--
-- Индексы таблицы `typesofingredients`
--
ALTER TABLE `typesofingredients`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT для таблицы `typesoffood`
--
ALTER TABLE `typesoffood`
  MODIFY `TypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `typesofingredients`
--
ALTER TABLE `typesofingredients`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `typesofingredients` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `typesoffood` (`TypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Logo`) REFERENCES `logotips` (`LogoId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
