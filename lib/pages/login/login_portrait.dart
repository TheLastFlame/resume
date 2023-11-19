import 'package:balanced_text/balanced_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_yandex/flutter_login_yandex.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, forceMaterialTransparency: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/svg/app_icon.svg",
            width: MediaQuery.sizeOf(context).width,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onBackground,
              BlendMode.srcIn,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BalancedText(
              "Для вашего удобства вы можете войти через Яндекс или Google",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(
            width: 350,
            height: appPadding * 6,
            child: Divider(),
          ),
          Expanded(
            // flex: 3,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(
                      title: "Яндекс ID",
                      onTap: signInYandex,
                      borderRadius: BorderRadius.circular(appBorderRadius),
                      width: 150,
                      buttonColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      contentColor:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: appPadding * 2),
                    SocialLoginButton(
                      title: "Google",
                      onTap: signInGoogle,
                      borderRadius: BorderRadius.circular(appBorderRadius),
                      width: 150,
                      buttonColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      contentColor:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 350,
                  height: appPadding * 6,
                  child: Divider(),
                ),
                SizedBox(
                  width: 334,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: Nav.goHome,
                      child: Text('Продолжить без входа'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void signInYandex() async {
    Map<Object?, Object?>? response;
    try {
      response = await _loginYandexPlugin.signIn();
    } catch (ex) {}

    if (response == null) return;

    // String token;
    // if (response['token'] != null) {
    //   token = response['token'] as String;
    // } else {
    //   token = response['error'] as String;
    // }

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
