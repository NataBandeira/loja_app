import 'package:flutter/material.dart';
import 'package:store_provider/app/models/produto_model.dart';

class CarrinhoProvider extends ChangeNotifier {
  List<ProdutoModel> _listaCarrinho = [];

  List<ProdutoModel> get listaProdutosCarrinho => _listaCarrinho;

  // Adiciona novo produto a lista de produtos carrinho
  void adicionarProduto(ProdutoModel produto) {
    _listaCarrinho.add(produto);
    notifyListeners();
  }

  void removerProduto(ProdutoModel produto) {
    _listaCarrinho.remove(produto);
    notifyListeners();
  }

  double calcularValorTotal(){
    double valor = 0;
    _listaCarrinho.forEach((produto) { 
      valor += produto.preco;
    });
    return valor;
  }

  // Retorna uma model de lista de carrinho por posicao
  ProdutoModel getProdutoCarrinho(int index) {
    return _listaCarrinho[index];
  }
}
