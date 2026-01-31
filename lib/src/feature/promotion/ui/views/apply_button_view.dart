import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

class ApplyButtonView extends StatelessWidget {
  const ApplyButtonView({super.key});

  bool get isEnable {
    final now = DateTime.now();
    if (now.isBefore(DateTime(
          2026,
          1,
          16,
        )) &&
        now.isAfter(DateTime(2026, 3, 15))) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return ElevatedButton(
      onPressed: isEnable ? _launchUrl : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        disabledBackgroundColor: Colors.white,
        disabledForegroundColor: Colors.grey,
        padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 30 : 40,
            vertical: isMobile ? 16 : 20), // 반응형 패딩
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        elevation: 0,
      ),
      child: Text(
        isEnable ? '지금 지원하기' : "접수마감",
        style: TextStyle(
          fontSize: isMobile ? 16 : 20, // 반응형 폰트 크기
          fontWeight: FontWeight.bold,
        ),
      ).animate().shimmer(delay: 1500.ms, duration: isEnable ? 1000.ms : 0.ms),
    );
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(
        'https://docs.google.com/forms/d/e/1FAIpQLSdIXB0FxwJaQw6f-vpf5mYBxNMlJs2PII_0UQo31n3As2PgyA/viewform?usp=header');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
