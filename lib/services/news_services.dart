import 'package:dio/dio.dart';

class WeatherServices {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: "http://api.weatherapi.com/",
          headers: {"Content-Type": "application/json"},
          receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getNewsData({
    required String url,
    required query,
    String location = 'cairo',
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
      "language": location,
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
