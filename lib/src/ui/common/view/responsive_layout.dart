import 'package:a_and_i_report_web_server/src/core/constants/responsive_dimension.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= mobileWidth;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width <= tabletWidth;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > tabletWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > tabletWidth) {
        return desktop;
      } else if (constraints.maxWidth > mobileWidth) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
