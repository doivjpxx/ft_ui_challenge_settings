import 'package:ft_ui_challenge_settings/pages/setting_1.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/first': (context) => MySetting1(),
        // '/second': (context) => MySetting2(),
        // '/third': (context) => MySetting3(),
      },
    );
  }
}