import 'package:flutter/material.dart';
import '../screens/next_screen.dart';

class NavModel with ChangeNotifier {
  String message = '';

  void navigate(BuildContext context) {
    message = 'We are going to the next page';
    notifyListeners();

    Future.delayed(Duration(milliseconds: 300), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => NextScreen()),
      );
      message = '';
      notifyListeners();
    });
  }

  void clear() {
    message = '';
    notifyListeners();
  }
}
