// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Dice on _Dice, Store {
  final _$die1Atom = Atom(name: '_Dice.die1');

  @override
  int get die1 {
    _$die1Atom.context.enforceReadPolicy(_$die1Atom);
    _$die1Atom.reportObserved();
    return super.die1;
  }

  @override
  set die1(int value) {
    _$die1Atom.context.conditionallyRunInAction(() {
      super.die1 = value;
      _$die1Atom.reportChanged();
    }, _$die1Atom, name: '${_$die1Atom.name}_set');
  }

  final _$die2Atom = Atom(name: '_Dice.die2');

  @override
  int get die2 {
    _$die2Atom.context.enforceReadPolicy(_$die2Atom);
    _$die2Atom.reportObserved();
    return super.die2;
  }

  @override
  set die2(int value) {
    _$die2Atom.context.conditionallyRunInAction(() {
      super.die2 = value;
      _$die2Atom.reportChanged();
    }, _$die2Atom, name: '${_$die2Atom.name}_set');
  }

  final _$_DiceActionController = ActionController(name: '_Dice');

  @override
  void rollDie1() {
    final _$actionInfo = _$_DiceActionController.startAction();
    try {
      return super.rollDie1();
    } finally {
      _$_DiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollDie2() {
    final _$actionInfo = _$_DiceActionController.startAction();
    try {
      return super.rollDie2();
    } finally {
      _$_DiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollAll() {
    final _$actionInfo = _$_DiceActionController.startAction();
    try {
      return super.rollAll();
    } finally {
      _$_DiceActionController.endAction(_$actionInfo);
    }
  }
}
