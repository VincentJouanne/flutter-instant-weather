import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_list_app/main.dart';

void main() {
  testWidgets(
      'Favorite star widget should have an unfilled default icon button.',
      (tester) async {
    // create the widget
    MyApp myApp = new MyApp();

    // add it to the widget tester
    await tester.pumpWidget(myApp);

    // find the unfilled icon
    Finder iconButton =
        find.byKey(new Key('favorite_star_unfilled_icon_button'));

    expect(iconButton, findsOneWidget);
  });

  testWidgets(
      'Favorite star widget should have a filled icon button if favorited.',
      (tester) async {
    // create the widget
    MyApp myApp = new MyApp();

    // pump
    await tester.pumpWidget(myApp);

    // type on the icon button
    await tester.tap(find.byType(IconButton));

    // pump
    await tester.pumpWidget(myApp);

    // find the filled icon
    Finder iconButton = find.byKey(new Key('favorite_star_filled_icon_button'));

    expect(iconButton, findsOneWidget);
  });
}
