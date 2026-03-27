class Weather {
    final String cityName;
    final double temp;
    final String mainCondition;
    final String iconId;
    Weather({
        required this.cityName,
        required this.temp,
        required this.mainCondition,
        required this.iconId,
    });

    factory Weather.fromJson(Map<String, dynamic> json) {
        return Weather(
            cityName: json['name']?.toString() ?? 'Unknown City',
            temp: json['main']?['temp']?.toDouble() ?? 0.0,
            mainCondition: json['weather']?[0]?['main']?.toString() ?? 'Unknown',
            iconId: json['weather']?[0]?['icon']?.toString() ?? '01d',
        );
    }
}