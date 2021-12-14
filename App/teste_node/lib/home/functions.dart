import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:teste_node/home/store/store.dart';

class Functions {
  BuildContext context;
  Functions(this.context);

  final String _urlBanco = 'http://10.0.2.2:3000';

  Future<bool> verificaInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      print("NAO TEM INTERNET");
      return true;
    } else {
      print("TEM INTERNET");
      return false;
    }
  }

  Future getUser() async {
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    if (!(await verificaInternet())) {
      try {
        var request = await http.get(Uri.parse('$_urlBanco/users'));
        var jsonRequest = await json.decode(request.body);
        if (jsonRequest != null) {
          homeStore.setJsonUsuarios(jsonRequest);
          print("JSON USUARIOS >> ${homeStore.jsonUsuarios}");
          print("DEU CERTO!!!");
        } else {
          print("JSON TA VAZIO");
        }
      } catch (e) {
        print("ERRO GET USERS>> $e");
      }
    } else {
      print("SEM INTERNET");
    }
  }

  Future postUser() async {}

  Future getProdutos() async {
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    if (!(await verificaInternet())) {
      try {
        var request = await http.get(Uri.parse('$_urlBanco/produtos'));
        var jsonRequest = await json.decode(request.body);
        if (jsonRequest != null) {
          homeStore.setJsonProdutos(jsonRequest);
          print("JSON PRODUTOS >> ${homeStore.jsonProdutos}");
          print("DEU CERTO!!!");
        } else {
          print("JSON TA VAZIO");
        }
      } catch (e) {
        print("ERRO GET USERS>> $e");
      }
    } else {
      print("SEM INTERNET");
    }
  }

  Future postProdutos() async {
    if (!(await verificaInternet())) {
    } else {
      print("SEM INTERNET");
    }
  }

  Future getCompras() async {
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    if (!(await verificaInternet())) {
      try {
        var request = await http.get(Uri.parse('$_urlBanco/compras'));
        var jsonRequest = await json.decode(request.body);
        if (jsonRequest != null) {
          homeStore.setJsonCompras(jsonRequest);
          print("JSON COMPRAS >> ${homeStore.jsonCompras}");
          print("DEU CERTO!!!");
        } else {
          print("JSON TA VAZIO");
        }
      } catch (e) {
        print("ERRO GET USERS>> $e");
      }
    } else {
      print("SEM INTERNET");
    }
  }

  Future postCompras() async {
    final homeStore = Provider.of<HomeStore>(context, listen: false);
    if (!(await verificaInternet())) {
      try {
        var request =
            await http.post(Uri.parse('$_urlBanco/compras/create'), body: {
          "user_id": homeStore.usuarioSelec,
          "produto_id": homeStore.produtoSelec,
        });
        var jsonRequest = await json.decode(request.body);
        if (jsonRequest != null) {
          print("DEU CERTO O POST!!!");
          print(jsonRequest);
        } else {
          print("JSON TA VAZIO");
        }
      } catch (e) {
        print("ERRO GET USERS>> $e");
      }
    } else {
      print("SEM INTERNET");
    }
  }
}
