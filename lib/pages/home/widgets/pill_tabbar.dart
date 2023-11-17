import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:resume/controllers/pill_tabbar.dart';
import 'package:resume/logger.dart';

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
                elevation: 5,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
                child: Row(
                  children: tabs.map((tab) => Expanded(child: tab)).toList(),
                ),
              ),
            ),
            Observer(
              builder: (_) => AnimatedPositioned(
                duration: Durations.medium2,
                curve: Curves.ease,
                left: (constains.maxWidth / controller.totalTabCount) * controller.currentTab,
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
