class Weather {
  String? name;
  double? temp;
  double? wind;
  double? humidity;
  double? feels_like;
  int? pressure;
  Weather(
      {this.name,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});
  Weather.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    pressure = json["main"]["speed"];
    feels_like = json["main"]["feels_like"];
  }
}
