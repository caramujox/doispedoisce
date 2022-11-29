import 'package:doispedoisce/screens/home_screen.dart';
import 'package:doispedoisce/widgets/app_text_input.dart';
import 'package:doispedoisce/widgets/confirm_btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required this.title});
  final String title;
  static const String id = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cadastre-se',
                  style: GoogleFonts.lato(
                      fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text('Comece agora a mapear seus objetivos!',
                  style: GoogleFonts.lato(fontSize: 14)),
              const SizedBox(
                height: 72,
              ),
              AppTextInput(
                  controller: emailController,
                  hintText: 'E-mail',
                  textInputType: TextInputType.emailAddress,
                  isHidden: false),
              const SizedBox(
                height: 16,
              ),
              AppTextInput(
                  controller: pwdController,
                  hintText: 'Senha',
                  textInputType: TextInputType.text,
                  isHidden: true),
              const SizedBox(
                height: 16,
              ),
              ConfirmBtn(
                  btnText: 'CADASTRAR',
                  onPressed: () {
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: pwdController.text);
                    print("Cadastrou com sucesso!");
                    Navigator.pushNamed(context, HomeScreen.id);
                  }),
              const SizedBox(
                height: 56,
              ),
              InkWell(
                onTap: () {
                  print("volta login");
                },
                child: Text('Já tem cadastro? Faça o login',
                    style: GoogleFonts.lato(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
