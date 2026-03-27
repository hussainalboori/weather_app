import 'package:http/http.dart' as http;

class weatherService {
    static String baseUrl = "https://api.openweathermap.org/data/2.5/weather";
    static String apiKey;
    weatherService({required this.apiKey});

    Future<weather> getWeather(String cityName) async {
        final response = await http.get(Uri.parse('$baseUrl?q=$cityName&appid=$apiKey'));
        if (response.statusCode == 200) {
            return weather.fromJson(jsonDecode(response.body));
        } else {
            throw Exception('Failed to load weather');
        }
    }

    Future<weather> getCurrentCity() async {
        LocationPermission permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
        }
        
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high,
        );
        
        List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
        String? cityName = placemarks[0].locality!;
        
        return cityName ?? "";
    }
    
}    
