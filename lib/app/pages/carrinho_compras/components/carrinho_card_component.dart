import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_provider/app/models/produto_model.dart';
import 'package:store_provider/app/providers/carrinho_provider.dart';

class CarrinhoCardComponent extends StatelessWidget {
  final int index;

  const CarrinhoCardComponent({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Chamei a referencia do provider
    CarrinhoProvider _carrinhoProvider = Provider.of<CarrinhoProvider>(context);
    // Peguei o produto de acordo com o index da lista de produtos de carrinho
    ProdutoModel produto = _carrinhoProvider.getProdutoCarrinho(index);

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 50,
            color: produto.cor,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("RS ${produto.preco}"),
          ),
          IconButton(icon: Icon(Icons.close), onPressed: (){
            _carrinhoProvider.removerProduto(produto);
          })
        ],
      ),
    );
  }
}
