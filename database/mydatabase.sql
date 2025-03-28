-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 28 mars 2025 à 15:05
-- Version du serveur : 8.0.41
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `image_produit` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `url`, `image_produit`) VALUES
(1, 'Samsung Galaxy A54 5G 128GB SM-A546 50 MP (SIM+eSIM) T-Mobile, AT&, Unlocked', 159.99, 'https://www.ebay.com/itm/275926762447?_skw=samsung&hash=item403e8443cf:g:TXIAAOSw-0pmJ0S1&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UY1%2FUgmxvM7atg4ZXSBZtwCcuwxN%2BihmuvgSE56GL%2FzU8pDIzaCbBqc92v2T5vLf39ZVoR3W4ndHRsUYSfg6MmhN9WeWTSkKP7lURCN2caMB9hFd25Mprrpf48%2Fo%2BqYg6BVgw%2FpkSzVc1iC20OaZcdeCGTmr4yf1ztRY3a5IrrVZQ%2F4m09Rw1VdkzP8spNyiY5fXW08m%2Bj8jnaVPdIti9I19FMiEYWGVsm4%2FRzNOaBrNV8NSUFaKUWzXFovWq60vEH%2FkabwfIeem9Rw6pOWgmJV', 'https://i.ebayimg.com/images/g/TXIAAOSw-0pmJ0S1/s-l225.jpg'),
(2, 'Samsung Galaxy A15 5G 128GB Blue Black SM-A156 Unlocked T-Mobile AT&T Verizon', 139.99, 'https://www.ebay.com/itm/275382780260?_skw=samsung&hash=item401e17c164:g:TXYAAOSwLrZma3Z7&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5Uag88S1IHORwrzWXghcR9L9B2GHeSRJg%2BxJE56%2FQfO0eDSV3qCmHLPov7fIFHBJ%2B4pvbiG4hXLVt5ydplSJ8J5IuDUROvTocaV%2FsD0mOGxvlfiaF%2Fjlp9eBqYhY1SYm5Ode0MdPho6Qb8Z0lyfT9%2FMLwRvpnonfxN3loWswfsy71IUZcPxw5IlzUbrV890aBeIYv1%2FA6jIfgJMmqi5%2BuNGvetiExbgNBZ%2BCKdOW%2FognjCiWVOFVxE%2FF%2FkD2pJdOwVgNpZVYjKaNnOn2tyIRF0Nw', 'https://i.ebayimg.com/images/g/TXYAAOSwLrZma3Z7/s-l225.jpg'),
(3, 'Samsung Galaxy S21 5G G991U Unlocked Verizon T-Mobile Mint Straight Talk AT&T', 151.99, 'https://www.ebay.com/itm/176357531264?_skw=samsung&hash=item290fba5e80:g:rtoAAOSwFStlBK6i&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UbqKq2SUYgu1gAC7L0lKQziUGPWvDC5sLCwPQep%2Bj8j%2BXO4KleUvkhOGS5KOYNiO2qbWU3eAo3GuZC9pxnDFpLH3HiSs0V53zcBqazoBIfzC%2Bq9xlaNu1OSITxVQ7q49ooKO2WgqF8iqtgoL1dT458it%2Fw9yC5d0zWuOxwAZWcecoa5fv0ZAWlPTgxFmSvDvYH3RExwlW6fD2luOSEJuzDKFxwHPmi6YL5cSOjY%2Bi%2BYGmLy9Q%2FjpVTM82CJmljqO9hK%2FbQmaX51hmvuxCUNi2YW', 'https://i.ebayimg.com/images/g/rtoAAOSwFStlBK6i/s-l225.jpg'),
(4, 'New Samsung Galaxy Note 20 Ultra 5G 128GB Factory Unlocked T-Mobile Att Verizon', 309.88, 'https://www.ebay.com/itm/226468948528?_skw=samsung&hash=item34ba99ea30:g:ksoAAOSwy8lnCOX5&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UYQpdMBr4XsljkFPr7RPrY4zAI7m24hiIS%2BHPKeblyrA%2B%2BcQ6u10SQ%2BJRsftouiL8uDoGOeIKVufkzuBwB%2BRHkKXhrpLa3OKl547tLiK3pwdwYuA51Z%2FszeeqsqUmTemYe77%2B7OHL5CXEOfgVCmPsS9tvKSJZtt9MqP9Mwgcqox2Jh2g79riIMfA0UqNNbpj2dVLnGbP%2FtvleCxdz2V8xdkyeZe5JLVNNiMokyXQhU3WPEgBgClOLLfP46pi5n96JenTEvc52hMNcjCEFrVcdl5', 'https://i.ebayimg.com/images/g/ksoAAOSwy8lnCOX5/s-l225.jpg'),
(5, 'Samsung Galaxy S21 5G SM-G991U 128GB 256GB Unlocked Very Good Refurbished', 159.95, 'https://www.ebay.com/itm/185698601733?_skw=samsung&hash=item2b3c7fcb05:g:8fUAAOSwKQFi5E5W', 'https://i.ebayimg.com/images/g/8fUAAOSwKQFi5E5W/s-l225.jpg'),
(6, 'New Sealed Samsung Galaxy S21 Ultra 5G 128GB/ 256GB SM-G998U Factory Unlocked', 368.44, 'https://www.ebay.com/itm/186680796452?_skw=samsung&hash=item2b770ae524:g:JN0AAOSwHVZmSwd8', 'https://i.ebayimg.com/images/g/JN0AAOSwHVZmSwd8/s-l225.jpg'),
(7, 'Samsung Galaxy S22+ 128GB S906U Unlocked - Good', 209.99, 'https://www.ebay.com/itm/255803826545?_skw=samsung&hash=item3b8f18a171:g:~GgAAOSwHeVnKkDV', 'https://i.ebayimg.com/images/g/~GgAAOSwHeVnKkDV/s-l225.jpg'),
(8, 'Samsung Galaxy S21 Ultra 5G 128GB G998U Unlocked - Excellent', 259.99, 'https://www.ebay.com/itm/255020221191?_skw=samsung&hash=item3b6063c307:g:XsYAAOSw5ElnKotF', 'https://i.ebayimg.com/images/g/XsYAAOSw5ElnKotF/s-l225.jpg'),
(9, 'New Samsung Galaxy S22 Ultra 5G 128GB/ 256GB GSM CDMA Factory Unlocked', 378.96, 'https://www.ebay.com/itm/356339359651?_skw=samsung&hash=item52f77b1fa3:g:rpUAAOSwFyxnF3u-', 'https://i.ebayimg.com/images/g/rpUAAOSwFyxnF3u-/s-l225.jpg'),
(10, 'NEW UNLOCKED SAMSUNG GALAXY NOTE 20 5G SM-N981U 128GB ALL COLORS/MEMORY GSM+CDMA', 248.88, 'https://www.ebay.com/itm/195547073395?_skw=samsung&hash=item2d87838b73:g:FIQAAOSwryVjt9q~', 'https://i.ebayimg.com/images/g/FIQAAOSwryVjt9q~/s-l225.jpg'),
(11, 'Samsung Galaxy S21 5G SM-G991U1 128GB Unlocked Excellent', 189.98, 'https://www.ebay.com/itm/354341990110?_skw=samsung&hash=item52806daede:g:8fUAAOSwKQFi5E5W', 'https://i.ebayimg.com/images/g/8fUAAOSwKQFi5E5W/s-l225.jpg'),
(12, 'Samsung Galaxy S21 5G 128GB G991U Unlocked - Very Good', 169.99, 'https://www.ebay.com/itm/254986400075?_skw=samsung&hash=item3b5e5fb14b:g:4sIAAOSwmf1mVjrf', 'https://i.ebayimg.com/images/g/4sIAAOSwmf1mVjrf/s-l225.jpg'),
(13, 'Samsung Galaxy S10e/S10/S10+ Plus - Verizon/T-Mobile/AT&T Or Unlocked- Excellent', 124.41, 'https://www.ebay.com/itm/175371564488?_skw=samsung&hash=item28d4f5b5c8:g:0VAAAOSwAu5i2ApE&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UY5UNQSIrizealj4Ppl6grDwdL8DEIlxV%2Fq2wsZ3D%2FXhh4u%2BlPUXzE50Xsc48TK1Ny8UuqdTVcdBs8mjStt8pxvttUpuWZqgya%2F5vzoUUIvSHFORFn4uHEATGpEPjrBLRE3jemrMimbuZgv8MSiaFERWEMGubW042o5sq5SojuB%2Fx6xkgv5lL8RI%2FrYDelCHPsb54T4f4BKSjoInuAhQjoOpC3TBW%2FteucQzoiLoMrIOcdGe88qW6qjXzWhsarRAPBFMPBGJVv4Xuuud48mDoBK', 'https://i.ebayimg.com/images/g/0VAAAOSwAu5i2ApE/s-l225.jpg'),
(14, '🔥NEW SEALED Samsung Galaxy S22 Ultra 5G 128-512GB GSM CDMA Factory Unlocked US', 369.09, 'https://www.ebay.com/itm/316492116409?_skw=samsung&hash=item49b06671b9:g:x6IAAOSwLUZnSCvY&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UZIoeWworo1Xe7rSrYNTEsmCMVyCxwz5TY14dVLTVoqVfB6JsITgmwToK%2B3HjYd8vZQZW7RqTbI%2FpR9lI2KZd8HplzsB4cM4ekxEjXKoHHDVHryfZg05G7QARPKWVxkWPU8gQobdMhmHR35qzsrjUqU9LgG6qSIQou48aWvqfXxlXK%2FvyW1p1TMA%2B5lEEB8n3uk3Tw2v%2B3uWzAqwKyMwb2TtklDsXMq37o%2FFhOSODKC%2Fp802sc8n5y9siYJ6qhdTQL60GZDjMb%2FcVMhgrJwzeeX', 'https://i.ebayimg.com/images/g/x6IAAOSwLUZnSCvY/s-l225.jpg'),
(15, 'Samsung Galaxy Note 20 Ultra 5G FACTORY UNLOCKED VERIZON ATT TMobile - EXCELLENT', 309.48, 'https://www.ebay.com/itm/134845802705?_skw=samsung&hash=item1f656fa8d1:g:Zk8AAOSwlOxlsb5E&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UZ9UpOoezi7p7WIMQCzCPjiRhDOXN7Vcq%2BYUdXbRJTpCx7CdAIx6u3F0f%2BcXomwD9p87UlDM%2FoFDsshG22a%2BXRY9W3MuNceUGJ3vpgW7Wtv4fjtanqefOcmj5Aq8EWAIFoJhPYOUcXjufjTQpyGHE1RdC0F%2FKo0scAPnEhMMZ5kD0gGIy44CNi9gamkb0nbp6BDrgA7Tkp%2FmPytwxnLtSujHa3kY5KSQFUIrbMobabZwkk1eR%2F13BRx5XTp%2BpRK%2FQS1aIrX8y6m21Pn%2BqbCDxrW', 'https://i.ebayimg.com/images/g/Zk8AAOSwlOxlsb5E/s-l225.jpg'),
(16, 'Samsung Galaxy S9 G960U Unlocked Verizon Straight Talk Mint Boost AT&T T-Mobile', 85.49, 'https://www.ebay.com/itm/326421405148?_skw=samsung&hash=item4c003b5ddc:g:8gwAAOSwMcFdi5se&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UZPLYYcngZNvpj0Yo2EbjployGWrVsDAluD4bn3G4iWYXppGYr0JPhXRD0HKkah9gCJG%2BTn9fAX%2BiE5LzBMQmkN8b4oqjmLX8wL9A4ZrPWemR%2FRjvNhYc0eLh%2FbyRBrG6SQWJJJlGvrEV7gg6VpVZpPE1lEV%2Fvr9Y8v%2BpMeM6%2BbjLuY1MZrE%2B92xoDyuNo4hno5JnmfC0F3He8XTShlsKF3iSv6IAjgWjds5C%2FsYghsFn6lzkG3gLoYx%2F3taMSInLYVH0bl6%2B69OLuL393dC%2BvJ', 'https://i.ebayimg.com/images/g/8gwAAOSwMcFdi5se/s-l225.jpg'),
(17, 'Samsung Galaxy S21 FE - 128GB - Graphite - (Wi-Fi ONLY)', 92.98, 'https://www.ebay.com/itm/156745842645?_skw=samsung&hash=item247ec7bfd5:g:T~EAAOSwwtRkCNoK', 'https://i.ebayimg.com/images/g/T~EAAOSwwtRkCNoK/s-l225.jpg'),
(18, 'Samsung Galaxy A13 32GB A135U Black T-Mobile + GSM Unlocked Smartphone Open Box', 79.99, 'https://www.ebay.com/itm/197033292858?_skw=samsung&hash=item2de019743a:g:AjoAAOSwaL9nwLM3', 'https://i.ebayimg.com/images/g/AjoAAOSwaL9nwLM3/s-l225.jpg'),
(19, 'Samsung Galaxy S22 5G S901U Verizon Straight Talk Unlocked T-Mobile AT&T Mint', 209.99, 'https://www.ebay.com/itm/235882584312?_skw=samsung&hash=item36ebb298f8:g:DHEAAOSwQ3hkWT3u&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UZnxoecYj2HmMAlcicwGqHGApYwOdVXar5rPNq7kZPWD5irZWpu0dNmeJORPql5ONAV8PE6X86WH6ZParIhPl%2FkYityWzKwPHIVr5oS%2FOS%2Fr3i8xefeiZ490f%2FSyw0DwKu%2FC2%2FI%2Fjg0yyKLRDu0PTLuFvwuZn8WTXEhI0zt4%2BjPI59mImHJQWsjBwTd2UuY48mZl3Ofh9%2BDbIMQVsJPlAi%2Bv70sOeLumysMPi8J2u2Tg2XaPStPXE4YgksMWqNipWMuxWBsLfeuGOZIedBop4fc', 'https://i.ebayimg.com/images/g/DHEAAOSwQ3hkWT3u/s-l225.jpg'),
(20, 'Samsung Galaxy S22 5G - 128GB  - Unlocked - Excellent Refurbished - All Colors', 255, 'https://www.ebay.com/itm/156375281666?_skw=samsung&hash=item2468b17002:g:BAwAAOSwB9xmzJDI&amdata=enc%3AAQAKAAAA4PeG5RIuIyokJHJy903%2F5UaCtLY50x7B1Y04Mo2tHa%2B2cmZuCQH%2BZSkA3NLtiUUUXSrhXH8Q5VBWkdIBPjAlBcCG8EO29bd67IinGBgbI3Ki2zmFzoaok4m44NLGiY30lM%2B23HBLL3Bd90hboLzGDoreegNP%2Fy7q8m%2FIllfM0Xq2mShgsQJjN0vpLQDdOTfubXCkbOL6HmbdvHEKAvrjNKhfqdc4QOFaS8ZK4aKHvts6CoPtU6a92Yq5XClGeSJJzgYjr%2BLAnTCwyJKCdOEwa9FvgKFk3HM6URCKTl6GmTWm', 'https://i.ebayimg.com/images/g/BAwAAOSwB9xmzJDI/s-l225.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `image_produit` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_products_id` (`id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_sales_id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
