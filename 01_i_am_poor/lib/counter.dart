import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @computed
  String get image => "images/" + (value == 0 ? "coal.jpg" : "diamond.jpg");

  @computed
  String get title => "I Am " + (value == 0 ? "Poor" : "Rich");

  @action
  bool increment() {
    if (value < 1) {
      value++;
      return false;
    } else {
      return true;
    }
  }

  @action
  bool decrement() {
    if (value > 0) {
      value--;
      return false;
    } else {
      return true;
    }
  }
}
