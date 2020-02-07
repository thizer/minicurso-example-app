import 'package:mobx/mobx.dart';

class CounterMobx {
  CounterMobx() {
    increment = Action(_increment);
    decrement = Action(_decrement);
  }

  Observable _counter = Observable(0);

  Action increment;
  Action decrement;

  int get value => _counter.value;

  set setval(int val) {
    _counter.value = val;
  }

  _increment() {
    _counter.value++;
  }

  _decrement() {
    _counter.value--;
  }
}
