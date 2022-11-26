import 'package:doispedoisce/util/const_colors.dart';
import 'package:doispedoisce/widgets/color_sample_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});
  static const String id = 'SplashScreen';
  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '2P2C',
              style: GoogleFonts.lato(
                fontSize: 64,
                fontWeight: FontWeight.w600,
                letterSpacing: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Suas metas e planejamentos na palma da sua mão',
                style: GoogleFonts.lato(fontSize: 14)),
            SizedBox(
              height: 48,
            ),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Linear Progress Indicator',
              color: ConstColors.ccActionAreaM.shade900,
            ),
          ],
        ),
      )),
    );
  }
}
