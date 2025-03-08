import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:g_alert/g_alert.dart';

void main() {
  testWidgets('Alert dialog shows correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Alert.show(
                  context: context,
                  title: 'Test',
                  message: 'This is a test alert.',
                );
              },
              child: Text('Show Alert'),
            );
          },
        ),
      ),
    ));

    await tester.tap(find.text('Show Alert'));
    await tester.pump();

    expect(find.text('Test'), findsOneWidget);
    expect(find.text('This is a test alert.'), findsOneWidget);
  });
}
