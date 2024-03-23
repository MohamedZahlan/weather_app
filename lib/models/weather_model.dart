class WeatherModel {
  final String? cityName;
  final String? date;
  //final String? image;
  final String? weatherCondition;
  // final num? temp;
  // final num? maxTemp;
  // final num? minTemp;

  WeatherModel({
    required this.cityName,
    required this.date,
    //required this.image,
    required this.weatherCondition,
    // required this.temp,
    //
    // required this.maxTemp,
    // required this.minTemp
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      // image: json['current']['forecast']['forecastday'][0]['day']['condition']
      //     ['icon'],
      date: json['current']['last_updated'],
      weatherCondition: json['current']['condition']['text'],
      // temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      // minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      // maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
    );
  }
}
