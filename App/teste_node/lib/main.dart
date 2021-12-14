import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_node/home/page.dart';
import 'package:teste_node/home/store/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeStore>(
          create: (_) => HomeStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'App Curso Node'),
      ),
    );
  }
}
