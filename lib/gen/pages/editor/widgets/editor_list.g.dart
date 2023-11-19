// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../pages/editor/widgets/editor_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditorController on _EditorControllerBase, Store {
  late final _$pageIndexAtom =
      Atom(name: '_EditorControllerBase.pageIndex', context: context);

  @override
  int get pageIndex {
    _$pageIndexAtom.reportRead();
    return super.pageIndex;
  }

  @override
  set pageIndex(int value) {
    _$pageIndexAtom.reportWrite(value, super.pageIndex, () {
      super.pageIndex = value;
    });
  }

  late final _$_EditorControllerBaseActionController =
      ActionController(name: '_EditorControllerBase', context: context);

  @override
  void setPageIndex(int index) {
    final _$actionInfo = _$_EditorControllerBaseActionController.startAction(
        name: '_EditorControllerBase.setPageIndex');
    try {
      return super.setPageIndex(index);
    } finally {
      _$_EditorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageIndex: ${pageIndex}
    ''';
  }
}
