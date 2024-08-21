import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/app_home.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_contact_us.dart';
import 'package:responsive_ui/views/widgets/footer.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_our_clients.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_our_plan.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_our_portfolio.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_our_services.dart';

class DesktopAndTabletLayout extends StatelessWidget {
  const DesktopAndTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppHome(),
            const SizedBox(
              height: 50,
            ),
            const OurClients(),
            const SizedBox(
              height: 80,
            ),
            const OurServices(),
            const SizedBox(
              height: 145,
            ),
            const OurPlan(),
            const SizedBox(
              height: 75,
            ),
            const OurPortfolio(),
            const SizedBox(
              height: 100,
            ),
            const ContactUs(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
