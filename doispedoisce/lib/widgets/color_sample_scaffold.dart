import 'package:flutter/material.dart';

import '../util/const_colors.dart';

class ColorSampleWidget extends StatelessWidget {
  const ColorSampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: ConstColors.ccActionAreaM.shade900,
          ),
          Container(
            height: 100,
            width: 100,
            color: ConstColors.ccHintTextM.shade900,
          ),
          Container(
            height: 100,
            width: 100,
            color: ConstColors.ccFinancialTaskM.shade900,
          ),
          Container(
            height: 100,
            width: 100,
            color: ConstColors.ccPersonalTaskM.shade900,
          ),
        ],
      ),
    );
  }
}
