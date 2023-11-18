import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/controllers/pill_tabbar.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/pages/home/widgets/pill_tabbar.dart';
import 'package:resume/pages/home/widgets/pill_appbar.dart';

class HomePortrait extends StatelessWidget {
  HomePortrait({super.key});

  final PillTabBarController tabBarController =
      PillTabBarController(totalTabCount: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, forceMaterialTransparency: true),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => tabBarController.changeTab(index),
            children: [
              Center(
                  child: Text(
                "Шаблоны",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              )),
              Center(
                  child: Text(
                "Ваши",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary),
              )),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding / 2),
                child: PillAppBar(
                  name: "Иван Иванович",
                  onAvatarTap: () => Nav.pushProfile(),
                  borderRadius: appBorderRadius,
                  profileHeight: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
                child: PillTabBar(
                  controller: tabBarController,
                  tabHeight: 40,
                  borderRadius: appBorderRadius,
                  tabs: const [
                    PillTab(title: "Шаблоны"),
                    PillTab(title: "Ваши"),
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
