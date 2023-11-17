// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../controllers/pill_tabbar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PillTabBarController on PillTabBarBase, Store {
  late final _$currentTabAtom =
      Atom(name: 'PillTabBarBase.currentTab', context: context);

  @override
  int get currentTab {
    _$currentTabAtom.reportRead();
    return super.currentTab;
  }

  @override
  set currentTab(int value) {
    _$currentTabAtom.reportWrite(value, super.currentTab, () {
      super.currentTab = value;
    });
  }

  late final _$PillTabBarBaseActionController =
      ActionController(name: 'PillTabBarBase', context: context);

  @override
  void changeTab(int newTab) {
    final _$actionInfo = _$PillTabBarBaseActionController.startAction(
        name: 'PillTabBarBase.changeTab');
    try {
      return super.changeTab(newTab);
    } finally {
      _$PillTabBarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTab: ${currentTab}
    ''';
  }
}
