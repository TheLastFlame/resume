import 'package:mobx/mobx.dart';
import 'package:resume/logger.dart';

part '../gen/controllers/pill_tabbar.g.dart';

class PillTabBarController = PillTabBarBase with _$PillTabBarController;

abstract class PillTabBarBase with Store {
  PillTabBarBase({required this.totalTabCount});

  final int totalTabCount;

  @observable
  int currentTab = 0;

  @action
  void changeTab(int newTab) {
    if (newTab < 0 || newTab > totalTabCount - 1) {
      logger.e("Try to cahnge tab to $newTab");
      return;
    }

    currentTab = newTab;
  }
}
