class Current {
  final String lastUpdated;
  final int humidity;
  final double windKph;
  final double tempC;
  Condition condition;
  Current({
    required this.lastUpdated,
    required this.humidity,
    required this.windKph,
    required this.tempC,
    required this.condition,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      lastUpdated: json['last_updated'],
      humidity: json['humidity'],
      windKph: json['wind_kph'],
      tempC: json['temp_c'],
      condition: Condition.fromJson(json['condition']),
    );
  }
}

class Condition {
  String text;
  String icon;
  Condition({
    required this.icon,
    required this.text,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      icon: json['icon'],
      text: json['text'],
    );
  }
}
