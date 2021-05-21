import 'dart:convert';
import 'package:http/http.dart' as http;

class Connect {
  Future<Map> sendData(url, data) async {
    try {
      var response = await http.post(
        url,
        body: jsonEncode(data),
        headers: {"content-type": "application/json"},
      );
      print("Status: ${response.statusCode}");
      print(response.body);
      Map userData;
      if (response.body != null) {
        userData = json.decode(response.body);
      }
      return userData;
    } catch (error) {
      print(error);
    }
  }

  Future<Map> startMethod(url, data) async {
    return await this.sendData(url, data);
  }
}
