
--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `Notes`
--
ALTER TABLE `Notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
