// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doispedoisce/util/const_colors.dart';
import 'package:doispedoisce/widgets/app_text_input.dart';
import 'package:doispedoisce/widgets/confirm_btn.dart';
import 'package:doispedoisce/widgets/day_pick_btn.dart';
import 'package:doispedoisce/widgets/social_media_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key, required this.title});
  final String title;
  static const String id = 'CreateTaskScreen';

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  bool isScheduled = false;
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateInput.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nova Meta',
                style: GoogleFonts.lato(
                    fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 16,
            ),
            AppTextInput(
                hintText: 'Nova Meta',
                isHidden: false,
                textInputType: TextInputType.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Recorrente? ', style: GoogleFonts.lato(fontSize: 12)),
                Switch(
                  value: isScheduled,
                  activeColor: ConstColors.ccActionAreaM.shade900,
                  onChanged: (value) {
                    setState(() {
                      isScheduled = !isScheduled;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DayPickBtn(dayName: 'S'),
                DayPickBtn(dayName: 'T'),
                DayPickBtn(dayName: 'Q'),
                DayPickBtn(dayName: 'Q'),
                DayPickBtn(dayName: 'S'),
                DayPickBtn(dayName: 'S'),
                DayPickBtn(dayName: 'D'),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text('Selecione a data alvo para a sua tarefa:',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 24, top: 16, right: 16, left: 8),
              child: TextField(
                controller: dateInput,
                decoration: InputDecoration(
                    icon: Icon(FontAwesomeIcons.calendar),
                    labelText: "Escolha a data alvo"),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      builder: (context, child) {
                        return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: ConstColors.ccActionAreaM
                                    .shade600, // header background color
                                onPrimary: ConstColors.ccBackgroundM
                                    .shade500, // header text color
                                onSurface: ConstColors
                                    .ccActionAreaM.shade900, // body text color
                              ),
                            ),
                            child: child!);
                      },
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(pickedDate);
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate);
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  } else {}
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ConfirmBtn(btnText: 'CADASTRAR', onPressed: () {}),
          ],
        ),
      )),
    );
  }
}
