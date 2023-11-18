import 'package:balanced_text/balanced_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_yandex/flutter_login_yandex.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';
import 'package:resume/constants.dart';
import 'package:resume/logger.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/pages/login/widgets/social_login_button.dart';

class LoginPortrait extends StatelessWidget {
  LoginPortrait({super.key});

  final _loginYandexPlugin = FlutterLoginYandex();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SvgPicture.asset(
                "assets/svg/app_icon.svg",
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BalancedText(
                        "Для вашего удобства вы можете войти через Яндкекс или Google",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Divider(),
                      SocialLoginButton(
                        title: "Войти с помошью Яндекс Id",
                        onTap: signInYandex,
                        borderRadius: BorderRadius.circular(appBorderRadius),
                        width: 250,
                        buttonColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        contentColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(height: 15),
                      SocialLoginButton(
                        title: "Войти с помошью Google",
                        onTap: signInGoogle,
                        borderRadius: BorderRadius.circular(appBorderRadius),
                        width: 250,
                        buttonColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        contentColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(
                        width: 250,
                        height: 20,
                        child: Divider(),
                      ),
                      SocialLoginButton(
                        title: "Продолжить без входа",
                        onTap: Nav.goHome,
                        borderRadius: BorderRadius.circular(appBorderRadius),
                        width: 250,
                        buttonColor:
                            Theme.of(context).colorScheme.secondaryContainer,
                        contentColor:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void signInYandex() async {
    Map<Object?, Object?>? response;
    try {
      response = await _loginYandexPlugin.signIn();
    } catch (ex) {}

    if (response == null) return;

    String token;
    if (response['token'] != null) {
      token = response['token'] as String;
    } else {
      token = response['error'] as String;
    }

    // authController.getInfo(_token);
  }

  void signInGoogle() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      logger.e(error);
    }
  }
}
