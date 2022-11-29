import 'package:doispedoisce/util/const_colors.dart';
import 'package:doispedoisce/widgets/day_show_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../model/task_model.dart';
import 'day_pick_btn.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Material(
        type: MaterialType.card,
        elevation: 4,
        borderRadius: BorderRadius.circular(4),
        color: ConstColors.ccActionAreaM.shade900,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: ConstColors.ccFinancialTaskM.shade900, width: 2))),
          child: Row(children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.pen,
                        color: ConstColors.ccBackgroundM.shade900,
                        size: 16,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.gear,
                        color: ConstColors.ccBackgroundM.shade900,
                        size: 16,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {},
                      child: FaIcon(
                        FontAwesomeIcons.trash,
                        color: ConstColors.ccBackgroundM.shade900,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "< ${task.name} >",
                    style: GoogleFonts.lato(
                        color: ConstColors.ccBackgroundM.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${DateFormat('d/M/y').format(task.dueDate)}",
                    style: GoogleFonts.lato(
                        color: ConstColors.ccBackgroundM.shade800,
                        fontSize: 12),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DayShowItem(
                          dayName: 'S',
                          isScheduled: task.schedule.elementAt(0)),
                      DayShowItem(
                          dayName: 'T',
                          isScheduled: task.schedule.elementAt(1)),
                      DayShowItem(
                          dayName: 'Q',
                          isScheduled: task.schedule.elementAt(2)),
                      DayShowItem(
                          dayName: 'Q',
                          isScheduled: task.schedule.elementAt(3)),
                      DayShowItem(
                          dayName: 'S',
                          isScheduled: task.schedule.elementAt(4)),
                      DayShowItem(
                          dayName: 'S',
                          isScheduled: task.schedule.elementAt(5)),
                      DayShowItem(
                          dayName: 'D',
                          isScheduled: task.schedule.elementAt(6)),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: 80,
                    width: 104,
                    child: Center(
                      child: Text(
                        'COMPLETAR',
                        style: GoogleFonts.lato(
                            color: ConstColors.ccBackgroundM.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
