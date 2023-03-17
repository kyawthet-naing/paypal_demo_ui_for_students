import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                SizedBox(width: 10),
                moneyCard("Money on hold", balance: 1.14),
                SizedBox(width: 20),
                moneyCard("PayPal balance"),
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(children: [
                  const SizedBox(width: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularStepProgressIndicator(
                        totalSteps: 5,
                        currentStep: 3,
                        stepSize: 5,
                        selectedColor: Colors.indigo,
                        unselectedColor: Colors.grey[200],
                        padding: 0,
                        width: 50,
                        height: 50,
                        selectedStepSize: 5,
                        roundedCap: (_, __) => true,
                      ),
                      const Text("3/5"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Set up your account",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("A few more steps left."),
                    ],
                  ),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
            child: Text(
              'Send again',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              sendAgainIcon(Icons.home, "YellHtut Group"),
              sendAgainIcon(Icons.search, "Search"),
            ],
          )
        ],
      ),
    );
  }

  Widget moneyCard(String title, {double? balance}) {
    return Expanded(
      child: Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 180,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.1),
                child: Image.asset(
                  'assets/images/paypal_logo.png',
                  width: 60,
                ),
              ),
              const SizedBox(height: 8),
              Text(title),
              const SizedBox(height: 8),
              Text(
                '\$${balance ?? "0.00"}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sendAgainIcon(IconData icon, String title) {
    return Container(
      width: 50,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
