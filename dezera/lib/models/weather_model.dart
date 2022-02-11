class Weather {
  String? city;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather(
      {this.city,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    city = json["name"];
    temp = json["main"]["temp"];
   wind = json["main"]["speed"];
   humidity = json["main"]["humidity"];
   feels_like = json["main"]["feels_like"];
   pressure = json["main"]["pressure"];
  }
}
