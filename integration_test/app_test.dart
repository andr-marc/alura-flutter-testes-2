import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:client_control/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Integration test', (widgetTester) async {
    app.main();
    await widgetTester.pumpAndSettle();

    expect(find.text('Menu'), findsNothing);
    widgetTester.tap(find.byIcon(Icons.menu));
    await widgetTester.pumpAndSettle();
    expect(find.text('Menu'), findsOneWidget);
  });
}
