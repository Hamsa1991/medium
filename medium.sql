-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 02:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medium`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptates soluta qui rerum veniam ut vitae minima cupiditate eius.', '<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>\r\n\r\n<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>\r\n\r\n<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/ckeditor/3_1613813114.jpeg\" style=\"height:466px; width:700px\" /></p>\r\n\r\n<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>\r\n\r\n<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>\r\n\r\n<p>Incidunt magnam ut accusantium sunt ea excepturi dolorem. Itaque et autem dolores eos repudiandae excepturi. Et neque labore vero excepturi. Labore debitis et molestiae aut. Voluptatem quam sunt ut veniam rerum ratione deleniti. Repellendus ad et quod alias aliquid. Corporis aut quo repudiandae odio. Vel unde porro voluptatibus et rerum. Odio iure officia maiores aut. Provident tempore corporis dolorem ex sed.</p>', 1, NULL, '2021-02-20 07:26:09'),
(2, 'Magnam est similique rerum maxime exercitationem repellendus animi et.', '<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>\r\n\r\n<p>Aut et qui maxime. Id ut sed tempora est est. Porro eum ipsam similique vitae est. Quia quam animi illo nam. Ut voluptatem odio esse sunt sed eveniet et. Enim deserunt aut natus ut. Qui est expedita necessitatibus ut. Assumenda ut harum sunt qui voluptatem minima commodi. Eaque mollitia atque consectetur adipisci ad nihil fugiat. Aut rerum nulla ut dolor excepturi incidunt. Sit blanditiis sapiente dignissimos nam debitis. Rerum maxime in officiis odio dolore velit. Et est sint consequatur facilis dolor.</p>', 1, NULL, '2021-02-20 07:28:40'),
(3, 'Et odio voluptate sapiente eaque consectetur quisquam.', '<p>Quisquam dolorem a voluptatum vel est omnis. Veritatis sint nam ducimus enim a earum voluptas magni. Veritatis ut sint ipsum cupiditate ipsum quisquam. Sit ullam omnis itaque unde corrupti odit. Maiores non possimus corrupti ut quia architecto temporibus. Iste veniam dolorem non est. Asperiores dolor voluptatem et consequatur voluptatibus odit possimus quia. Necessitatibus minus quisquam enim consequatur est. Fugit occaecati placeat doloribus sed eius enim et. Est ut voluptate deleniti minus. Est sed et soluta fuga iusto est ut.</p>', 1, NULL, '2021-02-19 17:48:26'),
(4, 'Non ipsum ab voluptatem incidunt laudantium aperiam ut officia id.', '<p>Voluptas et inventore vitae odit. Laboriosam voluptatem ab reiciendis commodi nihil vel est provident. In eveniet consequatur et modi mollitia aliquid. Id quo enim perspiciatis est tempora. Deserunt quaerat ut rerum. Omnis voluptas assumenda nam possimus velit ex. Alias quam omnis nam suscipit. Et aliquam natus sequi laborum. Sed asperiores ex at id vel quis aut. Perferendis sunt qui sint sit. Laborum asperiores porro iste id rerum sunt. Expedita totam deleniti consequatur. Tempora voluptas voluptatum quo ut. Ut sint autem quia aspernatur.</p>', 1, NULL, '2021-02-19 17:48:46'),
(5, 'Eaque tenetur qui odio ut sit rerum porro doloribus aut.', '<p>Quae beatae voluptatum magnam facilis id. Sit officiis eum nobis debitis perspiciatis recusandae. Minus laudantium ipsum et libero est voluptatibus architecto. Deleniti quidem nihil optio. Veritatis qui eligendi fuga facilis qui assumenda. Blanditiis et deleniti rem iure. Quam iste impedit explicabo et in et qui. Cum sunt consequatur quis ipsa beatae molestiae ea. Et pariatur voluptatem laudantium totam. Quod voluptates corporis et qui et reiciendis repellendus. Consequatur est explicabo quam sequi officiis aut.</p>', 1, NULL, '2021-02-19 17:49:11'),
(6, 'Maiores atque distinctio quis aut labore nobis quis fugit ipsam saepe voluptatibus.', '<p>Molestiae dolorem iure assumenda non quis mollitia. Quisquam et perspiciatis vel et sint ut. Voluptas accusantium tempora omnis aut eligendi reprehenderit. Rerum cum adipisci voluptas. Corrupti officia repellat et aliquid ipsam rem eos. Quisquam nihil dolorum rem consectetur numquam culpa. Voluptatem aut explicabo modi possimus. Error voluptatem quas id ut aut quia.</p>', 1, NULL, '2021-02-19 17:50:00'),
(7, 'Sed corrupti illo aperiam inventore accusantium autem aut reprehenderit enim aut.', '<p>Eum omnis quaerat aut dolor. Et dolore iure et ut quia veniam hic. Eos accusantium laboriosam laborum quos est. Aut sunt voluptas ea accusantium. Illo et non illum unde aut optio vel. Aut et in quia nihil. Minus perspiciatis minima accusamus quia sunt ea voluptas. Placeat est exercitationem quae tempora repellendus mollitia. Modi et corporis aut omnis vitae. Ab ut quibusdam non. Qui delectus facere quis ut velit. Neque ut pariatur recusandae dicta. Ut sequi voluptate maxime itaque odio qui.</p>', 1, NULL, '2021-02-19 17:50:24'),
(8, 'Quia sit soluta est qui inventore dolore fuga nesciunt.', '<p>Voluptates natus qui velit repellendus amet saepe fugiat. Velit autem velit exercitationem explicabo est iusto voluptas. Consequatur perspiciatis optio non et tempore. Inventore aut qui eaque ut alias hic commodi. Harum illo eligendi ut asperiores dolore laudantium cupiditate recusandae. Amet qui id dolores neque labore et. Molestias quis culpa non quae quae quia iure. Vel et deleniti ipsa. Id cumque quidem eligendi maiores vel quo. Voluptatum doloribus corporis rerum accusamus qui ea. Ut rerum omnis ducimus dolor architecto debitis tenetur. Voluptatibus quo alias aut quae sequi amet consequatur. Sequi rerum quia officia.</p>', 1, NULL, '2021-02-19 17:50:58'),
(9, 'Itaque ut consequatur voluptate et saepe natus ut dolorum.', '<p>Ab tempora explicabo aut aut qui. Voluptas expedita molestiae doloribus sit qui. In sed cupiditate explicabo numquam repudiandae voluptatem quia magnam. Fugit quo mollitia rem et itaque. Quas sed explicabo repellat non iusto nesciunt. Architecto deleniti iusto aut. Similique est sit similique aspernatur commodi eligendi molestiae numquam. Neque ea eius aut quis et. Suscipit saepe eius ratione dolores. Ut nostrum aliquam eius. Esse nemo nesciunt provident enim. Porro excepturi eos minima aliquam ducimus deserunt. Nisi sint ducimus et nemo.</p>', 1, NULL, '2021-02-19 17:51:25'),
(10, 'Fuga laborum numquam quis laudantium et ut facilis quas occaecati repudiandae ut dicta.', '<p>Quod id cumque fuga sed molestiae dolorem laboriosam vitae. Ipsam minima accusamus cumque velit consequatur. Deserunt numquam quis quis qui odit voluptatem. Minus consequatur possimus sed architecto qui et. Voluptatem iusto veritatis officia. Corporis sint facilis ea similique quod quisquam rem. Odit excepturi est culpa mollitia.</p>', 1, NULL, '2021-02-19 17:52:05'),
(11, 'Sed quisquam exercitationem ducimus magni ut accusantium aperiam.', '<p>Similique eos quibusdam voluptas ad aliquam atque quo. Consequatur illo sint repellat iure totam. Voluptatem repudiandae consequatur et ratione cum aut. Laborum ex suscipit aut aspernatur accusantium repudiandae velit. At quibusdam commodi adipisci unde repellendus repellendus. Est corporis qui ipsa necessitatibus iusto perspiciatis earum et. Libero minima dolor odio sit.</p>', 1, NULL, '2021-02-19 17:52:28'),
(12, 'Magni ut blanditiis consequatur sed suscipit eligendi id aspernatur maiores maiores aut.', '<p>Nam et veritatis vero in ad corrupti fugit. Aperiam enim sapiente iusto et adipisci. Animi maiores cupiditate eum nihil ut facere velit. Laborum illo assumenda consequatur nihil mollitia. Aut optio nisi qui magni. Aliquid voluptatem corrupti voluptatem ex. Dicta odio quia qui accusamus. Nam illo id vel temporibus. Incidunt voluptatibus et repellat nesciunt expedita dolores sit dolor. Non et velit eaque minus occaecati. Quae ut dolor consequuntur quo. Et dolor praesentium dolore nostrum. Possimus voluptatibus necessitatibus facilis officiis sapiente dolor sint. Harum atque unde optio mollitia sint. Quia molestias aut molestiae non qui voluptatem alias.</p>', 1, NULL, '2021-02-19 17:53:07'),
(13, 'Dolorem aut et cumque eaque odit amet sunt in.', '<p>Fuga vel incidunt est aperiam quisquam. Laudantium veniam nulla deleniti ex et dolorum iste eaque. Delectus aut dignissimos amet sapiente amet sint. Inventore sit eius iste atque et ad. Odio autem eum doloremque perferendis. Dolor qui laborum laudantium dolores quos maxime similique temporibus. Eveniet non velit dolor sunt. Sunt nesciunt nostrum commodi molestiae expedita aperiam. Expedita vitae eos quia incidunt eum praesentium. Iusto molestiae necessitatibus facere amet neque. Voluptatem aut vero molestiae laborum velit provident architecto. Impedit exercitationem illum voluptatem. Quisquam architecto doloremque aut officia quod voluptatem doloremque.</p>', 1, NULL, '2021-02-19 17:53:40'),
(14, 'Sapiente eveniet odio non ratione ut pariatur at.', '<p>Asperiores a nemo occaecati iusto ipsum eos. Esse provident animi accusantium fugit nam sed. Dolorem mollitia quia labore dolores eos. At eligendi optio nihil. Sunt amet modi autem quos provident ut. Nihil error deserunt totam consequuntur quaerat nihil. Voluptas facere asperiores neque enim inventore qui.</p>', 1, NULL, '2021-02-19 17:54:32'),
(15, 'Corporis est exercitationem cupiditate in temporibus ut dolor perspiciatis deserunt vel iste occaecati.', '<p>Tempore dicta sit consequuntur ea. Illum vel beatae dignissimos assumenda est et dolor. Quis maxime voluptatem numquam enim. Commodi quia nobis quia et facere. Non et et numquam cum ut. Autem repellendus quasi maiores quasi. Dolor repellendus rerum qui culpa error inventore. Minus et exercitationem perspiciatis non omnis. Autem incidunt at voluptas quibusdam eum. Eveniet illum nulla eos dolor rerum ratione et. Ducimus dolorum dolore praesentium illum exercitationem et enim adipisci. Consectetur et explicabo enim praesentium est dolore perferendis. Et officia qui mollitia eum sequi est tempora. Quia tempore non eum ipsam iusto commodi tempora voluptatem.</p>', 1, NULL, '2021-02-19 17:55:01'),
(16, 'Iusto quibusdam pariatur tempore cumque impedit explicabo accusamus corrupti.', 'Et quod accusantium quae occaecati qui accusantium accusamus tempora. Voluptas nostrum sunt doloribus impedit deserunt. Dolor esse adipisci aspernatur sunt quisquam nam. Iusto tempore ea ut error inventore quod. Magnam temporibus dolorem et ut quam incidunt. Maiores sint excepturi atque iste. Rem qui sit sint tempora corrupti consequatur necessitatibus. Reprehenderit ullam illum sit sed iure autem. Nihil est est ut nemo ex voluptas consequatur occaecati.', 1, NULL, NULL),
(17, 'Nihil quibusdam eius consequatur error dolorum eius nesciunt explicabo labore.', 'Praesentium ut dolorem in velit. Quis maxime sit officiis quas sunt iure et eum. Dolorem et possimus dolorem officiis optio harum. Et quia et eos optio incidunt non. Eligendi quaerat aliquid id et assumenda consequuntur. Velit exercitationem ex neque doloremque autem tenetur officia. Officia et aperiam velit error eligendi. Saepe est consequatur qui atque consequuntur autem. Odio voluptatem ea itaque amet molestiae soluta rerum. Velit nam deserunt est voluptas sunt voluptatem. Eaque rerum atque qui molestias libero nobis. Aut doloribus quia consectetur.', 1, NULL, NULL),
(18, 'Molestiae non consequatur nihil repudiandae nesciunt id asperiores voluptatum et in ex nam.', 'Ipsum harum facere et similique. Quo sed voluptatem sed officiis ab vel. Est neque minima voluptas velit. Repellendus voluptatem in sint nemo. Officia rerum excepturi autem dolores repellendus. Minima eos sapiente occaecati reprehenderit. Et et molestiae ratione cumque voluptatem corporis veritatis esse.', 1, NULL, NULL),
(19, 'Dicta est consequuntur occaecati facilis quae rerum ipsam ipsum eum harum facilis.', 'Voluptatem alias amet dolore alias quisquam non aliquam molestias. Nemo commodi quis in. Voluptatem sunt vel adipisci accusamus. Minus nihil ut eum qui tempora voluptas molestias ratione. Rerum molestiae qui tempora distinctio rerum autem reprehenderit. Fugiat omnis voluptas quia perferendis ut. Labore deserunt et eligendi dolore natus earum et. Sit occaecati necessitatibus sapiente qui est rem.', 1, NULL, NULL),
(20, 'Suscipit odit quia totam sed quae quasi a sed accusantium.', 'Id repellat numquam necessitatibus exercitationem ea vel. Quia repellendus temporibus enim aut aut aut repudiandae. Aut animi ut quae omnis sed et corrupti esse. Vel harum voluptatem sapiente. Aut aut odio quaerat cum dolores. Temporibus enim voluptas et id dignissimos sit molestiae. Iure non consequatur rerum. Et ipsam fugit qui non in eum sit.', 1, NULL, NULL),
(21, 'Harum est numquam aspernatur fugiat blanditiis quae dolorem id sint quo ipsa.', 'Est vero architecto sed tempore occaecati et. Unde aspernatur ipsam consequatur delectus. Aspernatur fugit distinctio ad ea omnis. Dicta optio autem minima nihil consequatur veniam assumenda. Maiores dolor nisi alias qui tempore aut velit. Blanditiis aut facilis aut cupiditate quo sed quia. Ut pariatur eligendi non. Nostrum ex magnam minus itaque. Distinctio officia eaque numquam qui.', 1, NULL, NULL),
(22, 'Nisi sint asperiores rerum pariatur harum saepe quod suscipit blanditiis repellat.', 'Perferendis nihil voluptas deserunt id consequuntur inventore nulla. Cum incidunt quia maxime ut maiores consequatur enim. Qui ducimus dolor dolorum cupiditate. Vel vel earum et neque numquam. Quasi voluptas tenetur molestiae quis. Reprehenderit quia in ratione soluta odio a fugit. Voluptatem laboriosam itaque ratione fuga.', 1, NULL, NULL),
(23, 'Excepturi in in error voluptatem saepe voluptas iusto iure tempore et ut neque velit.', 'Et porro tempora quia qui et libero totam est. Et qui deserunt culpa voluptate ea vero laboriosam. Consectetur rerum illum enim similique eveniet. Illum quo optio illo voluptates a et. Quo est et rerum aut. Eligendi dicta est delectus omnis. Aperiam ea facere enim quis. Odit natus vitae consectetur at facere. Qui quo iusto excepturi facilis cumque voluptas aut. Repellat neque doloremque non blanditiis. Nulla nulla animi quam debitis. Aut sit hic delectus occaecati aliquid dicta.', 1, NULL, NULL),
(24, 'Veritatis ut veritatis quis voluptate voluptas est numquam.', 'Eum porro aut qui. Et facilis ipsam enim voluptatibus officia quaerat maiores. Voluptatibus culpa quidem quo qui voluptas tempora. In non sit maxime facilis. Voluptatem consequuntur perspiciatis fugit ullam est modi incidunt ut. Nisi quasi sequi recusandae cupiditate eos molestias modi. Quasi ut aut ipsam eos. Corrupti in et reprehenderit ullam dignissimos qui. Possimus et id illo et incidunt. Et doloribus ullam veritatis nobis non sit repellat. Ea omnis porro qui totam suscipit.', 1, NULL, NULL),
(25, 'Velit deleniti vel aut aut assumenda inventore et voluptatem voluptate laborum delectus.', 'Sint non ipsam non officia id repellendus et quia. Inventore pariatur laborum omnis aperiam. Consequatur voluptatem illo voluptate. Corrupti rerum laudantium qui repudiandae placeat earum. Nam molestiae minus illo quos. Velit necessitatibus porro laudantium quos eaque illum. Tenetur quos vel voluptatem nihil maiores sed quas. Dolor asperiores fugit assumenda perferendis tempore voluptates quidem. Aut inventore earum cupiditate repellat odio qui. In exercitationem incidunt quae asperiores quas. In eum deserunt qui sit optio. Aut qui illo ea ipsam aut. Ut laborum iste neque illo. Illum minima optio et similique nam.', 1, NULL, NULL),
(26, 'Dolor qui natus et repellendus ullam sit officiis nihil.', 'Reprehenderit et voluptate praesentium deserunt in et. Est et velit pariatur et esse doloribus nihil. Minus voluptates sed magnam qui occaecati blanditiis voluptatem. Voluptas ipsam unde temporibus quas. Ullam laborum enim est laboriosam perspiciatis ullam ea at. Magni aut omnis ullam vel explicabo quasi. Quaerat perspiciatis voluptates sint ipsam eligendi. Perspiciatis ab consequuntur doloribus voluptatum rem.', 1, NULL, NULL),
(27, 'Perspiciatis et voluptas qui modi dolores animi sit et officiis voluptas commodi sint.', 'Natus atque omnis modi nisi nisi. Rerum velit porro dolore labore ut possimus enim est. Ducimus ratione suscipit ipsum doloremque. Sapiente aut provident sint praesentium. Sint illo aut consequuntur sit. Mollitia in neque illum et. Dolores eius cum aliquid excepturi nulla molestias illo. Numquam cupiditate aut ea repellat sed et temporibus architecto. Possimus distinctio quae vel omnis ut qui et. Quidem dolor sit qui quam itaque non occaecati fugit.', 1, NULL, NULL),
(28, 'Qui quisquam ut consequatur aperiam saepe quis magni culpa.', 'Voluptas ab commodi harum sunt distinctio. Voluptas in labore dignissimos deserunt non sed porro. Quidem eligendi aperiam similique in autem aperiam cupiditate. Eos qui vel omnis quae dicta laboriosam laborum vel. Dignissimos omnis cupiditate dolorem est sed voluptas. Repellendus suscipit nihil quae voluptatem. Eligendi quae vel et beatae dignissimos quia. Voluptates nesciunt neque exercitationem non. Eum et omnis iste blanditiis aliquam molestiae et. Aut rerum beatae aut amet ullam est molestiae. Et a vel adipisci laboriosam itaque aperiam eligendi. Ut dicta pariatur veritatis ex quia blanditiis.', 1, NULL, NULL),
(29, 'Quibusdam eligendi omnis repudiandae fugiat voluptatibus neque excepturi sed id reprehenderit.', 'Labore placeat nihil recusandae quae voluptatem. Voluptatem quo officiis quo quia. Officiis quia tempora maxime eius. Necessitatibus perspiciatis dicta est harum labore reiciendis. Doloribus rem et nemo libero. Praesentium ratione itaque debitis ducimus quia cupiditate. Velit quo aut molestiae deserunt nihil necessitatibus. Enim quam ullam possimus ea.', 1, NULL, NULL),
(30, 'Nihil ipsam rem qui similique quibusdam quibusdam consequuntur at et molestiae.', '<p>Et ut consequuntur autem eum autem non quo eius. Eum repudiandae provident est aut rerum dolores. Eum dolor non vitae iure architecto. Ut et est cupiditate natus magnam. Veniam eligendi aspernatur est illo repellendus mollitia velit. Exercitationem quo sunt voluptate repellat quis est. Iure sit ducimus vel nisi ut in. Vel harum architecto vero. Nulla ipsa et voluptatem consectetur facere sed minima incidunt.</p>\r\n\r\n<p>Et ut consequuntur autem eum autem non quo eius. Eum repudiandae provident est aut rerum dolores. Eum dolor non vitae iure architecto. Ut et est cupiditate natus magnam. Veniam eligendi aspernatur est illo repellendus mollitia velit. Exercitationem quo sunt voluptate repellat quis est. Iure sit ducimus vel nisi ut in. Vel harum architecto vero. Nulla ipsa et voluptatem consectetur facere sed minima incidunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/uploads/ckeditor/4_1613818109.jpeg\" style=\"height:651px; width:700px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Et ut consequuntur autem eum autem non quo eius. Eum repudiandae provident est aut rerum dolores. Eum dolor non vitae iure architecto. Ut et est cupiditate natus magnam. Veniam eligendi aspernatur est illo repellendus mollitia velit. Exercitationem quo sunt voluptate repellat quis est. Iure sit ducimus vel nisi ut in. Vel harum architecto vero. Nulla ipsa et voluptatem consectetur facere sed minima incidunt.</p>', 1, NULL, '2021-02-20 08:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE `articles_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles_tags`
--

INSERT INTO `articles_tags` (`id`, `article_id`, `tag_id`) VALUES
(5, 3, 18),
(7, 4, 13),
(8, 4, 16),
(9, 5, 3),
(10, 5, 6),
(11, 5, 11),
(12, 5, 15),
(13, 6, 2),
(14, 6, 7),
(15, 6, 9),
(16, 7, 10),
(17, 7, 19),
(18, 8, 14),
(19, 8, 20),
(20, 9, 12),
(21, 9, 17),
(22, 10, 9),
(23, 10, 10),
(25, 11, 3),
(26, 11, 6),
(27, 11, 17),
(28, 12, 12),
(29, 12, 18),
(30, 13, 2),
(31, 13, 11),
(32, 13, 19),
(33, 14, 18),
(35, 14, 22),
(36, 15, 2),
(37, 15, 7),
(38, 15, 14),
(57, 2, 5),
(58, 2, 8),
(61, 1, 1),
(62, 1, 4),
(72, 30, 14),
(73, 30, 19);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `article_id`, `created_at`, `updated_at`) VALUES
(1, '9d249cbb5079f7a63aad99141c662c34.jpg', 1, '2021-02-19 20:29:06', '2021-02-19 20:29:06'),
(3, '1af0ba8f1a24dff95642b66aea8805f4.jpeg', 2, '2021-02-19 20:29:40', '2021-02-19 20:29:40'),
(4, '5ae55c8eb69484ffcb58b94d0a8a4f80.jpeg', 2, '2021-02-19 20:29:40', '2021-02-19 20:29:40'),
(9, '615ca88aa8e99c76d963b11557cf6fd6.jpg', 30, '2021-02-20 08:47:11', '2021-02-20 08:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_19_154456_create_articles_table', 1),
(5, '2021_02_19_154805_create_tags_table', 1),
(6, '2021_02_19_154903_create_images_table', 1),
(7, '2021_02_19_155202_create_articles_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Aliquam et.'),
(2, 'Perspiciatis tempora'),
(3, 'Et quae.'),
(4, 'Amet et.'),
(5, 'A natus quidem.'),
(6, 'Et sit.'),
(7, 'Pariatur et accusantium.'),
(8, 'Aut in.'),
(9, 'Nesciunt blanditiis.'),
(10, 'Quia totam vero.'),
(11, 'Est fugit repellat.'),
(12, 'Voluptas vero voluptate.'),
(13, 'Dolorem consequatur asperiores.'),
(14, 'Totam est.'),
(15, 'Eos sint aliquam.'),
(16, 'Delectus fugiat vel.'),
(17, 'Unde saepe sint.'),
(18, 'Corporis veniam ratione.'),
(19, 'Repudiandae eos iste.'),
(20, 'Soluta quo maxime.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$fhc/dGAI1cG5E8Mhd1RUaOl7pI8YmdIF5ZEIZg5ZU9e.R2iKLmEdG', NULL, '2021-02-19 14:17:48', '2021-02-19 14:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `articles_tags`
--
ALTER TABLE `articles_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
