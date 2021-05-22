class UserDevice {
  int userDeviceID;
  int deviceID;
  String image;
  String type;
  String name;
  bool isActivated;
  String activatedDate;
  String activationKey;
  List arrFunc = [];

  UserDevice(
      int userDeviceID,
      int deviceID,
      String image,
      String type,
      String name,
      bool isActivated,
      String activatedDate,
      String activationKey) {
    this.userDeviceID = userDeviceID;
    this.deviceID = deviceID;
    this.image = image;
    this.type = type;
    this.name = name;
    this.isActivated = isActivated;
    this.activatedDate = activatedDate;
    this.activationKey = activationKey;
  }
}
