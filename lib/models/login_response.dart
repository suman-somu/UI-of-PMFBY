import 'dart:convert';

login_response loginResponseJSON(String str) =>
    login_response.fromJson(json.decode(str));

class login_response {
  String username = "";
  String password = "";
  String email = "";
  String fullname = "";

  login_response(
      {required this.username,
      required this.password,
      required this.email,
      required this.fullname});

  login_response.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    fullname = json['fullname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['fullname'] = this.fullname;
    return data;
  }
}
