// ignore_for_file: prefer_const_constructors

import 'package:doispedoisce/util/const_colors.dart';
import 'package:doispedoisce/widgets/task_list_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/task_model.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key, required this.title});
  final String title;
  static const String id = 'LoginScreen';

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  var taskList = <Task>[];

  Task task1 = Task(
      'Teste',
      DateTime(2022, 11, 23),
      [
        true,
        true,
        true,
        true,
        true,
        true,
        true,
      ],
      TaskPurpose.personal);
  Task task2 = Task(
      'Teste',
      DateTime(2022, 11, 23),
      [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
      ],
      TaskPurpose.personal);
  Task task3 = Task(
      'Teste',
      DateTime(2022, 11, 23),
      [
        true,
        false,
        true,
        false,
        true,
        true,
        true,
      ],
      TaskPurpose.personal);
  Task task4 = Task(
      'Teste',
      DateTime(2022, 11, 23),
      [
        true,
        false,
        true,
        false,
        true,
        true,
        true,
      ],
      TaskPurpose.personal);

  @override
  void initState() {
    super.initState();

    taskList.add(task1);
    taskList.add(task2);
    taskList.add(task3);
    taskList.add(task4);
    taskList.add(task4);
    taskList.add(task4);
    taskList.add(task4);
    taskList.add(task4);
    taskList.add(task4);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Minhas Metas',
              style:
                  GoogleFonts.lato(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text('Priorize, remaneje e conclua o progresso da sua jornada!',
              style: GoogleFonts.lato(fontSize: 12)),
          const SizedBox(
            height: 24,
          ),
          Flexible(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(
                height: 8,
              ),
              itemCount: taskList.length,
              itemBuilder: (_, index) {
                var task = taskList[index];
                return TaskListItem(task: task);
              },
            ),
          ),
          SizedBox(
            height: 16,
          )
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstColors.ccActionAreaM.shade800,
        foregroundColor: ConstColors.ccActionAreaM.shade900,
        disabledElevation: 0,
        onPressed: () {},
        child: FaIcon(FontAwesomeIcons.plus,
            color: ConstColors.ccBackgroundM.shade800),
      ),
    );
  }
}
