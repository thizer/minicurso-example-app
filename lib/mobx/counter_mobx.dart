import 'package:mobx/mobx.dart';

class CounterMobx {
  CounterMobx() {
    increment = Action(_increment);
  }

  Observable _counter = Observable(0);

  Action increment;

  int get value => _counter.value;

  set setval(int val) {
    _counter.value = val;
  }

  _increment() {
    _counter.value++;
  }
}
