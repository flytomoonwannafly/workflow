
-- --------------------------------------------------------

--
-- Структура таблиці `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `Users`
--

INSERT INTO `Users` (`id`, `user_name`, `password`) VALUES
(1, 'admin5', 'admin5'),
(2, 'test_login', 'test_pass'),
(3, 'tester', 'tester'),
(4, 'admin_test', 'admin'),
(5, 'admin', 'admin');
