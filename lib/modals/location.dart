class Location {
  final String region;
  Location({
    required this.region,
  });
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      region: json['region'],
    );
  }
}
