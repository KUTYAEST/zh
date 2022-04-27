-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 31. 20:50
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizza`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dessertetlap`
--

CREATE TABLE `dessertetlap` (
  `id` int(11) NOT NULL,
  `dessert` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `dessertetlap`
--

INSERT INTO `dessertetlap` (`id`, `dessert`, `ar`) VALUES
(1, 'Gesztenyepüré', 800),
(2, 'Túrótöltelékes gombóc', 700);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `egytaletlap`
--

CREATE TABLE `egytaletlap` (
  `id` int(11) NOT NULL,
  `egytal` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `egytaletlap`
--

INSERT INTO `egytaletlap` (`id`, `egytal`, `feltet`, `ar`) VALUES
(1, 'Baconos tojásos nokedli', '', 1800),
(2, 'Csülökpörkölt', 'galuskával', 2800);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eloeteletlap`
--

CREATE TABLE `eloeteletlap` (
  `id` int(11) NOT NULL,
  `eloetel` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eloeteletlap`
--

INSERT INTO `eloeteletlap` (`id`, `eloetel`, `ar`) VALUES
(1, 'Burgonyarudacskák fokhagymás tejföllel', 1300),
(2, 'Rántott hagymakarika', 900);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `evoeszkoz`
--

CREATE TABLE `evoeszkoz` (
  `id` int(11) NOT NULL,
  `evoeszkoz` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `evoeszkoz`
--

INSERT INTO `evoeszkoz` (`id`, `evoeszkoz`, `ar`) VALUES
(1, 'Evőeszköz', 30);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `frissensultetlap`
--

CREATE TABLE `frissensultetlap` (
  `id` int(11) NOT NULL,
  `frissensultek` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `frissensultetlap`
--

INSERT INTO `frissensultetlap` (`id`, `frissensultek`, `feltet`, `ar`) VALUES
(1, 'Cigánypecsenye kakastaréjjal', 'sertéstarjából, választható körettel', 2450),
(2, 'Cordon Bleu csirkemell', 'választható körettel', 2400),
(3, 'Holstein szelet', 'vaslapon sült sertéskaraj tükörtojással, választható körettel', 2450),
(4, 'Mézes-mustáros sertéskaraj', 'vaslapon sült sertéskaraj mézes-mustáros mártásban, választható körettel', 2450),
(5, 'Olaszos csirkemell', 'roston sült csirkemell paradicsommal, sajttal csőben sütve, választható körettel', 2300),
(6, 'Párizsi bundás csirkemell', 'választható körettel', 2200),
(7, 'Rántott csirkemell', 'választható körettel', 2200),
(8, 'Rántott sertéskaraj', 'választható körettel', 2450),
(9, 'Roston sült csirkemell', 'vaslapon sült csirkemell választható körettel', 2200),
(10, 'Szezámmagos bundás csirkemell', 'választható körettel', 2200),
(11, 'Rántott camembert sajt', 'áfonyaöntettel, választható körettel', 2100),
(12, 'Rántott trappista sajt', 'tartármártással, választható körettel', 2100);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyrosetlap`
--

CREATE TABLE `gyrosetlap` (
  `id` int(11) NOT NULL,
  `gyros` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `gyrosetlap`
--

INSERT INTO `gyrosetlap` (`id`, `gyros`, `feltet`, `ar`) VALUES
(1, 'Gyros tál', 'hasábburgonya, gyros hús csirkecombfiléből, jégsaláta, paradicsom, kígyóuborka, fokhagymás tejföl', 2100),
(2, 'Gyros tortilla', 'tortilla, tejföl, gyros hús csirkecombfiléből, paradicsom, lilahagyma, trappista sajt\r\n2db tortilla tekercs salátaágyon', 2000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezo`
--

CREATE TABLE `jelentkezo` (
  `knev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `veznev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telszam` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `munkakor` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `rolad` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jelentkezo`
--

INSERT INTO `jelentkezo` (`knev`, `veznev`, `telszam`, `email`, `munkakor`, `rolad`) VALUES
('tesztker', 'tesztvez', 2147483647, 'teszt@tesz.com', 'futár', 'teszt');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `koretetlap`
--

CREATE TABLE `koretetlap` (
  `id` int(11) NOT NULL,
  `koretek` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `koretetlap`
--

INSERT INTO `koretetlap` (`id`, `koretek`, `ar`) VALUES
(1, 'Hasábburgonya', 600),
(2, 'Kukoricás rizs', 600),
(3, 'Párolt rizs', 600),
(4, 'Rizi-bizi\r\n', 600),
(5, 'Steakburgonya\r\n', 600),
(6, 'Vegyes köret\r\n', 600),
(7, 'Görög saláta', 1400);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `levesetlap`
--

CREATE TABLE `levesetlap` (
  `id` int(11) NOT NULL,
  `levesek` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `levesetlap`
--

INSERT INTO `levesetlap` (`id`, `levesek`, `feltet`, `ar`) VALUES
(1, 'Erdei gyümölcskrémleves', '4dl, pirított mandulával', 1090),
(2, 'Francia hagymaleves', '4dl, sajtos pirítóssal', 990),
(3, 'Tárkonyos csirkeraguleves', '4dl', 1090);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pancakeetlap`
--

CREATE TABLE `pancakeetlap` (
  `id` int(11) NOT NULL,
  `pancake` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `pancakeetlap`
--

INSERT INTO `pancakeetlap` (`id`, `pancake`, `mennyiseg`, `ar`) VALUES
(1, 'Baracklekváros palacsinta', '3', 800),
(2, 'Fahéjas palacsinta palacsinta', '3', 800),
(3, 'Kakaós palacsinta', '3', 800),
(4, 'Mogyorókrémes palacsinta', '3', 800),
(5, 'Túrókrémes palacsinta', '3', 800);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizzaetlap`
--

CREATE TABLE `pizzaetlap` (
  `id` int(11) NOT NULL,
  `pzzak` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `meret` int(11) NOT NULL,
  `meret2` int(11) NOT NULL,
  `meret3` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `ar2` int(11) NOT NULL,
  `ar3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `pizzaetlap`
--

INSERT INTO `pizzaetlap` (`id`, `pzzak`, `feltet`, `meret`, `meret2`, `meret3`, `ar`, `ar2`, `ar3`) VALUES
(1, 'Amerikai álom pizza', 'BBQ, alap, csirkehús, bacon, kaliforniai paprika, pirított hagyma, kukorica, cheddar sajt', 32, 45, 52, 2350, 4200, 5900),
(2, 'BBQ pizza', 'BBQ alap, csirkemell, tarja, bacon, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(3, 'Bolognai pizza', 'bolognai ragu, dupla trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(4, 'Camembertes-lekváros pizza', 'tejfölös alap, bacon, áfonyaöntet, camembert sajt, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(5, 'Csülkös pizza', 'csülök, pepperoni paprika, trappista sajt, \r\ncsülökpörkölt', 32, 45, 52, 2350, 4200, 5900),
(6, 'Eszter kedvence pizza', 'tejfölös alap, bacon, lilahagyma, kukorica, csípős pepperoni paprika, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(7, 'Főnök kedvence pizza', 'mustáros alap, bacon, kolbász, lilahagyma, tükörtojás, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(8, 'Füsti pizza', 'tejfölös alapcs, irkemell, füstölt tarja, füstölt sajt, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(9, 'Görög pizza', 'paradicsomos alap, sonka, olívabogyó, feta sajt, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(10, 'Gyrosos pizza', 'tejfölös alap, gyros hús csirkemellből, paradicsomkarika, lilahagyma, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(11, 'Hawaii pizza', 'paradicsomos alap, sonka, ananász, kukorica, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(12, 'Húsimádó pizza', 'bolognai alap, szalámi, bacon, csirkemell, füstölt tarja, trappista sajt', 32, 45, 52, 2350, 4200, 5900),
(13, 'Jalapenos pizza', 'paradicsomos alap, kolbász, sonka, jalapeno, lilahagyma, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(14, 'Juhtúrós pizza\r\n', 'tejfölös alap, bacon, sonka, juhtúró, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(15, 'Magyaros pizza\r\n', 'paradicsomos alap, kolbász, bacon, lilahagyma, csípős pepperoni paprika, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(16, 'Margaréta pizza\r\n', 'paradicsomos alap, paradicsomkarika, oregano, dupla trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(17, 'Mustáros pizza\r\n', 'mustáros alap, sonka, kolbász, bab, lilahagyma, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(18, 'Négysajtos pizza\r\n', 'paradicsomos alap, mozzarella sajt, camembert sajt, márványsajt, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(19, 'Songoku pizza\r\n', 'paradicsomos alap, sonka, kukorica, gomba, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(20, 'Sonkás pizza\r\n', 'paradicsomos alap, sonka, kukorica, lilahagyma, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(21, 'Szalámis pizza\r\n', 'paradicsomos alap, téliszalámi, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(22, 'Tanyasi pizza\r\n', 'tejfölös alap, csirkemell, bacon, lilahagyma, trappista sajt', 32, 45, 52, 2200, 3900, 5600),
(23, 'Tenger gyümölcsei pizza\r\n', 'paradicsomos alap, tenger gyümölcsei, olívabogyó, trappista sajt', 32, 45, 52, 2350, 4200, 5900),
(24, 'Tonno pizza\r\n', 'paradicsomos alap, tonhal, főtt tojás, citromkarika, trappista sajt', 32, 45, 52, 2200, 3900, 5600);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `savanyuetlap`
--

CREATE TABLE `savanyuetlap` (
  `id` int(11) NOT NULL,
  `savanyu` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `savanyuetlap`
--

INSERT INTO `savanyuetlap` (`id`, `savanyu`, `ar`) VALUES
(1, 'Csemegeuborka', 500),
(2, 'Házi csalamádé', 500),
(3, 'Tzatziki', 500),
(4, 'Uborkasaláta', 500);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szoszetlap`
--

CREATE TABLE `szoszetlap` (
  `id` int(11) NOT NULL,
  `szoszok` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szoszetlap`
--

INSERT INTO `szoszetlap` (`id`, `szoszok`, `mennyiseg`, `ar`) VALUES
(1, 'Fokhagymás tejföl', '250', 400),
(2, 'Ketchup\r\n', '9', 200),
(3, 'Majonéz\r\n\r\n', '9', 200),
(4, 'Mustár\r\n\r\n', '9', 200),
(5, 'Pizzaszósz', '250', 400),
(6, 'Tartármártás\r\n', '125', 300);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tesztaetlap`
--

CREATE TABLE `tesztaetlap` (
  `id` int(11) NOT NULL,
  `tesztak` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tesztaetlap`
--

INSERT INTO `tesztaetlap` (`id`, `tesztak`, `feltet`, `ar`) VALUES
(1, 'Bolognai spagetti', 'spagetti tészta, bolognai ragu, trappista sajt', 1900),
(2, 'Carbonara spagetti\r\n', 'spagetti tészta, carbonara ragu, trappista sajt', 1800),
(3, 'Füstölt sajtos-csirkés penne\r\n', 'penne tészta, csirkemell, füstölt sajt', 2200),
(4, 'Milánói sertésborda\r\n', 'spagetti tészta, milánói ragu, rántott szelet, trappista sajt', 2450),
(5, 'Milánói spagetti\r\n', 'spagetti tészta, milánói ragu, trappista sajt', 1800),
(6, 'Prosciutto penne\r\n', 'penne tészta, tejszín, sonka, fokhagyma', 1800);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tortillaetlap`
--

CREATE TABLE `tortillaetlap` (
  `id` int(11) NOT NULL,
  `tortillak` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `feltet` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tortillaetlap`
--

INSERT INTO `tortillaetlap` (`id`, `tortillak`, `feltet`, `ar`) VALUES
(1, 'Csirkés tortilla', 'tortilla, tejföl, csirkemell, lilahagyma, trappista sajt\r\n2db tortilla tekercs salátaágyon', 2000),
(2, 'Csirkés-kukoricás tortilla', 'tortilla, paradicsomszósz, csirkemell, kukorica, trappista sajt\r\n2db tortilla tekercs salátaágyon', 2000),
(3, 'Hawaii tortilla', 'tortilla, paradicsomszósz, sonka, ananász, kukorica, trappista sajt\r\n2db tortilla tekercs salátaágyon\r\n ', 2000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uditoetlap`
--

CREATE TABLE `uditoetlap` (
  `id` int(11) NOT NULL,
  `udito` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uditoetlap`
--

INSERT INTO `uditoetlap` (`id`, `udito`, `mennyiseg`, `ar`) VALUES
(1, 'Coca-Cola', '1,75', 700),
(2, 'Fanta', '1,75', 700);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'admin@gmail.com', '9107c773dca9c896d7ca984759c802eb'),
(9, 'teszt@teszt.com', '7815696ecbf1c96e6894b779456d330e');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dessertetlap`
--
ALTER TABLE `dessertetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `egytaletlap`
--
ALTER TABLE `egytaletlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `eloeteletlap`
--
ALTER TABLE `eloeteletlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `evoeszkoz`
--
ALTER TABLE `evoeszkoz`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `frissensultetlap`
--
ALTER TABLE `frissensultetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `gyrosetlap`
--
ALTER TABLE `gyrosetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `koretetlap`
--
ALTER TABLE `koretetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `levesetlap`
--
ALTER TABLE `levesetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pancakeetlap`
--
ALTER TABLE `pancakeetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pizzaetlap`
--
ALTER TABLE `pizzaetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `savanyuetlap`
--
ALTER TABLE `savanyuetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szoszetlap`
--
ALTER TABLE `szoszetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tesztaetlap`
--
ALTER TABLE `tesztaetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tortillaetlap`
--
ALTER TABLE `tortillaetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `uditoetlap`
--
ALTER TABLE `uditoetlap`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `dessertetlap`
--
ALTER TABLE `dessertetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `egytaletlap`
--
ALTER TABLE `egytaletlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `eloeteletlap`
--
ALTER TABLE `eloeteletlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `evoeszkoz`
--
ALTER TABLE `evoeszkoz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `frissensultetlap`
--
ALTER TABLE `frissensultetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `gyrosetlap`
--
ALTER TABLE `gyrosetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `koretetlap`
--
ALTER TABLE `koretetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `levesetlap`
--
ALTER TABLE `levesetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `pancakeetlap`
--
ALTER TABLE `pancakeetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `pizzaetlap`
--
ALTER TABLE `pizzaetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `savanyuetlap`
--
ALTER TABLE `savanyuetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `szoszetlap`
--
ALTER TABLE `szoszetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `tesztaetlap`
--
ALTER TABLE `tesztaetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `tortillaetlap`
--
ALTER TABLE `tortillaetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `uditoetlap`
--
ALTER TABLE `uditoetlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
