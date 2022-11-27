// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doispedoisce/util/const_colors.dart';
import 'package:doispedoisce/widgets/confirm_btn.dart';
import 'package:doispedoisce/widgets/homescreen_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  static const String id = 'LoginScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          maintainBottomViewPadding: true,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                minRadius: 24,
                maxRadius: 40,
                backgroundColor: ConstColors.ccActionAreaM.shade900,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Olá, Usuário!',
                  style: GoogleFonts.lato(
                      fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text('Lembre-se: 1% de progresso ainda é um progresso!',
                  style: GoogleFonts.lato(fontSize: 12)),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  HomeScreenBtn(btnText: 'Histórico', onPressed: () {}),
                  SizedBox(
                    width: 64,
                  ),
                  HomeScreenBtn(btnText: 'Minhas Metas', onPressed: () {})
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: HeatMap(
                  datasets: {
                    DateTime(2022, 11, 23): 3,
                    DateTime(2022, 11, 24): 7,
                    DateTime(2022, 11, 25): 10,
                    DateTime(2022, 11, 26): 13,
                    DateTime(2022, 11, 27): 1,
                  },
                  colorMode: ColorMode.opacity,
                  showText: false,
                  scrollable: true,
                  colorsets: {
                    1: Colors.red,
                    3: Colors.orange,
                    5: Colors.yellow,
                    7: Colors.green,
                    9: Colors.blue,
                    11: Colors.indigo,
                    13: Colors.purple,
                  },
                  onClick: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(value.toString())));
                  },
                ),
              )
            ]),
          )),
    );
  }
}
