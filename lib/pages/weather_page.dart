import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../services/weather_servoves.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherService = WeatherService('1adbd2277abdf6db0f62702766d49883');

  Weather? _weather;
  
  Future<void> _fetchWeather() async {
   String cityName = await _weatherService.getCurrentCity();

   try {
    final weather = await _weatherService.getWeather(cityName);
     setState(() {
      _weather = weather;
     });
   } catch (e) {
    debugPrint(e.toString());
   }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(_weather?.cityName ?? "Loading City ..."),
             if (_weather != null) Text('${_weather?.temp.round()}°C')
          ],
        ),
      )
    );
  }
}