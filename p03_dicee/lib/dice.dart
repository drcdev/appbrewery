import 'dart:math';

import 'package:mobx/mobx.dart';

part "dice.g.dart";

class Dice = _Dice with _$Dice;

abstract class _Dice with Store {
  @observable
  int die1 = rollDie();

  @observable
  int die2 = rollDie();

  static int rollDie() {
    return Random().nextInt(6) + 1;
  }

  @action
  void rollDie1() {
    die1 = rollDie();
  }

  @action
  void rollDie2() {
    die2 = rollDie();
  }

  @action
  void rollAll() {
    die1 = rollDie();
    die2 = rollDie();
  }
}
