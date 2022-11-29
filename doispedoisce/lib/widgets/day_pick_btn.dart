import 'package:doispedoisce/widgets/day_show_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class DayPickBtn extends StatefulWidget {
  const DayPickBtn({super.key, required this.dayName});
  final String dayName;

  @override
  State<DayPickBtn> createState() => _DayPickBtnState();
}

class _DayPickBtnState extends State<DayPickBtn> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: DayShowItem(dayName: widget.dayName, isScheduled: isSelected),
    );
    ;
  }
}
