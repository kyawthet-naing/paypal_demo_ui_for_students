import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    goAuth();
    super.initState();
  }

  goAuth() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      CupertinoPageRoute route = CupertinoPageRoute(
        builder: (context) => Login(),
      );
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
          ),
        ),
      ),
    );
  }
}
