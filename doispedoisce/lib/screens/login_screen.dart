import 'package:doispedoisce/screens/home_screen.dart';
import 'package:doispedoisce/screens/register_screen.dart';
import 'package:doispedoisce/widgets/app_text_input.dart';
import 'package:doispedoisce/widgets/confirm_btn.dart';
import 'package:doispedoisce/widgets/social_media_btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../util/const_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});
  final String title;
  static const String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  controller: emailController,
                  hintText: 'E-mail',
                  textInputType: TextInputType.emailAddress,
                  isHidden: false),
              const SizedBox(
                height: 12,
              ),
              AppTextInput(
                  controller: pwdController,
                  hintText: 'Senha',
                  textInputType: TextInputType.text,
                  isHidden: true),
              const SizedBox(
                height: 12,
              ),
              ConfirmBtn(
                  btnText: 'LOGIN',
                  onPressed: () {
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: pwdController.text);
                    print('User is signed in!');
                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  }),
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
                      onPressed: () async {
                        // Trigger the sign-in flow
                        final LoginResult loginResult =
                            await FacebookAuth.instance.login();

                        // Create a credential from the access token
                        final OAuthCredential facebookAuthCredential =
                            FacebookAuthProvider.credential(
                                loginResult.accessToken!.token);

                        // Once signed in, return the UserCredential
                        await FirebaseAuth.instance
                            .signInWithCredential(facebookAuthCredential);

                        Navigator.pushReplacementNamed(context, HomeScreen.id);
                        // print('User is signed in!');
                        // Navigator.pushReplacementNamed(context, HomeScreen.id);
                      },
                      mainColor: ConstColors.ccFacebook,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: SocialMediaBtn(
                        icon: FontAwesomeIcons.google,
                        btnText: 'GOOGLE',
                        onPressed: () async {
                          final GoogleSignInAccount? googleUser =
                              await GoogleSignIn().signIn();

                          // Obtain the auth details from the request
                          final GoogleSignInAuthentication? googleAuth =
                              await googleUser?.authentication;

                          // Create a new credential
                          final credential = GoogleAuthProvider.credential(
                            accessToken: googleAuth?.accessToken,
                            idToken: googleAuth?.idToken,
                          );

                          // Once signed in, return the UserCredential
                          await FirebaseAuth.instance
                              .signInWithCredential(credential);
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.id);
                        },
                        mainColor: ConstColors.ccGmail,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: SocialMediaBtn(
                        icon: FontAwesomeIcons.twitter,
                        btnText: 'TWITTER',
                        onPressed: () async {
                          TwitterAuthProvider twitterAuthProvider =
                              TwitterAuthProvider();

                          if (kIsWeb) {
                            await FirebaseAuth.instance
                                .signInWithPopup(twitterAuthProvider);
                            Navigator.pushReplacementNamed(
                                context, HomeScreen.id);
                          } else {
                            await FirebaseAuth.instance
                                .signInWithProvider(twitterAuthProvider);
                            Navigator.pushReplacementNamed(
                                context, HomeScreen.id);
                          }
                        },
                        mainColor: ConstColors.ccTwitter,
                      ),
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
                  Navigator.pushReplacementNamed(context, RegisterScreen.id);
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
