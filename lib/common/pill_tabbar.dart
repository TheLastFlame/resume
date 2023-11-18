import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:mobx/mobx.dart';
part '../gen/common/pill_tabbar.g.dart';

class PillTabBarController = _PillTabBarControllerBase
    with _$PillTabBarController;

abstract class _PillTabBarControllerBase with Store {
  _PillTabBarControllerBase(
      {required this.pageViewController, this.totalTabCount = 2}) {
    pageViewController.addListener(() {
      if (pageViewController.page != null) {
        currentPillPosition = pageViewController.page ?? 0;
      }
    });
  }
  final int totalTabCount;

  final PageController pageViewController;

  @observable
  double currentPillPosition = 0;

  @action
  void changeTab(int index) => pageViewController.animateToPage(
        index,
        duration: Durations.short4,
        curve: Curves.ease,
      );
}

class PillTabBar extends StatelessWidget {
  const PillTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.borderRadius = 20,
    required this.tabHeight,
  });

  final PillTabBarController controller;
  final double borderRadius;
  final List<PillTab> tabs;
  final double tabHeight;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constains) => Stack(
          children: [
            SizedBox(
              height: tabHeight,
              child: Card(
                elevation: 3,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                child: Row(
                  children: tabs
                      .asMap()
                      .entries
                      .map(
                        (tab) => Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () => controller.changeTab(tab.key),
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: tab.value,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Observer(
              builder: (_) => AnimatedPositioned(
                duration: Durations.short2,
                curve: Curves.ease,
                left: (constains.maxWidth / controller.totalTabCount) *
                    controller.currentPillPosition,
                child: SizedBox(
                  height: tabHeight,
                  width: constains.maxWidth / controller.totalTabCount,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
}

class PillTab extends StatelessWidget {
  const PillTab({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
