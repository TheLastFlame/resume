import 'package:flutter/material.dart';
import 'package:resume/constants.dart';
import 'package:resume/pages/editor/widgets/editor_bottombar.dart';

import 'package:mobx/mobx.dart';
import 'package:resume/pages/profile/widgets/personal_data.dart';
part '../../../gen/pages/editor/widgets/editor_list.g.dart';

class EditorController = _EditorControllerBase with _$EditorController;

abstract class _EditorControllerBase with Store {
  final PageController pageController = PageController();

  @observable
  int pageIndex = 0;

  @action
  void setPageIndex(int index) {
    pageIndex = index;
    pageController.animateToPage(
      index,
      duration: Durations.short4,
      curve: Curves.ease,
    );
  }
}

class EditorList extends StatelessWidget {
  const EditorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            // ListView(
            //   padding: const EdgeInsets.all(appPadding).add(
            //     const EdgeInsets.only(top: 100 + appPadding * 5),
            //   ),
            //   children: [],
            // ),
            const PersonalData(),
            ListView(
              padding: const EdgeInsets.all(appPadding).add(
                const EdgeInsets.only(top: 100 + appPadding * 5),
              ),
              children: [],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appPadding,
              vertical: appPadding + MediaQuery.paddingOf(context).bottom,
            ),
            child: const EditorBottomBar(),
          ),
        ),
      ],
    );
  }
}
