import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.amber,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed: () {},
                  child: Text('Send'),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  color: Colors.amber,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  onPressed: () {},
                  child: Text('Request'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: btnWidget(icon: Icons.home, title: "Home"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: btnWidget(icon: Icons.money, title: "Payments"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: btnWidget(icon: Icons.wallet, title: "Wallet"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget btnWidget({required IconData icon, required String title}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        Text(title),
      ],
    );
  }
}
