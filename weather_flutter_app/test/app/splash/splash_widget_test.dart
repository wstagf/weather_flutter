import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:weather_flutter_app/app/splash/splash_widget.dart';

main() {
  testWidgets('SplashWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SplashWidget()));
    final textFinder = find.text('Splash');
    expect(textFinder, findsOneWidget);
  });
}
