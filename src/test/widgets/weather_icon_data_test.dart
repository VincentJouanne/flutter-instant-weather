import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_list_app/widgets/weather_icon_data.dart';

import '../utils/test_resource_loader.dart';

void main() {
  testWidgets('Weather icon data should correctly show', (tester) async {
    await loadIconFont();

    // Given a weather card
    MaterialApp app = MaterialApp(
      home: Scaffold(
        body: WeatherIconData(
          icon: Icons.ac_unit,
          data: "data",
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );

    // When we render the widget
    await tester.pumpWidget(app);

    //Then the weather card should show up
    await expectLater(find.byType(WeatherIconData),
        matchesGoldenFile('goldens/weather_icon_data.png'));
  });
}
