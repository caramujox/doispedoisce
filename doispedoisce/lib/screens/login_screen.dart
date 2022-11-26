import 'package:doispedoisce/widgets/app_text_input.dart';
import 'package:doispedoisce/widgets/confirm_btn.dart';
import 'package:doispedoisce/widgets/social_media_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});
  final String title;
  static const String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text('Boas vindas!',
                  style: GoogleFonts.lato(
                      fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text('Faça o login e começe a organizar suas tarefas!',
                  style: GoogleFonts.lato(fontSize: 14)),
              const SizedBox(
                height: 56,
              ),
              AppTextInput(
                  hintText: 'E-mail',
                  textInputType: TextInputType.emailAddress,
                  isHidden: false),
              const SizedBox(
                height: 12,
              ),
              AppTextInput(
                  hintText: 'Senha',
                  textInputType: TextInputType.text,
                  isHidden: true),
              const SizedBox(
                height: 12,
              ),
              ConfirmBtn(btnText: 'LOGIN', onPressed: () {}),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaBtn(
                      icon: FontAwesomeIcons.facebook,
                      btnText: 'FACEBOOK',
                      onPressed: () {},
                      mainColor: ConstColors.ccFacebook,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Spacer(),
                    SocialMediaBtn(
                      icon: FontAwesomeIcons.google,
                      btnText: 'GOOGLE',
                      onPressed: () {},
                      mainColor: ConstColors.ccGmail,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Spacer(),
                    SocialMediaBtn(
                      icon: FontAwesomeIcons.twitter,
                      btnText: 'TWITTER',
                      onPressed: () {},
                      mainColor: ConstColors.ccTwitter,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  print("vai cadastro");
                },
                child: Text('Ainda não tem uma conta? Cadastre-se',
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
