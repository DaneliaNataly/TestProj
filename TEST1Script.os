
#Использовать v8runner
#Использовать v8storage

ПодключитьСценарий("config.os", "ПараметрыСкрипта");


Параметры = Новый ПараметрыСкрипта();
Конфигуратор = Новый УправлениеКонфигуратором();
Конфигуратор.УстановитьКонтекст("/IBConnectionString""Srvr=db; Ref='ka25'""", Параметры.Польз, Параметры.П);
//Конфигуратор.ОбновитьКонфигурациюБазыДанных();
СтрокаСоединения="tcp://nn-sql-01/ka_proverka";
ПользовательХранилища="Данелия_Наталья";
Пароль="223"; ;

Конфигуратор.ПолучитьВерсиюИзХранилища(СтрокаСоединения, ПользовательХранилища,Пароль); //выгружает последнюю версию в текущий катало source.cf

ПараметрыЗапуска = Конфигуратор.ПолучитьПараметрыЗапуска();
	ПараметрыЗапуска.Добавить(СтрШаблон("/ConfigurationRepositoryN ""%1""", Параметры.Польз));
	ПараметрыЗапуска.Добавить(СтрШаблон("/ConfigurationRepositoryP ""%1""", Пароль));



	ПараметрыЗапуска.Добавить(СтрШаблон("/ConfigurationRepositoryF ""%1""", СтрокаСоединения));

//Попытка
 ///Конфигуратор.ВыполнитьКоманду(ПараметрыЗапуска);
//Исключение
 //Сообщить(Конфигуратор.ВыводКоманды());
//КонецПопытки ;
//r.СохранитьВерсиюКонфигурацииВФайл(,"C:/Users/daneliya.n/ProjConf/up.cf" );
Сообщить(Параметры.Сер);
Сообщить(Параметры.Польз);