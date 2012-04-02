-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2012 at 05:41 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grav0161`
--

-- --------------------------------------------------------

--
-- Table structure for table `rinks`
--

CREATE TABLE IF NOT EXISTS `rinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rink_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `street_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=260 ;

--
-- Dumping data for table `rinks`
--

INSERT INTO `rinks` (`id`, `rink_name`, `street_address`, `longitude`, `latitude`) VALUES
(1, '<Null>', '', -75.4684499999562, 45.4627000024174),
(2, '<Null>', '', -75.4607330028847, 45.4640708726533),
(3, '<Null>', '', -75.9101273561877, 45.2458320763259),
(4, '<Null>', '', -75.4533274733363, 45.1627571540266),
(5, '<Null>', '', -75.7314429614074, 45.3797931664149),
(6, '<Null>', '', -75.6249615531847, 45.3557887705309),
(7, '<Null>', '', -75.9201293871948, 45.3322243992934),
(8, '<Null>', '', -75.8534118247462, 45.2947695849876),
(9, '<Null>', '', -75.5156660718507, 45.4548002934992),
(10, '<Null>', '', -75.6347462929865, 45.4312307992757),
(11, '<Null>', '', -75.4879919930572, 45.481276987781),
(12, '<Null>', '', -75.484301605895, 45.4657479755128),
(13, '<Null>', '', -75.7197281930169, 45.3521710659116),
(14, '<Null>', '', -75.6859489834207, 45.2802220774012),
(15, '<Null>', '', -75.7453774013704, 45.3674728685386),
(16, '<Null>', '', -75.5337638899149, 45.4827442388795),
(17, '<Null>', '', -75.708660111187, 45.3661098803077),
(18, '<Null>', '', -75.7564351239199, 45.0901737469727),
(19, '<Null>', '', -75.6357070140901, 45.4264688171299),
(20, '<Null>', '', -75.6770523671584, 45.449116757102),
(21, '<Null>', '', -75.4023267474892, 45.5150684117962),
(22, '<Null>', '', -75.522217665844, 45.4889309798512),
(23, '<Null>', '', -75.6307026465464, 45.4014744291822),
(24, '<Null>', '', -75.5117097341721, 45.4857836670376),
(25, '<Null>', '', -75.7443588881223, 45.3359594260724),
(26, 'Artificial Ice', '', -75.7638223413154, 45.3443128795734),
(27, 'Double Surface', '', -75.6868665335634, 45.364033938062),
(28, 'Double Surface', '', -75.7353953887006, 45.3671329726787),
(29, 'Double surface', '', -75.790703874243, 45.3674313882601),
(30, 'Double Surface(endboards)', '', -75.4213220466852, 45.4197829558352),
(31, 'Double Surface(lowboards)', '', -75.671294655142, 45.3727930522359),
(32, 'Double Surface(lowboards)', '', -75.6575196706372, 45.3686437420154),
(33, 'Double Surface(no boards)', '', -75.6483006030488, 45.3733907991338),
(34, 'Double Surface(no boards)', '', -75.7422084480867, 45.3920820424397),
(35, 'Double Surface(no boards)', '', -75.7761068815459, 45.3615701209185),
(36, 'Double Surface(no boards)', '', -75.6241787308387, 45.4424498655091),
(37, 'Double Surface(no boards)', '', -75.789066666637, 45.3447166690553),
(38, 'Double Surface(no boards)', '', -75.7828650293504, 45.3459493611902),
(39, 'Double Surface(no boards)', '', -75.7240517614259, 45.378333597087),
(40, 'Double Surface(no boards)', '', -75.6988450528577, 45.4048329126909),
(41, 'Double Surface(no boards)', '', -75.6663822664264, 45.3837257128733),
(42, 'Double Surface(no boards)', '', -75.6384595873544, 45.3825174225204),
(43, 'Double Surface(no boards)', '', -75.6765509600116, 45.3672145348246),
(44, 'Double Surface(no boards)', '', -75.6440742348023, 45.4056583578201),
(45, 'Double Surface(no boards)', '', -75.6154999999628, 45.3939000024006),
(46, 'Double Surface(no boards)', '', -75.6854892582535, 45.4386095128393),
(47, 'Double Surface(no boards)', '', -75.7652613304861, 45.3834796973542),
(48, 'Double Surface(no boards)', '', -75.680672504254, 45.3618327323589),
(49, 'Double Surface(no boards)', '', -75.6972185270665, 45.3525291779049),
(50, 'Double Surface(no boards)', '', -75.6478875151671, 45.4295246014636),
(51, 'Double Surface(no boards)', '', -75.6711675007266, 45.4053970525668),
(52, 'Double Surface(no boards)', '', -75.7398913842889, 45.3726957145755),
(53, 'Double Surface(no boards)', '', -75.7408063158516, 45.3763055274303),
(54, 'Double Surface(no boards)', '', -75.633680210349, 45.4042075750129),
(55, 'Double Surface9no boards)', '', -75.5994130193711, 45.3201089795654),
(56, 'Highboard', '', -75.5217350612766, 45.4877344574718),
(57, 'Highboard', '', -75.5457833332928, 45.4740166690869),
(58, 'Highboard', '', -75.9553833333105, 45.3764166690631),
(59, 'Highboard', '', -75.7111733750538, 45.1306129340866),
(60, 'Highboard', '', -75.7155686364281, 45.1745608308886),
(61, 'Highboard', '', -76.0293499999809, 45.1580666690099),
(62, 'Highboard', '', -76.2060037314654, 45.4704091152752),
(63, 'Highboard', '', -76.0256692744862, 45.4216927189821),
(64, 'Highboard', '', -76.0393169183399, 45.3497362548465),
(65, 'Highboard', '', -76.1868079521645, 45.3936136894333),
(66, 'Highboard', '', -76.2604899063564, 45.4251700349229),
(67, 'Highboard', '', -75.3425796364132, 45.4405013345291),
(68, 'Highboard', '', -75.601370679903, 45.1468386124887),
(69, 'Highboard', '', -75.9110784750967, 45.2797037428964),
(70, 'Highboard', '', -75.8597787268424, 45.2858104004401),
(71, 'Highboard', '', -75.7217833333007, 45.3648666690602),
(72, 'Highboard', '', -75.8538833333066, 45.2743500023715),
(73, 'Highboard', '', -75.8610833333069, 45.2799333357062),
(74, 'Highboard', '', -75.8556945965181, 45.3003656098386),
(75, 'Highboard', '', -75.7310666666347, 45.3157666690482),
(76, 'Highboard', '', -75.7167999999676, 45.2878666690413),
(77, 'Highboard', '', -75.6047024103015, 45.4231961640517),
(78, 'Highboard', '', -75.7518548766406, 45.2733033841382),
(79, 'Highboard', '', -75.7881107841, 45.3343717391616),
(80, 'Highboard', '', -75.6130828576686, 45.4245075363135),
(81, 'Highboard', '', -75.9184666666427, 45.2499000023655),
(82, 'Highboard', '', -75.8235061230683, 45.1933399950355),
(83, 'Highboard', '', -75.5991295330585, 45.2495990681423),
(84, 'Highboard', '', -75.4164166666221, 45.2329333356944),
(85, 'Highboard', '', -75.9165110477629, 45.2579540638282),
(86, 'Highboard', '', -75.6960333333003, 45.2344166690283),
(87, 'Highboard', '', -75.9274736832581, 45.2779211280081),
(88, 'Highboard', '', -75.9380128135955, 45.3490991823412),
(89, 'Highboard', '', -75.8350571792667, 45.3159625950008),
(90, 'Highboard', '', -75.7309526491965, 45.336329456632),
(91, 'Highboard', '', -75.7699869422122, 45.2701158018596),
(92, 'Highboard', '', -75.7627047541619, 45.2822333036183),
(93, 'Highboard', '', -75.4794333332914, 45.2370500023622),
(94, 'Highboard', '', -75.3501948734237, 45.3559655668637),
(95, 'Highboard', '', -75.8568280662005, 45.3606868577787),
(96, 'Highboard', '', -75.826229703601, 45.2678704876261),
(97, 'Highboard', '', -76.0928579938713, 45.4989371493326),
(98, 'Highboard', '', -76.0622499999819, 45.2594333357013),
(99, 'Highboard', '', -75.4026643914995, 45.5149903466476),
(100, 'Highboard', '', -75.6690416066917, 45.442440188252),
(101, 'Highboard', '', -75.7665097054405, 45.3325472667436),
(102, 'Highboard', '', -75.6350319598193, 45.431352765654),
(103, 'Highboard', '', -75.7195441997901, 45.1391480419334),
(104, 'Highboard', '', -75.5566609819166, 45.2609525630361),
(105, 'Highboard', '', -75.7430517167182, 45.2820999304857),
(106, 'Highboard', '', -75.9344266580563, 45.26230581715),
(107, 'Highboard', '', -75.7682612622358, 45.261807816387),
(108, 'Highboard', '', -75.4993158988614, 45.4675333838262),
(109, 'Highboard', '', -75.8900009078802, 45.3105282131405),
(110, 'Highboard with puddle', '', -75.5076615470622, 45.4713600568085),
(111, 'Highboard with puddle', '', -75.5386093555179, 45.451130339632),
(112, 'Highboard with puddle', '', -75.512549999958, 45.4856500024231),
(113, 'Highboard with puddle', '', -75.5309591199509, 45.4492202827898),
(114, 'Highboard with puddle', '', -75.5190976921007, 45.4516059489837),
(115, 'Highboard with puddle', '', -75.5223333332919, 45.4574666690828),
(116, 'Highboard with puddle', '', -75.487929168448, 45.4812018819861),
(117, 'Highboard with puddle', '', -75.5286903192662, 45.4433683934871),
(118, 'Highboard with puddle', '', -75.672927081809, 45.3512632117392),
(119, 'Highboard with puddle', '', -75.6891643053309, 45.4151140961758),
(120, 'Highboard with puddle', '', -75.6356445943224, 45.3498962403234),
(121, 'Highboard with puddle', '', -75.6267166666301, 45.366900002394),
(122, 'Highboard with puddle', '', -75.6771428916334, 45.4220735512644),
(123, 'Highboard with puddle', '', -75.6063373755605, 45.4414697103865),
(124, 'Highboard with puddle', '', -75.7220264992471, 45.3586556782243),
(125, 'Highboard with puddle', '', -75.8785576842994, 45.2895901898248),
(126, 'Highboard with puddle', '', -75.7991272245243, 45.3427337462803),
(127, 'Highboard with puddle', '', -75.7078094174659, 45.3210581125176),
(128, 'Highboard with puddle', '', -75.8327631121285, 45.3499505724184),
(129, 'Highboard with puddle', '', -75.8098177457709, 45.350929942686),
(130, 'Highboard with puddle', '', -75.824017013502, 45.3460530383297),
(131, 'Highboard with puddle', '', -75.6370237159545, 45.4328446291628),
(132, 'Highboard with puddle', '', -75.5980499916558, 45.4590833128997),
(133, 'Highboard with puddle', '', -75.6141999999624, 45.4593166690833),
(134, 'Highboard with puddle', '', -75.8212025896754, 45.3194486423341),
(135, 'Highboard with puddle', '', -75.7826849696924, 45.3273054368117),
(136, 'Highboard with puddle', '', -75.7788432854979, 45.3380839097605),
(137, 'Highboard with puddle', '', -75.6492001382804, 45.4229158504643),
(138, 'Highboard with puddle', '', -75.6570069792073, 45.451341041324),
(139, 'Highboard with puddle', '', -75.7028410424995, 45.4086750798963),
(140, 'Highboard with puddle', '', -75.608219591748, 45.3744590552879),
(141, 'Highboard with puddle', '', -75.6822834552166, 45.4332577839698),
(142, 'Highboard with puddle', '', -75.676707934951, 45.4496546705356),
(143, 'Highboard with puddle', '', -75.6594355816061, 45.3456529447435),
(144, 'Highboard with puddle', '', -75.8014649879827, 45.3550263637277),
(145, 'Highboard with puddle', '', -75.9231769740965, 45.3219116948226),
(146, 'Highboard with puddle', '', -75.640197987805, 45.3763627978661),
(147, 'Highboard with puddle', '', -75.7612145993743, 45.3297296180929),
(148, 'Highboard with puddle', '', -75.7024415112198, 45.3589929345936),
(149, 'Highboard with puddle', '', -75.6889324077765, 45.3884475773047),
(150, 'Highboard with puddle', '', -75.7761497069762, 45.3558342918874),
(151, 'Highboard with puddle', '', -75.7197693266802, 45.3521546850572),
(152, 'Highboard with puddle', '', -75.7942690651419, 45.3451753815622),
(153, 'Highboard with puddle', '', -75.7116979346442, 45.3996093907675),
(154, 'Highboard with puddle', '', -75.772875923433, 45.37687736299),
(155, 'Highboard with puddle', '', -75.7536730361, 45.3605927503726),
(156, 'Highboard with puddle', '', -75.7539663647056, 45.3837366266472),
(157, 'Highboard with puddle', '', -75.6640741452943, 45.3543593866916),
(158, 'Highboard with puddle', '', -75.6487854239757, 45.3598241402756),
(159, 'Highboard with puddle', '', -75.647731013904, 45.3785489902255),
(160, 'Highboard with puddle', '', -75.6134822542832, 45.3982991025992),
(161, 'Highboard with puddle', '', -75.624558989764, 45.3957680681936),
(162, 'Highboard with puddle', '', -75.6448856638724, 45.391220574805),
(163, 'Highboard with puddle', '', -75.7066492594596, 45.3674356856294),
(164, 'Highboard with puddle', '', -75.6772210422109, 45.3787979494843),
(165, 'Highboard with puddle', '', -75.7455236385853, 45.4048935742981),
(166, 'Highboard with puddle', '', -75.6560547789484, 45.4252509461214),
(167, 'Highboard with puddle', '', -75.7285272829104, 45.408393050579),
(168, 'Highboard with puddle', '', -75.7140020775382, 45.407368507304),
(169, 'Highboard with puddle', '', -75.9396551257136, 45.1628716253654),
(170, 'Highboard with puddle', '', -75.7899073643453, 45.3562026709843),
(171, 'Highboard with puddle', '', -75.796010665792, 45.3510161269564),
(172, 'Highboard with puddle', '', -75.7191803512003, 45.3983665915148),
(173, 'Highboard with puddle', '', -75.6483764792295, 45.1486555945534),
(174, 'Highboard with puddle', '', -75.7317166666344, 45.3965166690679),
(175, 'Highboard with puddle', '', -75.5635173285019, 45.4338667864575),
(176, 'Highboard with puddle', '', -75.6961304564271, 45.4332801898722),
(177, 'Highboard with puddle', '', -75.6195686095658, 45.3702927132356),
(178, 'Highboard with puddle', '', -75.6870373261898, 45.2227088450739),
(179, 'Highboard with puddle', '', -75.4843338638702, 45.4656805219141),
(180, 'Highboard with puddle', '', -75.6569587141673, 45.3647361919333),
(181, 'Highboard with puddle', '', -75.4947154115189, 45.334345074454),
(182, 'Highboard with puddle', '', -75.7317993031787, 45.3797764683013),
(183, 'Highboard with puddle', '', -75.462489529259, 45.4704776799557),
(184, 'Highboard with puddle', '', -75.5282904350289, 45.436900334685),
(185, 'Highboard with puddle', '', -75.6908488691938, 45.4006213247476),
(186, 'Highboard with puddle', '', -75.5492597622509, 45.437313845824),
(187, 'Highboard with puddle', '', -75.7499455183259, 45.3439865431999),
(188, 'Highboard with puddle', '', -75.9029076051916, 45.3256659751566),
(189, 'Highboard with puddle', '', -75.5037509943357, 45.4780213396286),
(190, 'Highboard with puddle', '', -75.9048073807138, 45.247794581263),
(191, 'Highboard with puddle', '', -75.6858622887375, 45.280239015597),
(192, 'Highboard with puddle', '', -75.7128630390552, 45.2668258840333),
(193, 'Highboard with puddle', '', -75.7075938694014, 45.2834214434424),
(194, 'Highboard with puddle', '', -75.7121942732966, 45.2767953621887),
(195, 'Highboard with puddle', '', -75.4698452665914, 45.45754310815),
(196, 'Lowboard and puddle', '', -75.7629359973157, 45.3574758662315),
(197, 'Lowboard and puddle', '', -75.7629025785118, 45.3653827888001),
(198, 'Lowboard and puddle', '', -75.7710196831241, 45.3397950576065),
(199, 'Oval', '', -75.6897105162801, 45.3883039059053),
(200, 'Puddle', '', -75.6322245656489, 45.4401475802386),
(201, 'Puddle', '', -75.6260123515678, 45.3518925981444),
(202, 'Puddle', '', -75.8415362138729, 45.2827220742495),
(203, 'Puddle', '', -75.8495173008705, 45.283248322705),
(204, 'Puddle', '', -75.9407628287382, 45.3506784786684),
(205, 'Puddle', '', -75.6846972486343, 45.2840807756248),
(206, 'Puddle', '', -75.7536357684836, 45.3729124987558),
(207, 'Puddle', '', -75.4525601932325, 45.4745686583966),
(208, 'Puddle', '', -75.7262034665522, 45.2564345851096),
(209, 'Puddle', '', -75.9217582797011, 45.3283688212929),
(210, 'Puddle rink', '', -75.5387869361874, 45.4436350775685),
(211, 'Puddle rink', '', -75.5237898258882, 45.4811465236726),
(212, 'Puddle rink', '', -75.5107955103386, 45.4571465842076),
(213, 'Puddle rink', '', -75.5248793090186, 45.4758476806065),
(214, 'Puddle rink', '', -75.5363905604121, 45.4690814028336),
(215, 'Puddle rink', '', -75.513982976465, 45.4636183698802),
(216, 'Puddle rink', '', -75.5932722036502, 45.4409234947152),
(217, 'Puddle rink', '', -75.5885034076746, 45.4473201499072),
(218, 'Puddle rink', '', -75.8938412143598, 45.3277831253231),
(219, 'Puddle rink', '', -75.8652197080449, 45.2981421974841),
(220, 'Puddle rink', '', -75.8980300130343, 45.299141052658),
(221, 'Puddle Rink', '', -75.4653639004091, 45.4811028402835),
(222, 'Puddle rink', '', -75.6004604778946, 45.4457245084633),
(223, 'Puddle rink', '', -75.6054031508994, 45.4552765682971),
(224, 'Puddle rink', '', -75.824767017854, 45.3126998316708),
(225, 'Puddle rink', '', -75.8232620576625, 45.3160494279813),
(226, 'Puddle rink', '', -75.7115645190811, 45.3690369647132),
(227, 'Puddle rink', '', -75.6762666666321, 45.393983335734),
(228, 'Puddle rink', '', -75.6597464471815, 45.4096425314083),
(229, 'Puddle rink', '', -75.6402342364397, 45.3451341459298),
(230, 'Puddle rink', '', -75.6064650510049, 45.3364381021245),
(231, 'Puddle rink', '', -75.676372944298, 45.4449615268503),
(232, 'Puddle rink', '', -75.6275779810824, 45.4325122149018),
(233, 'Puddle rink', '', -75.4857788432023, 45.4259278120672),
(234, 'Puddle rink', '', -75.8924036871993, 45.3200434459326),
(235, 'Puddle rink', '', -75.6403191666675, 45.3403852090623),
(236, 'Puddle rink', '', -75.6900652793473, 45.2755146522055),
(237, 'Puddle rink', '', -75.8455031309095, 45.2883498953591),
(238, 'Puddle rink', '', -75.7494265205786, 45.2871686905414),
(239, 'Puddle rink', '', -75.740063026118, 45.3218751771085),
(240, 'Puddle rink', '', -75.645299999964, 45.4170500024063),
(241, 'Puddle rink', '', -75.6165764296798, 45.4286869706779),
(242, 'Puddle rink', '', -75.508184718111, 45.4607380487445),
(243, 'Puddle rink', '', -75.5519917135331, 45.4744217386886),
(244, 'Puddle rink', '', -75.607974076738, 45.4192082812603),
(245, 'Puddle rink', '', -75.8842861920947, 45.2890064049967),
(246, 'Puddle Rink', '', -75.6605513689384, 45.4441716309322),
(247, 'Puddle Rink', '', -75.8540226440497, 45.2940645711745),
(248, 'Puddle Rink', '', -75.9076502842843, 45.3317046087978),
(249, 'Puddle Rink', '', -75.765560974398, 45.3541379218904),
(250, 'Puddle Rink', '', -75.5618161357847, 45.4379719982255),
(251, 'Puddle rink (end boards)', '', -75.5314606962302, 45.4580643962251),
(252, 'Puddle rink (end boards)', '', -75.5333248620529, 45.4404377403808),
(253, 'Puddle rink (end boards)', '', -75.554733957864, 45.4330125926927),
(254, 'Puddle rink (end boards)', '', -75.6225499999629, 45.4292000024093),
(255, 'Puddle rink (end boards)', '', -75.6351635628994, 45.3411012911007),
(256, 'Puddle rink (end boards)', '', -75.635284262344, 45.3563216782372),
(257, 'Puddle rink (end boards)', '', -75.6447600466297, 45.3467285201616),
(258, 'Puddle rink (end boards)', '', -75.624592346672, 45.4184701590835),
(259, 'Puddle rink (end boards)', '', -75.6219169148232, 45.4371941282167);