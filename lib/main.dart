import 'package:flutter/material.dart';
import 'package:my_app/ui/screen/get_started_screen.dart';
import 'package:my_app/ui/screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedScreen()
    );
  }
}
