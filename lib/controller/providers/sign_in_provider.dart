import 'package:flutter/cupertino.dart';
import 'package:storio_app/view/bottom_nav.dart';
import 'package:storio_app/view/sign_up/sign_up_screen.dart';

class SignInProvider extends ChangeNotifier {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void goToHome(context) {
    Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(
        builder: (context) {
          return const BottomNav();
        },
      ),
      (route) => false,
    );
  }

  void goToSignUp(context) {
    Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(
        builder: (context) {
          return const SignUpScreen();
        },
      ),
      (route) => false,
    );
  }

  bool obscureText = true;
  void passwordIsVisble() {
    obscureText = !obscureText;
    notifyListeners();
  }
}
