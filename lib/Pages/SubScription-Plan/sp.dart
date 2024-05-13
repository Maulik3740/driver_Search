import 'package:flutter/material.dart';
import 'package:fuerteads/Pages/SubScription-Plan/subscriptionPlanMobile.dart';
import 'package:fuerteads/Pages/SubScription-Plan/subscriptionPlanWeb.dart';
import 'package:fuerteads/responsive.dart';

class SubscriptionPlan extends StatelessWidget {
  const SubscriptionPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: SubscriptionPlanMobile(),
        tablet: SubscriptionPlanMobile(),
        desktop: SubscriptionPlanWeb(),

        // mobileScreen: SubscriptionPlanMobile(),
        // webScreen: SubscriptionPlanWeb()
      ),
    );
  }
}
