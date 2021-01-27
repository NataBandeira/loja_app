import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_provider/app/pages/catalogo/catalogo_page.dart';
import 'package:store_provider/app/providers/carrinho_provider.dart';
import 'package:store_provider/app/providers/loja_provider.dart';

void main() {
  runApp(
    // Adicionar Multiprovader
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LojaProvider()),
        ChangeNotifierProvider(create: (context) => CarrinhoProvider()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatalogoPage(),
    );
  }
}
