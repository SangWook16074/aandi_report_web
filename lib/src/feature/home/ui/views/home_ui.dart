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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        actions: [LogoutButtonView()],
        toolbarHeight: 56,
      ),
      body: SingleChildScrollView(
        child: ResponsiveLayout(
            mobile: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top +
                    66, // status bar + app bar + extra
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: HomeMobileScreen(),
            ),
            tablet: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 76,
                right: 100,
                left: 100,
                bottom: 15,
              ),
              child: HomeScreen(),
            ),
            desktop: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 76,
                right: 200,
                left: 200,
                bottom: 15,
              ),
              child: HomeScreen(),
            )),
      ),
    );
  }
}
