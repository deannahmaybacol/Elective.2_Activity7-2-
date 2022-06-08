import 'package:flutter/material.dart';
import 'package:high_low_cardgame/screens/intro_page.dart';

void main() => runApp(const HighLowCard());

class HighLowCard extends StatelessWidget {
  const HighLowCard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
      },
    );
  }
}
