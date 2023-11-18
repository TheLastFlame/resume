import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/common/pill_tabbar.dart';
import 'package:resume/common/pill_appbar.dart';

class HomePortrait extends StatelessWidget {
  HomePortrait({super.key});

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
            children: [
              Center(
                child: Text(
                  "Шаблоны",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              Center(
                child: Text(
                  "Ваши",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding),
                child: PillAppBar(
                  name: "Иван Иванович",
                  onAvatarTap: () => Nav.pushProfile(),
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
