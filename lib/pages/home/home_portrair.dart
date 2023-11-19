import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/common/pill_tabbar.dart';
import 'package:resume/common/pill_appbar.dart';
import 'package:resume/services/profile_service.dart';

class HomePortrait extends StatefulWidget {
  const HomePortrait({super.key});

  @override
  State<HomePortrait> createState() => _HomePortraitState();
}

class _HomePortraitState extends State<HomePortrait> {
  final pageViewController = PageController();

  late final tabBarController =
      PillTabBarController(pageViewController: pageViewController);

  @override
  Widget build(BuildContext context) {
    final pService = GetIt.I<ProfileService>();

    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, forceMaterialTransparency: true),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
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
                  "Сохранено",
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
                  name: '${pService.surname} ${pService.name}',
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
                    PillTab(title: "Сохранено"),
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
