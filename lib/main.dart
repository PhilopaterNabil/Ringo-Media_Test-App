import 'package:flutter/material.dart';
import 'package:ringo_media/screens/login_screen.dart';

void main() {
  runApp(const RingoMedia());
}

class RingoMedia extends StatelessWidget {
  const RingoMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ringo Media Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
