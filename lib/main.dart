import 'package:flutter/material.dart';
import 'package:my_app/ui/screen/bonus_screen.dart';
import 'package:my_app/ui/screen/detail_screen.dart';
import 'package:my_app/ui/screen/get_started_screen.dart';
import 'package:my_app/ui/screen/main_screen.dart';
import 'package:my_app/ui/screen/sign_up_screen.dart';
import 'package:my_app/ui/screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/get-started': (context) => const GetStartedScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/bonus': (context) => const BonuScreen(),
        '/main': (context) => const MainScreen(),
        '/detail-screen': (contenxt) => const DetailScreen()
      },
    );
  }
}
