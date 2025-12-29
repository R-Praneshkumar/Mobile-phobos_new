import 'package:app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Dashboard screen smoke test', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our dashboard screen is displayed.
      expect(find.text('Dashboard Overview'), findsOneWidget);
    });
  });
}
