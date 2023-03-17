import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/payment/payment.dart';
import './signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Image.asset(
                'assets/images/paypal_logo.png',
                width: 160,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                obscureText: showPass,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() => showPass = !showPass),
                    child: Icon(
                      !showPass ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.indigo,
                minWidth: double.infinity,
                onPressed: () {
                  CupertinoPageRoute route = CupertinoPageRoute(
                    builder: (ctx) => Payment(),
                  );
                  Navigator.pushAndRemoveUntil(context, route, (ctx) => false);
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(width: 2,color: Colors.indigo)
                ),
                color: Colors.white,
                minWidth: double.infinity,
                onPressed: () {
                  CupertinoPageRoute route = CupertinoPageRoute(
                    builder: (ctx) => SignUp(),
                  );

                  Navigator.push(context, route);
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
