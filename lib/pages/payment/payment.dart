import 'widgets/body_part.dart';
import 'package:flutter/material.dart';
import '/pages/payment/widgets/scanner_bar.dart';
import '/pages/payment/widgets/bottom_nav_bar.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ScannerBar(),
          Expanded(child: BodyPart()),
          BottomNavBar(),
        ],
      ),
    );
  }
}
