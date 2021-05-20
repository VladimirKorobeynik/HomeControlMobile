class User {
  int userID;
  int roleID;
  int subscriptionID;
  String fullname;
  String name;
  String patronymic;
  String number;
  String address;
  String email;
  String birthday;
  String login;
  String registrationDate;
  bool isActiveAccount;
  bool isActiveSubscription;

  User(
      int userID,
      int roleID,
      int subscriptionID,
      String fullname,
      String name,
      String patronymic,
      String number,
      String address,
      String email,
      String birthday,
      String login,
      String registrationDate,
      bool isActiveAccount,
      bool isActiveSubscription) {
    this.userID = userID;
    this.roleID = roleID;
    this.subscriptionID = subscriptionID;
    this.fullname = fullname;
    this.name = name;
    this.patronymic = patronymic;
    this.number = number;
    this.address = address;
    this.email = email;
    this.birthday = birthday;
    this.login = login;
    this.registrationDate = registrationDate;
    this.isActiveAccount = isActiveAccount;
    this.isActiveSubscription = isActiveSubscription;
  }
}
