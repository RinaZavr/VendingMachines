abstract class StringConstsMachine {
  static const String machineTitle = 'Торговые автоматы';

  static const List machineInfo = [
    ['Тип шины', 'MDB'],
    ['Уровень сигнала', 'Стабильный'],
    ['Идентификатор', '13856646'],
    ['Модем', '3463457365'],
  ];
  static const String machineInfoTitle = '54467345';
  static const String machineInfoStatus = 'Не работает';
  static const String machineInfoType = 'Снековый';
  static const String machineInfoAddress = 'ТЦ Мега, Химки';

  static const String machineLoadButtonOne = 'Загрузка';
  static const String machineLoadButtonTwo = 'Инвентаризация';
  static const String machineLoadInfo = 'Текущий уровень загрузки';

  static const List machineEvents = [
    ['14:00', 'Сейф переполнен'],
    ['11:20', 'Сломался купюроприемник', '2341245'],
    ['11:20', 'Закончилась наличка', 'Toshiba снековый'],
  ];
  static const String machineEventTitle = 'События';
  static const String machineEventButton = 'Смотреть еще';

  static const String machineFinanceTitle = 'Финансы';
  static const List machineFinances = [
    ['assets/Cashback.png', '5700 ₽', 'Деньги в ТА'],
    ['assets/Money.png', '1 255 ₽', 'Сдача'],
    ['assets/Cashback.png', '5700 ₽', 'Деньги в ТА'],
    ['assets/Money.png', '1 255 ₽', 'Сдача'],
  ];
}
