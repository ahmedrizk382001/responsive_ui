import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/footer.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_contact_us.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_drawer.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_home.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_our_clients.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_our_plan.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_our_portfolio.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_our_services.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_smallsize_footer.dart';

// ignore: must_be_immutable
class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MobileDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileHome(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const MobileOurClients(),
            const SizedBox(
              height: 65,
            ),
            const MobileOurServices(),
            const SizedBox(
              height: 65,
            ),
            const MobileOurPlan(),
            const SizedBox(
              height: 65,
            ),
            const MobileOurPortfolio(),
            const SizedBox(
              height: 65,
            ),
            const MobileContactUs(),
            if (MediaQuery.sizeOf(context).width >= 450) Footer(),
            if (MediaQuery.sizeOf(context).width < 450) MobileSmallsizeFooter(),
          ],
        ),
      ),
    );
  }
}
