#language: ru

@tree

Функционал: Проверка отчета Остатки товаров

Как Тестировщик я хочу
проверить отчет Остатки товаров
чтобы убелиться, что он выводит необходимые данные
Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка отчета Остатки товаров
*Закроем все окна
	И я закрываю все окна клиентского приложения
*Откроем нужный отчет
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
*Сформируем отчет
	Когда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
*Проверим отчет
	Тогда табличный документ "Результат" равен макету "ОстаткиТоваров" по шаблону
	