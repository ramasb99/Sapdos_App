import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app/Presentation/provider/login.dart';
import 'package:simple_app/Presentation/provider/signup.dart';
import 'package:simple_app/Presentation/screens/Widget/main_pages/welcome_page.dart';
// import 'package:simple_app/Presentation/screens/Widget/main_pages/Register_page.dart';
// import 'package:simple_app/Presentation/screens/Widget/welcome_page.dart';
// import 'package:simple_app/Presentation/screens/Widget/main_pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LoginProvider()),
        ChangeNotifierProvider.value(value: SignupProvider()),
      ],
      child: MaterialApp(
        home: WelcomePage(),
      ),
    );
  }
}
