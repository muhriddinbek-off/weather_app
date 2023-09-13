class Forecast {
  List<ForecastDay> forecatday;
  Forecast({
    required this.forecatday,
  });
  factory Forecast.fromJson(Map<String, dynamic> json) {
    List forecastlist = json['forecastday'];
    List<ForecastDay> forList = [];
    forecastlist.forEach((element) {
      forList.add(ForecastDay.fromJson(element));
    });
    return Forecast(
      forecatday: List.from(forList),
    );
  }
}

class ForecastDay {
  String date;
  DayForecastDay day;
  List<Hour> hour;
  ForecastDay({
    required this.date,
    required this.hour,
    required this.day,
  });
  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    List<Hour> hours = [];
    json['hour'].forEach((e) {
      hours.add(
        Hour.fromJson(e),
      );
    });
    return ForecastDay(
      date: json['date'],
      hour: List.from(hours),
      day: DayForecastDay.fromJson(json['day']),
    );
  }
}

class Hour {
  String time;
  double tempC;
  Condition condition;
  Hour({
    required this.time,
    required this.tempC,
    required this.condition,
  });
  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      time: json['time'],
      tempC: json['temp_c'],
      condition: Condition.fromJson(json['condition']),
    );
  }
}

class Condition {
  String icon;
  Condition({
    required this.icon,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      icon: json['icon'],
    );
  }
}

class DayForecastDay {
  double maxtempC;
  ConditionDay condition;
  DayForecastDay({
    required this.maxtempC,
    required this.condition,
  });
  factory DayForecastDay.fromJson(Map<String, dynamic> json) {
    return DayForecastDay(
      maxtempC: json['maxtemp_c'],
      condition: ConditionDay.fromJson(json['condition']),
    );
  }
}

class ConditionDay {
  String icon;
  ConditionDay({
    required this.icon,
  });
  factory ConditionDay.fromJson(Map<String, dynamic> json) {
    return ConditionDay(
      icon: json['icon'],
    );
  }
}
