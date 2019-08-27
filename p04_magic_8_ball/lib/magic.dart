import 'dart:math';

import 'package:mobx/mobx.dart';

part "magic.g.dart";

class Magic = _Magic with _$Magic;

abstract class _Magic with Store {
  @observable
  int value = 1;

  static int _shakeBall() {
    return Random().nextInt(5) + 1;
  }

  @action
  void shakeBall() {
    value = _shakeBall();
  }
}
