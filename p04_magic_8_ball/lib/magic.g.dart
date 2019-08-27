// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$Magic on _Magic, Store {
  final _$valueAtom = Atom(name: '_Magic.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_MagicActionController = ActionController(name: '_Magic');

  @override
  void shakeBall() {
    final _$actionInfo = _$_MagicActionController.startAction();
    try {
      return super.shakeBall();
    } finally {
      _$_MagicActionController.endAction(_$actionInfo);
    }
  }
}
