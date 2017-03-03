-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2017 a las 13:26:53
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `2ebal_almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` varchar(5) NOT NULL,
  `nombre` varchar(36) DEFAULT NULL,
  `direccion` varchar(46) DEFAULT NULL,
  `codPostal` varchar(9) DEFAULT NULL,
  `telefono` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `direccion`, `codPostal`, `telefono`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Obere Str. 57', '12209', '030-0074321'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', '05021', '(5) 555-4729'),
('ANTON', 'Antonio Moreno Taquería', 'Mataderos 2312', '05023', '(5) 555-3932'),
('AROUT', 'Around the Horn', '120 Hanover Sq.', 'WA1 1DP', '(71) 555-7788'),
('BERGS', 'Berglunds snabbköp', 'Berguvsvägen 8', 'S-958 22', '0921-12 34 65'),
('BLAUS', 'Blauer See Delikatessen', 'Forsterstr. 57', '68306', '0621-08460'),
('BLONP', 'Blondel père et fils', '24, place Kléber', '67000', '88.60.15.31'),
('BOLID', 'Bólido Comidas preparadas', 'C/ Araquil, 67', '28023', '(91) 555 22 82'),
('BONAP', 'Bon app''', '12, rue des Bouchers', '13008', '91.24.45.40'),
('BOTTM', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'T2F 8M4', '(604) 555-4729'),
('BSBEV', 'B''s Beverages', 'Fauntleroy Circus', 'EC2 5NT', '(71) 555-1212'),
('CACTU', 'Cactus Comidas para llevar', 'Cerrito 333', '1010', '(1) 135-5555'),
('CENTC', 'Centro comercial Moctezuma', 'Sierras de Granada 9993', '05022', '(5) 555-3392'),
('CHOPS', 'Chop-suey Chinese', 'Hauptstr. 29', '3012', '0452-076545'),
('COMMI', 'Comércio Mineiro', 'Av. dos Lusíadas, 23', '05432-043', '(11) 555-7647'),
('CONSH', 'Consolidated Holdings', 'Berkeley Gardens\n12 Brewery', 'WX1 6LT', '(71) 555-2282'),
('DRACD', 'Drachenblut Delikatessen', 'Walserweg 21', '52066', '0241-039123'),
('DUMON', 'Du monde entier', '67, rue des Cinquante Otages', '44000', '40.67.88.88'),
('EASTC', 'Eastern Connection', '35 King George', 'WX3 6FW', '(71) 555-0297'),
('ERNSH', 'Ernst Handel', 'Kirchgasse 6', '8010', '7675-3425'),
('FAMIA', 'Familia Arquibaldo', 'Rua Orós, 92', '05442-030', '(11) 555-9857'),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'C/ Moralzarzal, 86', '28034', '(91) 555 94 44'),
('FOLIG', 'Folies gourmandes', '184, chaussée de Tournai', '59000', '20.16.10.16'),
('FOLKO', 'Folk och fä HB', 'Åkergatan 24', 'S-844 67', '0695-34 67 21'),
('FRANK', 'Frankenversand', 'Berliner Platz 43', '80805', '089-0877310'),
('FRANR', 'France restauration', '54, rue Royale', '44000', '40.32.21.21'),
('FRANS', 'Franchi S.p.A.', 'Via Monte Bianco 34', '10100', '011-4988260'),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', '1675', '(1) 354-2534'),
('GALED', 'Galería del gastrónomo', 'Rambla de Cataluña, 23', '08022', '(93) 203 4560'),
('GODOS', 'Godos Cocina Típica', 'C/ Romero, 33', '41101', '(95) 555 82 82'),
('GOURL', 'Gourmet Lanchonetes', 'Av. Brasil, 442', '04876-786', '(11) 555-9482'),
('GREAL', 'Great Lakes Food Market', '2732 Baker Blvd.', '97403', '(503) 555-7555'),
('GROSR', 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', '1081', '(2) 283-2951'),
('HANAR', 'Hanari Carnes', 'Rua do Paço, 67', '05454-876', '(21) 555-0091'),
('HILAA', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', '5022', '(5) 555-1340'),
('HUNGC', 'Hungry Coyote Import Store', 'City Center Plaza\n516 Main St.', '97827', '(503) 555-6874'),
('HUNGO', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', '', '2967 542'),
('ISLAT', 'Island Trading', 'Garden House\nCrowther Way', 'PO31 7PJ', '(198) 555-8888'),
('KOENE', 'Königlich Essen', 'Maubelstr. 90', '14776', '0555-09876'),
('LACOR', 'La corne d''abondance', '67, avenue de l''Europe', '78000', '30.59.84.10'),
('LAMAI', 'La maison d''Asie', '1 rue Alsace-Lorraine', '31000', '61.77.61.10'),
('LAUGB', 'Laughing Bacchus Wine Cellars', '1900 Oak St.', 'V3F 2K1', '(604) 555-3392'),
('LAZYK', 'Lazy K Kountry Store', '12 Orchestra Terrace', '99362', '(509) 555-7969'),
('LEHMS', 'Lehmanns Marktstand', 'Magazinweg 7', '60528', '069-0245984'),
('LETSS', 'Let''s Stop N Shop', '87 Polk St.\nSuite 5', '94117', '(415) 555-5938'),
('LILAS', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', '3508', '(9) 331-6954'),
('LINOD', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', '4980', '(8) 34-56-12'),
('LONEP', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', '97219', '(503) 555-9573'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', '24100', '035-640230'),
('MAISD', 'Maison Dewey', 'Rue Joseph-Bens 532', 'B-1180', '(02) 201 24 67'),
('MEREP', 'Mère Paillarde', '43 rue St. Laurent', 'H1J 1C3', '(514) 555-8054'),
('MORGK', 'Morgenstern Gesundkost', 'Heerstr. 22', '04179', '0342-023176'),
('NORTS', 'North/South', 'South House\n300 Queensbridge', 'SW7 1RZ', '(71) 555-7733'),
('OCEAN', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\nPiso 20-A', '1010', '(1) 135-5333'),
('OLDWO', 'Old World Delicatessen', '2743 Bering St.', '99508', '(907) 555-7584'),
('OTTIK', 'Ottilies Käseladen', 'Mehrheimerstr. 369', '50739', '0221-0644327'),
('PARIS', 'Paris spécialités', '265, boulevard Charonne', '75012', '(1) 42.34.22.66'),
('PERIC', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', '05033', '(5) 552-3745'),
('PICCO', 'Piccolo und mehr', 'Geislweg 14', '5020', '6562-9722'),
('PRINI', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', '1756', '(1) 356-5634'),
('QUEDE', 'Que Delícia', 'Rua da Panificadora, 12', '02389-673', '(21) 555-4252'),
('QUEEN', 'Queen Cozinha', 'Alameda dos Canàrios, 891', '05487-020', '(11) 555-1189'),
('QUICK', 'QUICK-Stop', 'Taucherstraße 10', '01307', '0372-035188'),
('RANCH', 'Rancho grande', 'Av. del Libertador 900', '1010', '(1) 123-5555'),
('RATTC', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', '87110', '(505) 555-5939'),
('REGGC', 'Reggiani Caseifici', 'Strada Provinciale 124', '42100', '0522-556721'),
('RICAR', 'Ricardo Adocicados', 'Av. Copacabana, 267', '02389-890', '(21) 555-3412'),
('RICSU', 'Richter Supermarkt', 'Grenzacherweg 237', '1203', '0897-034214'),
('ROMEY', 'Romero y tomillo', 'Gran Vía, 1', '28001', '(91) 745 6200'),
('SANTG', 'Santé Gourmet', 'Erling Skakkes gate 78', '4110', '07-98 92 35'),
('SAVEA', 'Save-a-lot Markets', '187 Suffolk Ln.', '83720', '(208) 555-8097'),
('SEVES', 'Seven Seas Imports', '90 Wadhurst Rd.', 'OX15 4NB', '(71) 555-1717'),
('SIMOB', 'Simons bistro', 'Vinbæltet 34', '1734', '31 12 34 56'),
('SPECD', 'Spécialités du monde', '25, rue Lauriston', '75016', '(1) 47.55.60.10'),
('SPLIR', 'Split Rail Beer & Ale', 'P.O. Box 555', '82520', '(307) 555-4680'),
('SUPRD', 'Suprêmes délices', 'Boulevard Tirou, 255', 'B-6000', '(071) 23 67 22 20'),
('THEBI', 'The Big Cheese', '89 Jefferson Way\nSuite 2', '97201', '(503) 555-3612'),
('THECR', 'The Cracker Box', '55 Grizzly Peak Rd.', '59801', '(406) 555-5834'),
('TOMSP', 'Toms Spezialitäten', 'Luisenstr. 48', '44087', '0251-031259'),
('TORTU', 'Tortuga Restaurante', 'Avda. Azteca 123', '05033', '(5) 555-2933'),
('TRADH', 'Tradição Hipermercados', 'Av. Inês de Castro, 414', '05634-030', '(11) 555-2167'),
('TRAIH', 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', '98034', '(206) 555-8257'),
('VAFFE', 'Vaffeljernet', 'Smagsløget 45', '8200', '86 21 32 43'),
('VICTE', 'Victuailles en stock', '2, rue du Commerce', '69004', '78.32.54.86'),
('VINET', 'Vins et alcools Chevalier', '59 rue de l''Abbaye', '51100', '26.47.15.10'),
('WANDK', 'Die Wandernde Kuh', 'Adenauerallee 900', '70563', '0711-020361'),
('WARTH', 'Wartian Herkku', 'Torikatu 38', '90110', '981-443655'),
('WELLI', 'Wellington Importadora', 'Rua do Mercado, 12', '08737-363', '(14) 555-8122'),
('WHITC', 'White Clover Markets', '305 - 14th Ave. S.\nSuite 3B', '98128', '(206) 555-4112'),
('WILMK', 'Wilman Kala', 'Keskuskatu 45', '21240', '90-224 8858'),
('WOLZA', 'Wolski Zajazd', 'ul. Filtrowa 68', '01-012', '(26) 642-7012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos`
--

CREATE TABLE `detallespedidos` (
  `idPedido` int(5) NOT NULL,
  `idProducto` int(5) NOT NULL,
  `cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detallespedidos`
--

INSERT INTO `detallespedidos` (`idPedido`, `idProducto`, `cantidad`) VALUES
(1, 4, 5),
(1, 11, 6),
(1, 15, 6),
(2, 2, 77),
(3, 10, 7),
(3, 14, 2),
(3, 41, 8),
(3, 72, 33),
(4, 76, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(5) NOT NULL,
  `idCliente` varchar(5) NOT NULL,
  `fecha` date DEFAULT NULL,
  `codPostal` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idCliente`, `fecha`, `codPostal`) VALUES
(1, 'ALFKI', '2017-03-07', '48700'),
(2, 'CENTC', '2017-03-02', '23232'),
(3, 'BOLID', '2017-03-22', '44000'),
(4, 'BONAP', '2017-03-21', '99666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `proveedor` varchar(38) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `existencias` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `proveedor`, `precio`, `existencias`) VALUES
(1, 'Té Dharamsala', 'Exotic Liquids', '18.00', 39),
(2, 'Cerveza tibetana Barley', 'Exotic Liquids', '19.00', 17),
(3, 'Sirope de regaliz', 'Exotic Liquids', '10.00', 13),
(4, 'Especias Cajun del chef Anton', 'New Orleans Cajun Delights', '22.00', 53),
(5, 'Mezcla Gumbo del chef Anton', 'New Orleans Cajun Delights', '21.35', 0),
(6, 'Mermelada de grosellas de la abuela', 'Grandma Kelly''s Homestead', '25.00', 120),
(7, 'Peras secas orgánicas del tío Bob', 'Grandma Kelly''s Homestead', '30.00', 15),
(8, 'Salsa de arándanos Northwoods', 'Grandma Kelly''s Homestead', '40.00', 6),
(9, 'Buey Mishi Kobe', 'Tokyo Traders', '97.00', 29),
(10, 'Pez espada', 'Tokyo Traders', '31.00', 31),
(11, 'Queso Cabrales', 'Cooperativa de Quesos ''Las Cabras''', '21.00', 22),
(12, 'Queso Manchego La Pastora', 'Cooperativa de Quesos ''Las Cabras''', '38.00', 86),
(13, 'Algas Konbu', 'Mayumi''s', '6.00', 24),
(14, 'Cuajada de judías', 'Mayumi''s', '23.25', 35),
(15, 'Salsa de soja baja en sodio', 'Mayumi''s', '15.50', 39),
(16, 'Postre de merengue Pavlova', 'Pavlova, Ltd.', '17.45', 29),
(17, 'Cordero Alice Springs', 'Pavlova, Ltd.', '39.00', 0),
(18, 'Langostinos tigre Carnarvon', 'Pavlova, Ltd.', '62.50', 42),
(19, 'Pastas de té de chocolate', 'Specialty Biscuits, Ltd.', '9.20', 25),
(20, 'Mermelada de Sir Rodney''s', 'Specialty Biscuits, Ltd.', '81.00', 40),
(21, 'Bollos de Sir Rodney''s', 'Specialty Biscuits, Ltd.', '10.00', 3),
(22, 'Pan de centeno crujiente estilo Gustaf''s', 'PB Knäckebröd AB', '21.00', 104),
(23, 'Pan fino', 'PB Knäckebröd AB', '9.00', 61),
(24, 'Refresco Guaraná Fantástica', 'Refrescos Americanas LTDA', '4.50', 20),
(25, 'Crema de chocolate y nueces NuNuCa', 'Heli Süßwaren GmbH & Co. KG', '14.00', 76),
(26, 'Ositos de goma Gumbär', 'Heli Süßwaren GmbH & Co. KG', '31.23', 15),
(27, 'Chocolate Schoggi', 'Heli Süßwaren GmbH & Co. KG', '43.90', 49),
(28, 'Col fermentada Rössle', 'Plutzer Lebensmittelgroßmärkte AG', '45.60', 26),
(29, 'Salchicha Thüringer', 'Plutzer Lebensmittelgroßmärkte AG', '123.79', 0),
(30, 'Arenque blanco del noroeste', 'Nord-Ost-Fisch Handelsgesellschaft mbH', '25.89', 10),
(31, 'Queso gorgonzola Telino', 'Formaggi Fortini s.r.l.', '12.50', 0),
(32, 'Queso Mascarpone Fabioli', 'Formaggi Fortini s.r.l.', '32.00', 9),
(33, 'Queso de cabra', 'Norske Meierier', '2.50', 112),
(34, 'Cerveza Sasquatch', 'Bigfoot Breweries', '14.00', 111),
(35, 'Cerveza negra Steeleye', 'Bigfoot Breweries', '18.00', 20),
(36, 'Escabeche de arenque', 'Svensk Sjöföda AB', '19.00', 112),
(37, 'Salmón ahumado Gravad', 'Svensk Sjöföda AB', '26.00', 11),
(38, 'Vino Côte de Blaye', 'Aux joyeux ecclésiastiques', '263.50', 17),
(39, 'Licor verde Chartreuse', 'Aux joyeux ecclésiastiques', '18.00', 69),
(40, 'Carne de cangrejo de Boston', 'New England Seafood Cannery', '18.40', 123),
(41, 'Crema de almejas estilo Nueva Inglaterra', 'New England Seafood Cannery', '9.65', 85),
(42, 'Tallarines de Singapur', 'Leka Trading', '14.00', 26),
(43, 'Café de Malasia', 'Leka Trading', '46.00', 17),
(44, 'Azúcar negra Malacca', 'Leka Trading', '19.45', 27),
(45, 'Arenque ahumado', 'Lyngbysild', '9.50', 5),
(46, 'Arenque salado', 'Lyngbysild', '12.00', 95),
(47, 'Galletas Zaanse', 'Zaanse Snoepfabriek', '9.50', 36),
(48, 'Chocolate holandés', 'Zaanse Snoepfabriek', '12.75', 15),
(49, 'Regaliz', 'Karkki Oy', '20.00', 10),
(50, 'Chocolate blanco', 'Karkki Oy', '16.25', 65),
(51, 'Manzanas secas Manjimup', 'G''day, Mate', '53.00', 20),
(52, 'Cereales para Filo', 'G''day, Mate', '7.00', 38),
(53, 'Empanada de carne', 'G''day, Mate', '32.80', 0),
(54, 'Empanada de cerdo', 'Ma Maison', '7.45', 21),
(55, 'Paté chino', 'Ma Maison', '24.00', 115),
(56, 'Gnocchi de la abuela Alicia', 'Pasta Buttini s.r.l.', '38.00', 21),
(57, 'Raviolis Angelo', 'Pasta Buttini s.r.l.', '19.50', 36),
(58, 'Caracoles de Borgoña', 'Escargots Nouveaux', '13.25', 62),
(59, 'Raclet de queso Courdavault', 'Gai pâturage', '55.00', 79),
(60, 'Camembert Pierrot', 'Gai pâturage', '34.00', 19),
(61, 'Sirope de arce', 'Forêts d''érables', '28.50', 113),
(62, 'Tarta de azúcar', 'Forêts d''érables', '49.30', 17),
(63, 'Sandwich de vegetales', 'Pavlova, Ltd.', '43.90', 24),
(64, 'Bollos de pan de Wimmer', 'Plutzer Lebensmittelgroßmärkte AG', '33.25', 22),
(65, 'Salsa de pimiento picante de Luisiana', 'New Orleans Cajun Delights', '21.05', 76),
(66, 'Especias picantes de Luisiana', 'New Orleans Cajun Delights', '17.00', 4),
(67, 'Cerveza Laughing Lumberjack', 'Bigfoot Breweries', '14.00', 52),
(68, 'Barras de pan de Escocia', 'Specialty Biscuits, Ltd.', '12.50', 6),
(69, 'Queso Gudbrandsdals', 'Norske Meierier', '36.00', 26),
(70, 'Cerveza Outback', 'Pavlova, Ltd.', '15.00', 15),
(71, 'Crema de queso Fløtemys', 'Norske Meierier', '21.50', 26),
(72, 'Queso Mozzarella Giovanni', 'Formaggi Fortini s.r.l.', '34.80', 14),
(73, 'Caviar rojo', 'Svensk Sjöföda AB', '15.00', 101),
(74, 'Queso de soja Longlife', 'Tokyo Traders', '10.00', 4),
(75, 'Cerveza Klosterbier Rhönbräu', 'Plutzer Lebensmittelgroßmärkte AG', '7.75', 125),
(76, 'Licor Cloudberry', 'Karkki Oy', '18.00', 57),
(77, 'Salsa verde original Frankfurter', 'Plutzer Lebensmittelgroßmärkte AG', '13.00', 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD PRIMARY KEY (`idPedido`,`idProducto`),
  ADD KEY `id_Producto` (`idProducto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD CONSTRAINT `detallespedidos_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallespedidos_ibfk_2` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
