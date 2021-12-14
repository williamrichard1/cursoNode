// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$jsonUsuariosAtom = Atom(name: '_HomeStore.jsonUsuarios');

  @override
  dynamic get jsonUsuarios {
    _$jsonUsuariosAtom.reportRead();
    return super.jsonUsuarios;
  }

  @override
  set jsonUsuarios(dynamic value) {
    _$jsonUsuariosAtom.reportWrite(value, super.jsonUsuarios, () {
      super.jsonUsuarios = value;
    });
  }

  final _$jsonProdutosAtom = Atom(name: '_HomeStore.jsonProdutos');

  @override
  dynamic get jsonProdutos {
    _$jsonProdutosAtom.reportRead();
    return super.jsonProdutos;
  }

  @override
  set jsonProdutos(dynamic value) {
    _$jsonProdutosAtom.reportWrite(value, super.jsonProdutos, () {
      super.jsonProdutos = value;
    });
  }

  final _$jsonComprasAtom = Atom(name: '_HomeStore.jsonCompras');

  @override
  dynamic get jsonCompras {
    _$jsonComprasAtom.reportRead();
    return super.jsonCompras;
  }

  @override
  set jsonCompras(dynamic value) {
    _$jsonComprasAtom.reportWrite(value, super.jsonCompras, () {
      super.jsonCompras = value;
    });
  }

  final _$visibilidadeUsuariosAtom =
      Atom(name: '_HomeStore.visibilidadeUsuarios');

  @override
  bool get visibilidadeUsuarios {
    _$visibilidadeUsuariosAtom.reportRead();
    return super.visibilidadeUsuarios;
  }

  @override
  set visibilidadeUsuarios(bool value) {
    _$visibilidadeUsuariosAtom.reportWrite(value, super.visibilidadeUsuarios,
        () {
      super.visibilidadeUsuarios = value;
    });
  }

  final _$visibilidadeProdutosAtom =
      Atom(name: '_HomeStore.visibilidadeProdutos');

  @override
  bool get visibilidadeProdutos {
    _$visibilidadeProdutosAtom.reportRead();
    return super.visibilidadeProdutos;
  }

  @override
  set visibilidadeProdutos(bool value) {
    _$visibilidadeProdutosAtom.reportWrite(value, super.visibilidadeProdutos,
        () {
      super.visibilidadeProdutos = value;
    });
  }

  final _$visibilidadeComprasAtom =
      Atom(name: '_HomeStore.visibilidadeCompras');

  @override
  bool get visibilidadeCompras {
    _$visibilidadeComprasAtom.reportRead();
    return super.visibilidadeCompras;
  }

  @override
  set visibilidadeCompras(bool value) {
    _$visibilidadeComprasAtom.reportWrite(value, super.visibilidadeCompras, () {
      super.visibilidadeCompras = value;
    });
  }

  final _$usuarioSelecAtom = Atom(name: '_HomeStore.usuarioSelec');

  @override
  String get usuarioSelec {
    _$usuarioSelecAtom.reportRead();
    return super.usuarioSelec;
  }

  @override
  set usuarioSelec(String value) {
    _$usuarioSelecAtom.reportWrite(value, super.usuarioSelec, () {
      super.usuarioSelec = value;
    });
  }

  final _$produtoSelecAtom = Atom(name: '_HomeStore.produtoSelec');

  @override
  String get produtoSelec {
    _$produtoSelecAtom.reportRead();
    return super.produtoSelec;
  }

  @override
  set produtoSelec(String value) {
    _$produtoSelecAtom.reportWrite(value, super.produtoSelec, () {
      super.produtoSelec = value;
    });
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void setJsonUsuarios(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setJsonUsuarios');
    try {
      return super.setJsonUsuarios(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJsonProdutos(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setJsonProdutos');
    try {
      return super.setJsonProdutos(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJsonCompras(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setJsonCompras');
    try {
      return super.setJsonCompras(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisibilidadeUsuarios(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setVisibilidadeUsuarios');
    try {
      return super.setVisibilidadeUsuarios(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisibilidadeProdutos(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setVisibilidadeProdutos');
    try {
      return super.setVisibilidadeProdutos(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisibilidadeCompras(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setVisibilidadeCompras');
    try {
      return super.setVisibilidadeCompras(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsuarioSelec(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setUsuarioSelec');
    try {
      return super.setUsuarioSelec(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProdutoSelec(dynamic _value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setProdutoSelec');
    try {
      return super.setProdutoSelec(_value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jsonUsuarios: ${jsonUsuarios},
jsonProdutos: ${jsonProdutos},
jsonCompras: ${jsonCompras},
visibilidadeUsuarios: ${visibilidadeUsuarios},
visibilidadeProdutos: ${visibilidadeProdutos},
visibilidadeCompras: ${visibilidadeCompras},
usuarioSelec: ${usuarioSelec},
produtoSelec: ${produtoSelec}
    ''';
  }
}
