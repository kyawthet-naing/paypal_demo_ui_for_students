import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    goHome();
    super.initState();
  }

  @override
  void dispose() {
    print('i am disposed');
    super.dispose();
  }

  goHome() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      CupertinoPageRoute route = CupertinoPageRoute(
        builder: (context) => const Home(),
      );
      //
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFCF00),
      body: Center(
        child: Image.asset(
          'assets/images/paypal_logo.png',
          width: 160,
        ),
      ),
    );
  }
}
