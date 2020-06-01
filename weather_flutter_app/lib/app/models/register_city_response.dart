import 'dart:convert';

import 'package:flutter/foundation.dart';

class RegisterCityResponse {
  final String status;
  final List<int> locales;
  RegisterCityResponse({
    this.status,
    this.locales,
  });

  RegisterCityResponse copyWith({
    String status,
    List<int> locales,
  }) {
    return RegisterCityResponse(
      status: status ?? this.status,
      locales: locales ?? this.locales,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'locales': locales,
    };
  }

  static RegisterCityResponse fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return RegisterCityResponse(
      status: map['status'],
      locales: List<int>.from(map['locales']),
    );
  }

  String toJson() => json.encode(toMap());

  static RegisterCityResponse fromJson(String source) =>
      fromMap(json.decode(source));

  @override
  String toString() =>
      'RegisterCityResponse(status: $status, locales: $locales)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RegisterCityResponse &&
        o.status == status &&
        listEquals(o.locales, locales);
  }

  @override
  int get hashCode => status.hashCode ^ locales.hashCode;
}
