import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/gen/i18n/strings.g.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/common/pill_appbar.dart';
import 'package:resume/common/pill_tabbar.dart';
import 'package:resume/pages/profile/widgets/contact_data.dart';
import 'package:resume/pages/profile/widgets/personal_data.dart';

class ProfilePortrait extends StatelessWidget {
  ProfilePortrait({super.key});

  final pageViewController = PageController();
  late final tabBarController =
      PillTabBarController(pageViewController: pageViewController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, forceMaterialTransparency: true),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            onPageChanged: (index) => tabBarController.changeTab(index),
            children: const [
              PersonalData(),
              ContactData(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding),
                child: PillAppBar(
                  name: "Иван Иванович",
                  onAvatarTap: () => Nav.fuckGoBack(),
                  borderRadius: appBorderRadius,
                  profileHeight: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: appPadding * 4, vertical: appPadding),
                child: PillTabBar(
                  controller: tabBarController,
                  tabHeight: 40,
                  borderRadius: appBorderRadius,
                  tabs: [
                    PillTab(title: t.profile.personal_data),
                    PillTab(title: t.profile.contact_data),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
