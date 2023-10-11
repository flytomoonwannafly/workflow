
-- --------------------------------------------------------

--
-- Структура таблиці `Users`
--

CREATE TABLE `Users` (
  `id` int UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `Users`
--

INSERT INTO `Users` (`id`, `user_name`, `password`) VALUES
(1, 'admin5', 'admin5'),
(2, 'test_login', 'test_pass'),
(3, 'tester', 'tester'),
(4, 'admin_test', 'admin'),
(5, 'admin', 'admin'),
(8, 'admin_admin', 'admin'),
(9, 'adminadmin', 'admin'),
(10, 'ssssssssss', '123123'),
(11, 'volf', 'volf'),
(12, 'volfy', 'volf'),
(13, 'volfyі', 'volf'),
(14, 'volferss', 'volf');
