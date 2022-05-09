import 'package:animal_planet/common/custom_app_bar.dart';
import 'package:animal_planet/common/subscription_container.dart';
import 'package:animal_planet/screens/dashboard_screen.dart';
import 'package:animal_planet/utils/strings.dart';
import 'package:animal_planet/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24,
                ),
                child: Text(
                  Strings.CHOOSE_A_PLAN,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                amount: "1.99",
                text: Strings.weekSubscription,
                imagePath: "assets/weekly.jpg",
              ),
              SubscriptionContainer(
                amount: "4.39",
                text: Strings.oneMonthSubscription,
                imagePath: "assets/monthly.jpg",
              ),
              SubscriptionContainer(
                amount: "9.99",
                text: Strings.threeMonthSubscription,
                imagePath: "assets/3monthly.jpg",
              ),
              SubscriptionContainer(
                amount: "13",
                text: Strings.sixMonthSubscription,
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
            bottom: 32,
            left: 16,
            child: Row(
              children: const <Widget>[
                Text(
                  Strings.LAST_STEP_TO_ENJOY,
                  style: TextStyles.buttonTextStyle,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF8C5835).withOpacity(0.8),
                ),
                child: const Align(
                  alignment: Alignment(-0.3, -0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
