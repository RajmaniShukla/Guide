-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 10:35 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajasthantourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_travel`
--

CREATE TABLE `book_travel` (
  `book_co_id` int(255) NOT NULL,
  `book_co_name` varchar(255) NOT NULL,
  `book_cost` int(255) NOT NULL,
  `book_desc` varchar(2000) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_travel`
--

INSERT INTO `book_travel` (`book_co_id`, `book_co_name`, `book_cost`, `book_desc`, `district_id`, `status`) VALUES
(123, 'UBER', 2500, 'from jaipur to jodhpur', 1, 1),
(124, 'OLA', 2000, 'from alwar to jaipur', 2, 1),
(125, 'OLA', 3000, 'from jaipur to jodhpur', 3, 1),
(126, 'UBER', 10000, 'from jodhpur to ajmer', 4, 1),
(127, 'UBER', 3000, 'djn dsnxswun xsnnsq ', 1, 1),
(128, 'Uber', 5000, 'Allahabad to nasik', 2, 1),
(129, 'ola', 6000, 'Nasik to Dehradun', 3, 1),
(130, 'Ola', 4000, 'Dehradun to Rishikesh', 1, 1),
(131, 'Uber', 5000, 'Rishikesh to Coorg', 2, 1),
(132, 'Ola', 6000, 'Coorg to Koidaikanal', 4, 1),
(133, 'Ola', 6000, 'Kodaikanal to Hampi', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cottage`
--

CREATE TABLE `cottage` (
  `cottage_id` varchar(200) NOT NULL,
  `cottage_name` varchar(200) NOT NULL,
  `cottage_price` int(100) NOT NULL,
  `location` varchar(500) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cottage_desc` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cottage`
--

INSERT INTO `cottage` (`cottage_id`, `cottage_name`, `cottage_price`, `location`, `district_id`, `status`, `cottage_desc`) VALUES
('cott1', 'Krishna COttage', 2000, 'gandhinagar', 1, 1, 'vshgxhgvas'),
('cott10', 'Band ba', 9600, 'Kailas', 2, 1, 'saasdasda'),
('cott2', 'RISHABH COMPLEX', 3000, 'ABCD', 2, 1, 'sdasdasdas'),
('cott3', 'RITESH COMPLEX', 2000, 'MNBVCX', 3, 1, 'xsadscsadas'),
('cott4', 'RIYA COMPLEX', 4000, 'cakncna', 4, 1, 'sacdvsdvdsc'),
('cott6', 'Sad', 6000, 'Pbh', 2, 1, 'ascdsfsdfs'),
('cott7', 'Raj', 6000, 'Ame', 1, 1, 'cscdcadas'),
('cott8', 'Tobo', 5000, 'Rbl', 3, 1, 'sacasddas'),
('cott9', 'Jahnd ba', 6900, 'Shimla', 4, 1, 'sasadadsad');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `status`) VALUES
(1, 'ajmer', 1),
(2, 'Alwar', 1),
(3, 'Jaipur', 1),
(4, 'Jodhpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `guide_id` int(100) NOT NULL,
  `guide_name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `g_language` varchar(50) NOT NULL,
  `guide_cost` int(100) NOT NULL,
  `guide_desc` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guide_id`, `guide_name`, `status`, `g_language`, `guide_cost`, `guide_desc`) VALUES
(11, 'RAJ', 1, 'English', 3000, 'cndsc csdjkcsdnc csdcdscn'),
(12, 'SAD', 1, 'Spanish', 5000, 'csdncncsd csdncs csdncsc'),
(13, 'Annu', 1, 'Chinese', 7000, 'Ths Us wang su'),
(14, 'Suu luu', 1, 'German', 8000, 'Hello this is su wi lin');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `district_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hotel_desc` varchar(5000) NOT NULL,
  `hotel_cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `district_id`, `status`, `hotel_desc`, `hotel_cost`) VALUES
(1, 'Hotel LN Courtyard', 1, 1, 'Location: Centrally located in Ajmer,Hotel LN Courtyardis within walking distance from Ana Sagar Lake (750m). Ajmer Junction and main bus stand can be reached in less than 10 minutes from the hotel while Jaipur International Airport is about 2 hours and 30 minutes away. Major tourist spots such as Ajmer Sharif Dargah, Adhai Din Ka Jhonpra and Taragarh Fort are within 5 km.\r\n\r\nRoom Amenities: Featuring woodenflooring and comfortable bedding, the hotels contemporary rooms are equipped with LED TV, tea/coffee maker, work desk, electronic safes and Wi-Fi. Select rooms also offer splendid views of the city and hills.En suite bathrooms have shower cubicles and free toiletries.\r\n\r\nHotel Facilities: The hotels concierge desk organises sightseeing tours and makes arrangements for railway station/bus stand transfers. After a busy day at work or sightseeing, relax at the spa onthe rooftop that comes with steam and sauna, or relax on the comfortable lounge chairs while enjoying views of the city. Fitness-conscious guests can stay fit and active as there is a fully equipped fitness center available on site. Additional facilities offered here include a business center, multi-function venue, parking and laundry service.\r\n\r\nDining: Courtyard Kitchen, the hotels multi-cuisine restaurant, delights guests with its great ambiance and generous servings of Indian and international delicacies. Meals can also be enjoyed at the rooftop Sky Lounge that has splendid views of the city. Additionally, Barcode lounge bar is a perfect place to relax over refreshing beverages.', 2358),
(2, 'Hotel Plaza Inn', 1, 1, 'Proximity to Ajmer Junction (700 m) and Ajmer Sharif Dargah (800 m) makes the hotel a good choice for pilgrims and leisure travellers. Dargah Bazar (1 km) is a great place to try local food and buy souvenirs.\r\n\r\nCar rental, laundry service, tour assistance and ticket service are offered by the hotel. Approach the friendly staff at the 24-hour front desk for any stay related query.\r\n\r\nThe hotels smartly furnished rooms and suites come with comfortable bedding, air conditioning, flat-screen television, telephone, mirror, coffee table and hot water supply.\r\n\r\nJust a stones throw away from the property, the popular Neelkamal Restaurant (100 m) offers Rajasthani, Punjabi, Gujarati, Chinese and Continental cuisines.\r\n\r\nThe 12th-century Adhai Din Ka Jhonpra and Akbars Fort are just 1 km from the property. Nasiyan Temple (1.7 km) is known for its stunning architecture', 2604),
(3, 'Neemrana\'s-Tijara Fort Palace', 2, 1, 'Nestled in Alwar, Neemrana Tijara Fort Palace gives guests endless options for a truly memorable getaway. It offers quality service and opulence to create a modern home of unparalleled hospitality providing amazing facilities to make property a perfect place for the discerning visitors. The friendly staff is available to provide all information and help the guests to have a nice stay.\r\n\r\nThe conference room best suits to every size of meetings either big or small with eclectic amenities and ease of convenience. One can experience trans-eternal peace through invigorating spa treatments to revitalize their senses. Visitors can seek blessings at Tijara jain mandir(5 km).\r\n\r\nThe spacious and stylish rooms are unique blend of elegance and contemporary design. They speak grandeur through each precisely crafted amenity which is used to enhance the beauty of the space. Patrons can retire to the rooms rich in comforts that feature contemporary stylish decor and a light and airy atmosphere. The nearest airport and railway station to the region are Sanganeer Airport and Alwar Junction.\r\n\r\nHave a nice stay at Neemrana Tijara Fort Palace!\r\n\r\nSwimming pool is under maintenance from 9th to 15th Apr18', 5097),
(4, 'Genx Arawali ALwar By 1589', 2, 1, 'Matsya Aravali is located in the Tiger Gate of Rajasthan, Alwar. It nestles between several small hills and maneuvering a picturesque postcard setting. The nearest airport is the Jaipur International Airport and the closest railway station is the Alwar Junction which makes it easy for the guests to travel.Popular places to visit in Alwar are Company Garden (11 km), City Palace (13 km), Moosi Maharani ki Chhatri (13 km), Jaisamand Lake (16 km), Bala Quila (19 km), Vijay Mandir Palace (19 km) and many more.The property has well furnished and equipped rooms with all the basic amenities for a comfortable stay. Each room has attached bathroom with running hot and cold water. Room service is available to avoid any kind of discomfort to the guests. Hotel offers front desk for help and assistance, laundry services and in case of any medical emergency, doctor on call can be availed.Have a wonderful and memorable stay at Matsya Aravali!', 1403);

-- --------------------------------------------------------

--
-- Table structure for table `masseur`
--

CREATE TABLE `masseur` (
  `masseur_id` varchar(200) NOT NULL,
  `masseur_name` varchar(200) NOT NULL,
  `masseur_desc` varchar(2000) NOT NULL,
  `masseur_cost` int(200) NOT NULL,
  `district_id` int(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masseur`
--

INSERT INTO `masseur` (`masseur_id`, `masseur_name`, `masseur_desc`, `masseur_cost`, `district_id`, `status`) VALUES
('mass1', 'ABC', 'from ABC company', 400, 1, 1),
('mass2', 'XYZ', 'from XYZ company', 500, 2, 1),
('mass3', 'ERTY', 'from company djkncsdj', 3000, 3, 1),
('mass4', 'PLMJJKD', 'from company DSCSDC', 5000, 4, 1),
('mass5', 'Pawa', 'Expert in messacre with almond oil.', 2000, 1, 1),
('mass6', 'dawa', 'Average well structured', 1500, 2, 1),
('mass7', 'Dhusu', 'asumanijska maniktala', 5000, 1, 1),
('mass8', 'Tanya m', 'Expert in fli', 4000, 3, 1),
('mass9', 'Natasha', 'Lub Shun', 2000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meals_on_wheel`
--

CREATE TABLE `meals_on_wheel` (
  `Rest_id` varchar(100) NOT NULL,
  `Rest_name` varchar(200) NOT NULL,
  `Rest_desc` varchar(2000) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rest_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals_on_wheel`
--

INSERT INTO `meals_on_wheel` (`Rest_id`, `Rest_name`, `Rest_desc`, `district_id`, `status`, `rest_cost`) VALUES
('meal1', 'ASSDDC', 'xux nxsxnsq sqxn', 1, 1, 0),
('meal2', 'SADADA', 'w cuwdbdhucduhbs xhbbx', 2, 1, 0),
('meals3', 'KJHNN KJHNK GFGDF', 'jv fdvnvfjndfn ncdjdn', 3, 1, 0),
('meals4', 'DSCSDV VDFV VSDV', 'cscdc csdncsn csdkn', 4, 1, 0),
('meals5', '\r\nHotel Anand Bhawan RSHCL (Heritage)', 'The Maharana of Mewar built Anand Bhawan nine decades ago as a Guest house to accommodate Senior British and Indian officials. Thereafter it became the official residence of Prime Minister of Mewar. Soon after independence of India, the Anand Bhawan was converted into State Hotel. Since then, Hotel Anand Bhawan has been welcoming Indian and foreign tourists and has also been extending its hospitality to all its visitors.', 1, 1, 0),
('meals6', 'Hotel Bharatpur Forest Lodge', 'haratpur forest lodge is situated inside the Bharatpur Bird Sanctuary at a distance of 1.5 kms from the main entry gate of the bird sanctuary, Due to its location this birding lodge is undoubtedly the best located birding lodge in Bharatpur', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pay_restaurant`
--

CREATE TABLE `pay_restaurant` (
  `Res_id` varchar(100) NOT NULL,
  `Res_name` varchar(200) NOT NULL,
  `Res_desc` varchar(2000) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `res_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_restaurant`
--

INSERT INTO `pay_restaurant` (`Res_id`, `Res_name`, `Res_desc`, `district_id`, `status`, `res_cost`) VALUES
('rest1', 'Radhe Krisha Restaurants', 'pure vegetarian', 1, 1, 0),
('rest2', 'PSSJ SDKSD DSDKSK', 'kdsnc dcksdc cdsckn', 2, 1, 0),
('rest3', 'DEDWE DEWDE DWED', 'cnwc wcnc cnscdc', 3, 1, 0),
('rest4', 'xsxaxsf', 'vjsvh vsfhvbf', 4, 1, 0),
('res5', 'Maniktala', 'Located on National Highway No. 14 after and before Beawar. This motel is good choice for comfortable stopover for people travelling on the Ajmer - Jodhpur stretch.', 1, 1, 0),
('res6', 'Tanya', 'The Hotel is situated on the main road and around 3 km from Railway/ Bus Station. Hotel has AC and Non AC double and family rooms with modern facilities. Restaurant serves Indian and Rajasthani cuisines and well stocked bar to boost the spirit of holidays.', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reiki_trainer`
--

CREATE TABLE `reiki_trainer` (
  `r_trainer_id` varchar(100) NOT NULL,
  `r_trainer_name` varchar(200) NOT NULL,
  `r_trainer_desc` varchar(2000) NOT NULL,
  `r_trainer_cost` int(200) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reiki_trainer`
--

INSERT INTO `reiki_trainer` (`r_trainer_id`, `r_trainer_name`, `r_trainer_desc`, `r_trainer_cost`, `district_id`, `status`) VALUES
('rtrain1', 'ABC', 'jscca cajsca', 250, 1, 1),
('rtrain2', 'XYZ', 'djhhd sdbdasnasn', 500, 2, 1),
('rtrain3', 'DCSDCSD SDSSCDC', 'WEDWE FWEDWC CW', 4000, 3, 1),
('rtrain4', 'CWECWE ECEWEXSXWS', 'FERR ECECED', 6000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rent_travel`
--

CREATE TABLE `rent_travel` (
  `rent_veh_co_id` varchar(100) NOT NULL,
  `rent_name` varchar(200) NOT NULL,
  `rent_cost` int(100) NOT NULL,
  `rent_desc` varchar(2000) NOT NULL,
  `rent_sec_mon` int(100) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent_travel`
--

INSERT INTO `rent_travel` (`rent_veh_co_id`, `rent_name`, `rent_cost`, `rent_desc`, `rent_sec_mon`, `district_id`, `status`) VALUES
('rent1', 'APACHE', 1000, 'Provided by Neha Rental.', 30000, 1, 1),
('rent2', 'ROYAL ENFIELD', 2000, 'provided by RAJMANI', 40000, 2, 1),
('rent3', 'DSD DDASDD', 2700, 'sadbsd asdasdja', 40000, 3, 1),
('rent4', 'PULSAR', 3000, 'v sdnsdsdncdkcncsd dcnjds', 60000, 4, 1),
('rent5', 'HAya', 2000, 'Provide by tobo', 40000, 1, 1),
('rent6', 'her pucc', 500, 'provide by kanjoo', 2000, 2, 1),
('rent7', 'Yamaha 520', 2000, 'Provide by ajay devgan', 10000, 1, 1),
('rent8', 'Distic', 5000, 'BM', 4000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tattoo_artist`
--

CREATE TABLE `tattoo_artist` (
  `artist_id` varchar(100) NOT NULL,
  `artist_name` varchar(200) NOT NULL,
  `artist_desc` varchar(2000) NOT NULL,
  `artist_cost` int(200) NOT NULL,
  `district_id` int(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tattoo_artist`
--

INSERT INTO `tattoo_artist` (`artist_id`, `artist_name`, `artist_desc`, `artist_cost`, `district_id`, `status`) VALUES
('art1', 'ABC', 'ndbs ddjncsd jksj', 1000, 1, 1),
('art2', 'XYZ', 'dhbcds csdhbcsdhb', 3000, 2, 1),
('art3', 'ASACS', 'FEFWCDSC', 4000, 3, 1),
('art4', 'ASVRE', 'DSD CDDS', 5000, 4, 1),
('art5', 'Tobo', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 20, 1, 1),
('art6', 'Groot', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 3000, 2, 1),
('art7', 'Thanos', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 5000, 1, 1),
('art8', 'Jarvis', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 2000, 3, 1),
('art9', 'Veronica', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 2000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yoga_trainer`
--

CREATE TABLE `yoga_trainer` (
  `trainer_id` varchar(200) NOT NULL,
  `trainer_name` varchar(200) NOT NULL,
  `trainer_desc` varchar(2000) NOT NULL,
  `district_id` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trainer_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yoga_trainer`
--

INSERT INTO `yoga_trainer` (`trainer_id`, `trainer_name`, `trainer_desc`, `district_id`, `status`, `trainer_cost`) VALUES
('train1', 'Shyam', 'from xyz company', 1, 1, 200),
('train2', 'Ram', 'from abc company', 2, 1, 300),
('train3', 'EWFWE EDEWDWE', 'dwedwed dwejdwn', 3, 1, 3000),
('train4', 'SDCD CSDSD', 'cdhsbcs csdcbshc', 4, 1, 2000),
('train5', 'Tobowa', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 1, 1, 20),
('train6', 'tobia', 'As a term, data analytics predominantly refers to an assortment of applications, from basic business intelligence (BI), reporting and online analytical processing (OLAP) to various forms of advanced analytics. In that sense, it\'s similar in nature to business analytics, another umbrella term for approaches to analyzing data -- with the difference that the latter is oriented to business uses, while data analytics has a broader focus. The expansive view of the term isn\'t universal, though: In some cases, people use data analytics specifically to mean advanced analytics, treating BI as a separate category.', 2, 1, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_travel`
--
ALTER TABLE `book_travel`
  ADD PRIMARY KEY (`book_co_id`);

--
-- Indexes for table `cottage`
--
ALTER TABLE `cottage`
  ADD PRIMARY KEY (`cottage_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `rent_travel`
--
ALTER TABLE `rent_travel`
  ADD PRIMARY KEY (`rent_veh_co_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
