// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_mobx_codegen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoMobxCodegen on TodoMobxCodegenBase, Store {
  final _$contentAtom = Atom(name: 'TodoMobxCodegenBase.content');

  @override
  ObservableList<dynamic> get content {
    _$contentAtom.context.enforceReadPolicy(_$contentAtom);
    _$contentAtom.reportObserved();
    return super.content;
  }

  @override
  set content(ObservableList<dynamic> value) {
    _$contentAtom.context.conditionallyRunInAction(() {
      super.content = value;
      _$contentAtom.reportChanged();
    }, _$contentAtom, name: '${_$contentAtom.name}_set');
  }

  final _$TodoMobxCodegenBaseActionController =
      ActionController(name: 'TodoMobxCodegenBase');

  @override
  dynamic addItem() {
    final _$actionInfo = _$TodoMobxCodegenBaseActionController.startAction();
    try {
      return super.addItem();
    } finally {
      _$TodoMobxCodegenBaseActionController.endAction(_$actionInfo);
    }
  }
}
