import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  bool increment() {
    if (value < 2) {
      value++;
      return true;
    } else {
      return false;
    }
  }

  @action
  bool decrement() {
    if (value > 0) {
      value--;
      return true;
    } else {
      return false;
    }
  }
}
