import 'package:mobx/mobx.dart';

part 'counter_mobx_codegen.g.dart';

class CounterMobxCodegen = CounterMobxCodegenBase with _$CounterMobxCodegen;

abstract class CounterMobxCodegenBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }
}
