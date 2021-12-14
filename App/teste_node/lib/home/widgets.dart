import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teste_node/home/functions.dart';
import 'package:teste_node/home/store/store.dart';

class Widgets {
  BuildContext context;
  Widgets(this.context);

  Widget corpoHome() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _opcoesTela('Get Usuarios', 1),
            listaUsuarios(),
            _opcoesTela('Post Usuarios', 2),
            SizedBox(
              height: 20,
            ),
            _opcoesTela('Get Produtos', 3),
            listaProdutos(),
            _opcoesTela('Post Produtos', 4),
            SizedBox(
              height: 20,
            ),
            _opcoesTela('Get Compras', 5),
            listaCompras(),
            _opcoesTela('Post Compras', 6),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _opcoesTela(String titulo, tipo) {
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    return GestureDetector(
      onTap: () async {
        switch (tipo) {
          case 1:
            await Functions(context).getUser();
            homeStore.setVisibilidadeUsuarios(true);
            break;
          case 2:
            await Functions(context).postUser();
            break;
          case 3:
            await Functions(context).getProdutos();
            homeStore.setVisibilidadeProdutos(true);
            break;
          case 4:
            await Functions(context).postProdutos();
            break;
          case 5:
            await Functions(context).getCompras();
            homeStore.setVisibilidadeCompras(true);
            break;
          case 6:
            await Functions(context).postCompras();
            break;
          default:
            null;
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          elevation: 5,
          color: tipo == 6 ? Colors.green[100] : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(titulo),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listaUsuarios() {
    final homeStoreT = Provider.of<HomeStore>(context, listen: true);
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: homeStoreT.visibilidadeUsuarios,
                child: Column(
                  children: [
                    homeStoreT.jsonUsuarios != null
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: homeStoreT.jsonUsuarios.length,
                            itemBuilder: (_, int index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      homeStore.setUsuarioSelec(
                                          "${homeStoreT.jsonUsuarios[index]['_id']}");
                                      print(
                                          "USUARIO SELECIONADO>> ${homeStoreT.usuarioSelec}");
                                      homeStore.setVisibilidadeUsuarios(false);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                            "${homeStoreT.jsonUsuarios[index]['email']}"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                          )
                        : Container(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget listaProdutos() {
    final homeStoreT = Provider.of<HomeStore>(context, listen: true);
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: homeStoreT.visibilidadeProdutos,
                child: Column(
                  children: [
                    homeStoreT.jsonProdutos != null
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: homeStoreT.jsonProdutos.length,
                            itemBuilder: (_, int index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      homeStore.setProdutoSelec(
                                          "${homeStoreT.jsonProdutos[index]['_id']}");
                                      print(
                                          "PRODUTO SELECIONADO>> ${homeStoreT.produtoSelec}");
                                      homeStore.setVisibilidadeProdutos(false);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                            "${homeStoreT.jsonProdutos[index]['nome']}"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                          )
                        : Container(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget listaCompras() {
    final homeStoreT = Provider.of<HomeStore>(context, listen: true);
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: homeStoreT.visibilidadeCompras,
                child: Column(
                  children: [
                    homeStoreT.jsonCompras != null
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: homeStoreT.jsonCompras.length,
                            itemBuilder: (_, int index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      homeStore.setVisibilidadeCompras(false);
                                    },
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${homeStoreT.jsonCompras[index]['_id']}",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${homeStoreT.jsonCompras[index]['user_id']['email']}",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${homeStoreT.jsonCompras[index]['produto_id']['nome']}",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              );
                            },
                          )
                        : Container(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
