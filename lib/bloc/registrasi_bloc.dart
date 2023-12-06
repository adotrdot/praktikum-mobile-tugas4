import 'dart:convert';
import 'package:praktikum_pert4/helpers/api.dart';
import 'package:praktikum_pert4/helpers/api_url.dart';
import 'package:praktikum_pert4/model/registrasi.dart';

class RegistrasiBloc {
  static Future<Registrasi> registrasi(
      {String? nama, String? email, String? password}) async {
    String apiUrl = ApiUrl.registrasi;
    var body = {"nama": nama, "email": email, "password": password};
    var response = await Api().post(apiUrl, body);
    var jsonObj = json.decode(response.body);
    return Registrasi.fromJson(jsonObj);
  }
}
