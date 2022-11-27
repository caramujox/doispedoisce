import 'package:doispedoisce/util/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../model/task_model.dart';

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
                    task.name,
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${task.schedule.contains(true) ? task.schedule.length : '-'}",
                    style: GoogleFonts.lato(
                        color: ConstColors.ccBackgroundM.shade800,
                        fontSize: 12),
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
