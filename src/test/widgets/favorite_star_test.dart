import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_list_app/widgets/favorite_star.dart';

Widget makeTesteableWidget({Widget? child}) {
  return MaterialApp(
    home: Scaffold(
      body: child,
    ),
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
  );
}

void main() {
  testWidgets(
      'Favorite star widget should render with an unfilled default icon button.',
      (WidgetTester tester) async {
    // Given a favorite star
    Widget widgetTotest = makeTesteableWidget(child: FavoriteStar());
    await tester.pumpWidget(widgetTotest);

    // When we do nothing

    // The default icon should be an unfilled star
    await expectLater(find.byType(FavoriteStar), matchesGoldenFile('main.png'));
    await expectLater(find.byKey(new Key('favorite_star_unfilled_icon_button')),
        matchesGoldenFile('main.png'));
  });

  testWidgets(
      'Favorite star widget should have a filled icon button if favorited.',
      (WidgetTester tester) async {
    // Given a favorite star
    Widget widgetTotest = makeTesteableWidget(child: FavoriteStar());
    await tester.pumpWidget(widgetTotest);

    // When we tap on the icon button
    await tester.tap(find.byType(IconButton));
    await tester.pumpWidget(widgetTotest);

    // The icon should be a filled star
    await expectLater(find.byType(FavoriteStar), matchesGoldenFile('main.png'));
    await expectLater(find.byKey(new Key('favorite_star_filled_icon_button')),
        matchesGoldenFile('main.png'));
  });
}
