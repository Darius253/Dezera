class Weather {
  String? city;
  double? temp;
  double? wind;
  int? humidity;
  double? feelslike;
  int? pressure;

  Weather(
      {this.city,
      this.temp,
      this.wind,
      this.humidity,
      this.feelslike,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    city = json["name"];
    temp = json["main"]["temp"];
   wind = json["wind"]["speed"];
   humidity = json["main"]["humidity"];
   feelslike = json["main"]["feels_like"];
   pressure = json["main"]["pressure"];
  }
}
