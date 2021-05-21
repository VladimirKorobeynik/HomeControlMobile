import 'package:Home_Control/Entity/User.dart';
import 'package:Home_Control/MainMenu.dart';
import 'package:Home_Control/Parts/DialogBox.dart';
import 'package:Home_Control/Services/Connect.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Registration extends StatefulWidget {
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String fullname;
  String name;
  String patronymic;
  String number;
  String address;
  String email;
  String birthday;
  String login;
  String registrationDate;
  String password;
  User userAccount;

  final TextEditingController fullnameController = new TextEditingController();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController patronymicController =
      new TextEditingController();
  final TextEditingController numberController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController birthdayController = new TextEditingController();
  final TextEditingController loginController = new TextEditingController();
  final TextEditingController registrationDateController =
      new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Image(
              image: AssetImage("assets/images/LogoIcon.png"),
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Реєстрація",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Ім'я",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: nameController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Прізвище",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: fullnameController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "По батькові",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: patronymicController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Номер телефону",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: numberController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Адреса",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: addressController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Пошта",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: emailController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Дата нарождення",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: birthdayController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Логін",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: loginController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  hintText: "Пароль",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                controller: passwordController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text("Зареєструватися"),
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () async {
                  DialogBox dialogBox = new DialogBox();
                  Connect connect = new Connect();
                  DateTime now = new DateTime.now();
                  DateFormat formatter = new DateFormat('yyyy-MM-dd');
                  String registrationDate = formatter.format(now);
                  this.getDataRegistration(
                      fullname: this.fullnameController.text,
                      name: this.nameController.text,
                      patronymic: patronymicController.text,
                      number: this.numberController.text,
                      address: this.addressController.text,
                      email: emailController.text,
                      birthday: birthdayController.text,
                      login: loginController.text,
                      password: passwordController.text);
                  if (this.checkField()) {
                    var user = {
                      "fullname": fullname,
                      'name': name,
                      "patronymic": patronymic,
                      "number": number,
                      "address": address,
                      "email": email,
                      "birthday": birthday,
                      "login": login,
                      "registrationDate": registrationDate,
                      "password": password,
                    };

                    Map userData = await connect.startMethod(
                        'http://192.168.0.101/mobileWeb/mobileRegistration.php',
                        user);

                    if (userData != null) {
                      User userAccount = new User(
                        int.parse(userData["user_id"]),
                        int.parse(userData["role_id"]),
                        int.parse(userData["subscription_id"]),
                        userData["fullname"],
                        userData["name"],
                        userData["patronymic"],
                        userData["number"],
                        userData["address"],
                        userData["email"],
                        userData["birthday"],
                        userData["login"],
                        userData["registration_date"],
                        (userData["is_active"] == "1") ? true : false,
                        (userData["is_active_subscription"] == "1")
                            ? true
                            : false,
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainMenu(userAccount),
                        ),
                      );
                    } else {
                      dialogBox.showCupertinoDialog(
                          context,
                          "Ошибка Регестрации",
                          "Такой пользователь уже существует!");
                    }
                  } else {
                    dialogBox.showCupertinoDialog(
                        context, "Помилка", "Заповніть будь ласка всі поля :)");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void getDataRegistration(
      {String fullname,
      String name,
      String patronymic,
      String number,
      String address,
      String email,
      String birthday,
      String login,
      String password}) {
    this.fullname = fullname;
    this.name = name;
    this.patronymic = patronymic;
    this.number = number;
    this.address = address;
    this.email = email;
    this.birthday = birthday;
    this.login = login;
    this.password = password;
  }

  bool checkField() {
    if (this.fullname.toString().trim() != "" &&
        this.name.toString().trim() != "" &&
        this.patronymic.toString().trim() != "" &&
        this.number.toString().trim() != "" &&
        this.address.toString().trim() != "" &&
        this.email.toString().trim() != "" &&
        this.birthday.toString().trim() != "" &&
        this.login.toString().trim() != "" &&
        this.password.toString().trim() != "") {
      return true;
    }
    return false;
  }
}
