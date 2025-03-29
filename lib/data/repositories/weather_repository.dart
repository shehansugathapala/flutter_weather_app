import '../models/weather.dart';
import '../../core/network.dart';

class WeatherRepository {
  final WeatherApi api = WeatherApi();

  Future<Weather> getWeather(String city) async {
    final data = await api.fetchWeather(city);
    return Weather(
      city: data['name'],
      temperature: data['main']['temp'],
      condition: data['weather'][0]['description'],
      humidity: data['main']['humidity'],
    );
  }
}
