import 'package:dio/dio.dart';

class WeatherApi {
  static const String baseUrl = "https://api.openweathermap.org/data/2.5/weather";
  static const String apiKey = "30d5f222adf7fee8c2f597392ba76a1f"; // Replace with your API key

  final Dio _dio = Dio();

  Future<Map<String, dynamic>> fetchWeather(String city) async {
    final response = await _dio.get("$baseUrl?q=$city&appid=$apiKey&units=metric");
    return response.data;
  }
}
