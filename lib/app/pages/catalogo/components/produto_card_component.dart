import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_provider/app/models/produto_model.dart';
import 'package:store_provider/app/providers/carrinho_provider.dart';
import 'package:store_provider/app/providers/loja_provider.dart';

class ProdutoCardComponent extends StatelessWidget {
  final int index;

  const ProdutoCardComponent({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LojaProvider _lojaProvider = Provider.of<LojaProvider>(context);
    CarrinhoProvider _carrinhoProvider = Provider.of<CarrinhoProvider>(context);

    ProdutoModel produto = _lojaProvider.getProduto(index);

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
            child: InkWell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Add"),
              ),
              onTap: () {
                _carrinhoProvider.adicionarProduto(produto);
              },
            ),
          ),
        ],
      ),
    );
  }
}
