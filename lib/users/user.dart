import 'package:course_project/users/abstract_user.dart';

class User extends AbstractUser  {
  User({required this.login, required this.password, this.admin = false});

  @override
  late String login;

  @override
  late String password;

  @override
  late bool admin;

  // Реализация метода для записи в базу данных
  @override
  void WriteToDatabase(String login, String password) {
    // Здесь можно добавить логику для записи данных пользователя в базу данных
    print('Запись в базу данных: Логин: $login, Пароль: $password');
  }

  // Реализация метода для добавления объявления
  @override
  void AddAnnouncement(String description, double cost, bool toRent, bool) {
    // Здесь можно добавить логику для добавления объявления
    print('Добавлено объявление: $description, Стоимость: $cost, В аренду: $toRent');
  }

  // Реализация метода для регистрации
  @override
  void Register(String login, String password) {
    this.login = login;
    this.password = password;
    // Здесь можно добавить логику для регистрации пользователя
    print('Пользователь зарегистрирован: Логин: $login');
  }

  // Реализация метода для входа
  @override
  void Login(String login, String password) {
    // Здесь можно добавить логику для проверки логина и пароля
    if (this.login == login && this.password == password) {
      print('Вход выполнен: Логин: $login');
    } else {
      print('Ошибка входа: неверный логин или пароль');
    }
  }
}