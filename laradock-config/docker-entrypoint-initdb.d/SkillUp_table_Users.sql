
-- --------------------------------------------------------

--
-- Структура таблиці `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `Users`
--

INSERT INTO `Users` (`id`, `user_name`, `password`) VALUES
(1, 'admin5', 'admin5'),
(2, 'test_login', 'test_pass'),
(3, 'tester', 'tester'),
(4, 'admin_test', 'admin'),
(5, 'admin', 'admin');
