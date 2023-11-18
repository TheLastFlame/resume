// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../common/pill_tabbar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PillTabBarController on _PillTabBarControllerBase, Store {
  late final _$currentPillPositionAtom = Atom(
      name: '_PillTabBarControllerBase.currentPillPosition', context: context);

  @override
  double get currentPillPosition {
    _$currentPillPositionAtom.reportRead();
    return super.currentPillPosition;
  }

  @override
  set currentPillPosition(double value) {
    _$currentPillPositionAtom.reportWrite(value, super.currentPillPosition, () {
      super.currentPillPosition = value;
    });
  }

  late final _$_PillTabBarControllerBaseActionController =
      ActionController(name: '_PillTabBarControllerBase', context: context);

  @override
  void changeTab(int index) {
    final _$actionInfo = _$_PillTabBarControllerBaseActionController
        .startAction(name: '_PillTabBarControllerBase.changeTab');
    try {
      return super.changeTab(index);
    } finally {
      _$_PillTabBarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPillPosition: ${currentPillPosition}
    ''';
  }
}
