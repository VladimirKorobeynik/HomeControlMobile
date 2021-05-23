class Setting {
  int settingID;
  int scriptID;
  int functionID;
  int userDeviceID;
  String startTimeFunc;
  String endTimeFunc;

  Setting(int settingID, int functionID, int userDeviceID, String startTimeFunc,
      String endTimeFunc) {
    this.settingID = settingID;
    this.functionID = functionID;
    this.userDeviceID = userDeviceID;
    this.startTimeFunc = startTimeFunc;
    this.endTimeFunc = endTimeFunc;
  }
}
