import 'package:flutter/material.dart';
import 'package:resume/common/pill_appbar.dart';
import 'package:resume/common/pill_tabbar.dart';
import 'package:resume/constants.dart';
import 'package:resume/pages/editor/widgets/editor_list.dart';

import 'package:share_plus/share_plus.dart';

class EditorPortait extends StatelessWidget {
  EditorPortait({super.key});

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
              EditorList(),
              Placeholder(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: appPadding, horizontal: appPadding),
                child: PillAppBar(
                  centerTitle: true,
                  name: 'Создание резюме',
                  borderRadius: appBorderRadius,
                  profileHeight: 60,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: appPadding),
                      child: IconButton(
                        onPressed: () {
                          Share.share(
                              'check out my website https://example.com',
                              subject: 'Look what I made!');
                        },
                        icon: const Icon(Icons.share),
                      ),
                    ),
                  ],
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
                    PillTab(title: 'Редактор'),
                    PillTab(title: 'Предпросмотр'),
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
