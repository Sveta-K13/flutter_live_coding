import 'package:declarative_ui_demo/models/item.dart';

const List<Item> bankItems = [
  Item(
      title: "СберПрайм",
      subtitle: "Платёж 9 июля",
      description: "199 ₽ в месяц",
      type: ItemType.PRIME),
  Item(
    title: "Переводы",
    subtitle: "Автопродление 21 августа",
    description: "199 ₽ в месяц",
    type: ItemType.TRANSACTION,
  ),
  Item(
    title: "СберПрайм",
    subtitle: "Платёж 9 мая",
    description: "Оформление подписки",
    type: ItemType.PRIME,
  ),
  Item(
    title: "Перевод",
    subtitle: "Перевод маме 12 августа",
    description: "20000 ₽",
    type: ItemType.TRANSACTION,
  ),
  Item(
      title: "Пополнение",
      subtitle: "Пополнение со сберкнижки счёта 6 августа",
      description: "40000 ₽",
      type: ItemType.TRANSACTION),
  Item(
      title: "Okko",
      subtitle: "Покупка фильма",
      description: "Покупка блокбастера",
      type: ItemType.PRIME),
  Item(
      title: "Оплата КУ",
      subtitle:
          "Оплата за электроснабжение, горячую воду, холодную воду, электричество и газ",
      description: "8000 ₽",
      type: ItemType.TRANSACTION),
];

const String hello_first_fragment = "Hello first fragment";
const String hello_second_fragment = "Hello second fragment. Arg: %@";
const String profile_name = "Екатерина";
const String profile_name_me = "Света";
const String profile_title = "У вас подключено";
const String profile_description =
    "Подписки, автоплатежи и сервисы, на которые вы подписались";
const String profile_rates_settings_title = "Тарифы и лимиты";
const String profile_rates_settings_description =
    "Для операций в Сбербанк Онлайн";
const String limit_title = "Изменить суточный лимит";
const String limit_description = "На платежи и суточный перевод";
const String transfer_title = "Переводы без комиссии";
const String transfer_description = "Показать остатов в этом месяце";
const String info_title = "Информация о тарифах\nи лимитах";
const String interests_title = "Интересы";
const String interests_description =
    "Мы подбираем истории и предложения по темам, которые вам нравятся";
// chips
const String chip_food = "Еда";
const String chip_self_improvement = "Саморазвитие";
const String chip_technologies = "Технологии";
const String chip_home = "Дом";
const String chip_leisure = "Досуг";
const String chip_health = "Забота о себе";
const String chip_science = "Наука";

// icons paths
const ic_close = 'assets/ic_close.svg';
const ic_disclosure = 'assets/ic_disclosure.svg';
const ic_exit = 'assets/ic_exit.svg';
const ic_info = 'assets/ic_info.svg';
const ic_limit = 'assets/ic_limit.svg';
const ic_operation_prime = 'assets/ic_operation_prime.png';
const ic_operation_transaction = 'assets/ic_operation_transaction.svg';
const ic_transfer = 'assets/ic_transfer.svg';

const me_photo = 'assets/me.jpeg';
