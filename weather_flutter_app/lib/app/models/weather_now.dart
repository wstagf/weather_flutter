import 'dart:convert';

class WeatherNowResponse {
  final int id;
  final String name;
  final String state;
  final String country;
  final Data data;
  WeatherNowResponse({
    this.id,
    this.name,
    this.state,
    this.country,
    this.data,
  });

  WeatherNowResponse copyWith({
    int id,
    String name,
    String state,
    String country,
    Data data,
  }) {
    return WeatherNowResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      state: state ?? this.state,
      country: country ?? this.country,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'state': state,
      'country': country,
      'data': data?.toMap(),
    };
  }

  static WeatherNowResponse fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return WeatherNowResponse(
      id: map['id']?.toInt(),
      name: map['name'],
      state: map['state'],
      country: map['country'],
      data: Data.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  static WeatherNowResponse fromJson(String source) =>
      fromMap(json.decode(source));

  @override
  String toString() {
    return 'WeatherNowResponse(id: $id, name: $name, state: $state, country: $country, data: $data)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WeatherNowResponse &&
        o.id == id &&
        o.name == name &&
        o.state == state &&
        o.country == country &&
        o.data == data;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        state.hashCode ^
        country.hashCode ^
        data.hashCode;
  }
}

class Data {
  final int temperature;
  final String wind_direction;
  final double wind_velocity;
  final double humidity;
  final String condition;
  final double pressure;
  final String icon;
  final int sensation;
  final String date;
  Data({
    this.temperature,
    this.wind_direction,
    this.wind_velocity,
    this.humidity,
    this.condition,
    this.pressure,
    this.icon,
    this.sensation,
    this.date,
  });

  Data copyWith({
    int temperature,
    String wind_direction,
    double wind_velocity,
    double humidity,
    String condition,
    double pressure,
    String icon,
    int sensation,
    String date,
  }) {
    return Data(
      temperature: temperature ?? this.temperature,
      wind_direction: wind_direction ?? this.wind_direction,
      wind_velocity: wind_velocity ?? this.wind_velocity,
      humidity: humidity ?? this.humidity,
      condition: condition ?? this.condition,
      pressure: pressure ?? this.pressure,
      icon: icon ?? this.icon,
      sensation: sensation ?? this.sensation,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temperature': temperature,
      'wind_direction': wind_direction,
      'wind_velocity': wind_velocity,
      'humidity': humidity,
      'condition': condition,
      'pressure': pressure,
      'icon': icon,
      'sensation': sensation,
      'date': date,
    };
  }

  static Data fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Data(
      temperature: map['temperature']?.toInt(),
      wind_direction: map['wind_direction'],
      wind_velocity: map['wind_velocity']?.toDouble(),
      humidity: map['humidity']?.toDouble(),
      condition: map['condition'],
      pressure: map['pressure']?.toDouble(),
      icon: map['icon'],
      sensation: map['sensation']?.toInt(),
      date: map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  static Data fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(temperature: $temperature, wind_direction: $wind_direction, wind_velocity: $wind_velocity, humidity: $humidity, condition: $condition, pressure: $pressure, icon: $icon, sensation: $sensation, date: $date)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Data &&
        o.temperature == temperature &&
        o.wind_direction == wind_direction &&
        o.wind_velocity == wind_velocity &&
        o.humidity == humidity &&
        o.condition == condition &&
        o.pressure == pressure &&
        o.icon == icon &&
        o.sensation == sensation &&
        o.date == date;
  }

  @override
  int get hashCode {
    return temperature.hashCode ^
        wind_direction.hashCode ^
        wind_velocity.hashCode ^
        humidity.hashCode ^
        condition.hashCode ^
        pressure.hashCode ^
        icon.hashCode ^
        sensation.hashCode ^
        date.hashCode;
  }
}
