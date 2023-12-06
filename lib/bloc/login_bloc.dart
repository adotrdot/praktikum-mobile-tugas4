import 'dart:convert';
import 'package:praktikum_pert4/helpers/api.dart';
import 'package:praktikum_pert4/helpers/api_url.dart';
import 'package:praktikum_pert4/model/login.dart';

class LoginBloc {
  static Future<Login> login({String? email, String? password}) async {
    String apiUrl = ApiUrl.login;
    var body = {"email": email, "password": password};
    var response = await Api().post(apiUrl, body);
    var jsonObj = json.decode(response.body);
    try {
      return Login.fromJson(jsonObj);
    } catch (e) {
      rethrow;
    }
  }
}
