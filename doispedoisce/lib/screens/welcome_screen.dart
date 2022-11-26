import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              height: 16,
            ),
            Container(
              width: 260,
              height: 260,
              decoration: new BoxDecoration(
                  color: ConstColors.ccActionAreaM.shade900,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: ConstColors.ccActionAreaM.shade900,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: new BoxDecoration(
                          color: ConstColors.ccPersonalTaskM.shade100,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text('Planeje',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ConstColors.ccBackgroundM.shade900)),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                              color: ConstColors.ccPersonalTaskM.shade100,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Text('Conquiste',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: ConstColors.ccBackgroundM.shade900)),
                          ),
                        ),
                        Spacer(),
                        FaIcon(FontAwesomeIcons.repeat,
                            color: ConstColors.ccFinancialTaskM.shade900),
                        Spacer(),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                              color: ConstColors.ccPersonalTaskM.shade100,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Text('Priorize',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: ConstColors.ccBackgroundM.shade900)),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: new BoxDecoration(
                          color: ConstColors.ccPersonalTaskM.shade100,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text('Conduza',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: ConstColors.ccBackgroundM.shade900)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
