class weather {
    final String cityName;
    final double temp;
    final String mainCondition;
    weather({
        required this.cityName,
        required this.temp,
        required this.mainCondition,
    });

    factory weather.fromJson(Map<String, dynamic> json) {
        return weather(
            cityName: json['name'],
            temp: json['main']['temp'].toDouble(),
            mainCondition: json['weather'][0]['main'],
        );
    }
}