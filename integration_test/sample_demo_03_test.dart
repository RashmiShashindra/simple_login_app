import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:simple_login_app/main.dart';

void main() {
  patrolTest(
    'Sign In Test 03',
    (PatrolIntegrationTester $) async {
      await $.pumpWidgetAndSettle(MyApp());

      // Find the username and password text fields
      final Finder usernameField = find.bySemanticsLabel(RegExp('Username Input'));
      final Finder passwordField = find.bySemanticsLabel(RegExp('Password Input'));
      final Finder loginBtn = find.bySemanticsLabel(RegExp('Login Button'));

      // Enter a username and password
      await $.waitUntilVisible(usernameField);
      await $(usernameField).enterText('testuser03');
      await $(passwordField).enterText('password789');
      await $(loginBtn).tap();
    },
  );
}
