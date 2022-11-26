import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';
import '../widgets/confirm_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.title});
  final String title;
  static const String id = 'WelcomeScreen';

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
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Material(
                        color: ConstColors.ccActionAreaM.shade900,
                        borderRadius: BorderRadius.circular(5),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: Text(
                            'ENTRAR',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: ConstColors.ccBackgroundM.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Material(
                        color: ConstColors.ccActionAreaM.shade900,
                        borderRadius: BorderRadius.circular(5),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: Text(
                            'CADASTRAR',
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                color: ConstColors.ccBackgroundM.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
