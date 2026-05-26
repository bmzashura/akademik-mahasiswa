import 'package:flutter_test/flutter_test.dart';
import 'package:siakmhs_1002240018/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Selamat Datang di SIAKMHS_1002240018'), findsOneWidget);
  });
}