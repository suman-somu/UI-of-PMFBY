import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pbyj_app/models/login_request.dart';
import 'package:pbyj_app/models/login_response.dart';
import 'package:pbyj_app/config.dart';

class APIservice {
  static var client = http.Client();

  static Future<bool> login(login_request model) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'applications/json',
    };

    var url = Uri.http(config.apiURL, config.loginAPI);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200) {
      //Shared Space

      return true;
    } else
      return false;
  }
}
