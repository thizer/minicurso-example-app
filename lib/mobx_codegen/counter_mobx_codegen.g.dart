// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_mobx_codegen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterMobxCodegen on CounterMobxCodegenBase, Store {
  final _$counterAtom = Atom(name: 'CounterMobxCodegenBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$CounterMobxCodegenBaseActionController =
      ActionController(name: 'CounterMobxCodegenBase');

  @override
  void increment() {
    final _$actionInfo = _$CounterMobxCodegenBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$CounterMobxCodegenBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$CounterMobxCodegenBaseActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$CounterMobxCodegenBaseActionController.endAction(_$actionInfo);
    }
  }
}
