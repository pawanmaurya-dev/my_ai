import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice/screens/chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Future.delayed(Duration(seconds: 2));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            height: 150,
            width: 150,
            "assets/app_splash/app_splash.json",
            fit: BoxFit.cover,
            repeat: false,
          ),
        ),
      ),
    );
  }
}
