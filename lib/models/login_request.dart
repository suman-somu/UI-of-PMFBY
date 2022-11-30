import 'dart:convert';

login_request loginrequest(String str) =>
    login_request.fromJson(json.decode(str));

class login_request {
  login_request({
    required this.username,
    required this.password,
  });
  String username = "";
  String password = "";

  login_request.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
