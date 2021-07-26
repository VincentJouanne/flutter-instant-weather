import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_list_app/widgets/weather_card.dart';

import '../utils/test_resource_loader.dart';

void main() {
  testWidgets('Weather card should correctly show', (tester) async {
    await loadIconFont();

    // Given a weather card
    MaterialApp app = MaterialApp(
      home: Scaffold(
        body: WeatherCard(
          headline: "France",
          firstData: "32°C",
          secondData: "1024pa",
          thirdData: "65%",
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );

    // When we render the widget
    await tester.pumpWidget(app);

    //Then the weather card should show up
    await expectLater(find.byType(WeatherCard),
        matchesGoldenFile('goldens/weather_card.png'));
  });
}
