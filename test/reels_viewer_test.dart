import 'package:flutter_test/flutter_test.dart';
import 'package:reels_viewer/reels_viewer.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ReelsViewer(reelsList: []));

  });
}
