import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_list_app/widgets/favorite_star.dart';

void main() {
  testWidgets(
      'Favorite star widget should render with an unfilled default icon button.',
      (WidgetTester tester) async {
    // Given a favorite star
    MaterialApp app = MaterialApp(
      home: Scaffold(
        body: FavoriteStar(),
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );

    await tester.pumpWidget(app);

    // When we do nothing

    // The default icon should be an unfilled star
    await expectLater(find.byIcon(Icons.star_border),
        matchesGoldenFile('goldens/icon_star_border.png'));
  });

  testWidgets(
      'Favorite star widget should have a filled icon button if favorited.',
      (WidgetTester tester) async {
    // Given a favorite star
    MaterialApp app = MaterialApp(
      home: Scaffold(
        body: FavoriteStar(),
      ),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );

    await tester.pumpWidget(app);

    // When we tap on the icon button
    await tester.tap(find.byType(IconButton));
    await tester.pumpWidget(app);

    // The icon should be a filled star
    await expectLater(
        find.byIcon(Icons.star), matchesGoldenFile('goldens/icon_star.png'));
  });
}
