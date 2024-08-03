import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ringo_media/features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(const RingoMedia());
}

class RingoMedia extends StatelessWidget {
  const RingoMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
