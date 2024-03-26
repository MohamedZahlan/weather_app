class WeatherModel {
  final String? cityName;
  final DateTime? date;
  final String? weatherCondition;
  final String? image;
  final num? temp;
  final num? maxTemp;
  final num? minTemp;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.weatherCondition,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      weatherCondition: json['current']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
    );
  }
}
