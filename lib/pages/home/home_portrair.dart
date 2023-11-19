import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resume/constants.dart';
import 'package:resume/navigation/router_delegate.dart';
import 'package:resume/common/pill_tabbar.dart';
import 'package:resume/common/pill_appbar.dart';
import 'package:resume/pages/home/widgets/templates_grid.dart';
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
            children: const [
              TemplatesGrid(),
              Placeholder(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding),
                child: PillAppBar(
                  name: '${pService.name} ${pService.surname}',
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(appPadding),
                      child: InkResponse(
                        radius: 25,
                        onTap: () => Nav.pushProfile(),
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondaryContainer,
                          foregroundColor: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          child: const Icon(Icons.person),
                        ),
                      ),
                    ),
                  ],
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
