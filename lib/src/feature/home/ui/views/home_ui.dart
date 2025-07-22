import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/logout_button_view.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_mobile_screen.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_screen.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [LogoutButtonView()],
      ),
      body: SingleChildScrollView(
        child: ResponsiveLayout(
            mobile: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: HomeMobileScreen(),
            ),
            tablet: Padding(
              padding:
                  EdgeInsets.only(right: 100, left: 100, top: 100, bottom: 15),
              child: HomeScreen(),
            ),
            desktop: Padding(
              padding:
                  EdgeInsets.only(right: 200, left: 200, top: 100, bottom: 15),
              child: HomeScreen(),
            )),
      ),
    );
  }
}
