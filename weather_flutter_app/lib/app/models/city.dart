import 'dart:convert';

class City {
  final int id;
  final String name;
  final String state;
  final String country;
  City({
    this.id,
    this.name,
    this.state,
    this.country,
  });

  City copyWith({
    int id,
    String name,
    String state,
    String country,
  }) {
    return City(
      id: id ?? this.id,
      name: name ?? this.name,
      state: state ?? this.state,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'state': state,
      'country': country,
    };
  }

  static City fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return City(
      id: map['id']?.toInt(),
      name: map['name'],
      state: map['state'],
      country: map['country'],
    );
  }

  String toJson() => json.encode(toMap());

  static City fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'City(id: $id, name: $name, state: $state, country: $country)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is City &&
        o.id == id &&
        o.name == name &&
        o.state == state &&
        o.country == country;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ state.hashCode ^ country.hashCode;
  }
}
