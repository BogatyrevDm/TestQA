#language: ru

@tree

Функционал: проверка расчета итогового количества документа в документе Заказ при вводе услуги

Как Тестировщик я хочу
проверить изменение итогового количества при вводе услуги

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка расчета суммы при изменении цены и количества в документе Заказ
* Создание документа Заказ
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
*Проверка итогового количества
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '0'
* Закрытие всех окон документа
	И я закрываю все окна клиентского приложения
