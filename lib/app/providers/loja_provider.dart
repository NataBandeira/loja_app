import 'package:flutter/material.dart';
import 'package:store_provider/app/models/produto_model.dart';

class LojaProvider extends ChangeNotifier {

  List<ProdutoModel> _listaProdutos = [
    ProdutoModel(id: '1', cor: Colors.red, preco: 29.00),
    ProdutoModel(id: '2', cor: Colors.blue, preco: 29.00),
    ProdutoModel(id: '3', cor: Colors.purple, preco: 29.00),
    ProdutoModel(id: '4', cor: Colors.pink, preco: 29.00),
    ProdutoModel(id: '5', cor: Colors.yellow, preco: 29.00)
  ];

  // Retorna a lista de produtos
  List<ProdutoModel> get listaProdutos => _listaProdutos;

  // Retorna uma model de produto lista por posicao
  ProdutoModel getProduto(int index) {
    return _listaProdutos[index];
  }
}
