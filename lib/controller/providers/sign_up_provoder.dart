import 'package:flutter/cupertino.dart';
import 'package:storio_app/view/bottom_nav.dart';
import 'package:storio_app/view/sign_in/sign_in_screen.dart';

class SignUpProvider extends ChangeNotifier {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final conformPassword = TextEditingController();

  void goToHome(context) {
    Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(
      builder: (context) {
        return const BottomNav();
      },
    ), (route) => false);
  }

  void goToSignIn(context) {
    Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(
      builder: (context) {
        return const SignInScreen();
      },
    ), (route) => false);
  }

  bool obscureText = true;
  void passwordIsVisble() {
    obscureText = !obscureText;
    notifyListeners();
  }

  bool obscureTextConfrom = true;

  void conformPasswordIsVisble() {
    obscureTextConfrom = !obscureTextConfrom;
    notifyListeners();
  }
}
