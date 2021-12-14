import 'package:mobx/mobx.dart';
part 'store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  dynamic jsonUsuarios;

  @observable
  dynamic jsonProdutos;

  @observable
  dynamic jsonCompras;

  @observable
  bool visibilidadeUsuarios = false;

  @observable
  bool visibilidadeProdutos = false;

  @observable
  bool visibilidadeCompras = false;

  @observable
  String usuarioSelec = '';

  @observable
  String produtoSelec = '';

  @action
  void setJsonUsuarios(_value) => jsonUsuarios = _value;

  @action
  void setJsonProdutos(_value) => jsonProdutos = _value;

  @action
  void setJsonCompras(_value) => jsonCompras = _value;

  @action
  void setVisibilidadeUsuarios(_value) => visibilidadeUsuarios = _value;

  @action
  void setVisibilidadeProdutos(_value) => visibilidadeProdutos = _value;

  @action
  void setVisibilidadeCompras(_value) => visibilidadeCompras = _value;

  @action
  void setUsuarioSelec(_value) => usuarioSelec = _value;

  @action
  void setProdutoSelec(_value) => produtoSelec = _value;
}
