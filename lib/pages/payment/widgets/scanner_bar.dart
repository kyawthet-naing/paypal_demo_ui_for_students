import 'package:flutter/material.dart';

class ScannerBar extends StatelessWidget {
  const ScannerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: const [
          SizedBox(width: 10),
          Icon(Icons.person),
          Spacer(),
          Icon(Icons.qr_code),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
