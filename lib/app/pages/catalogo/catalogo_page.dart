import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_provider/app/pages/carrinho_compras/carrinho_compra_page.dart';
import 'package:store_provider/app/pages/catalogo/components/catalogo_header_component.dart';
import 'package:store_provider/app/pages/catalogo/components/produto_card_component.dart';
import 'package:store_provider/app/providers/carrinho_provider.dart';
import 'package:store_provider/app/providers/loja_provider.dart';

class CatalogoPage extends StatefulWidget {
  @override
  _CatalogoPageState createState() => _CatalogoPageState();
}

class _CatalogoPageState extends State<CatalogoPage> {
  @override
  Widget build(BuildContext context) {
    // Chamando a instancia de provider >> Loja provider
    
    LojaProvider _lojaProvider = Provider.of<LojaProvider>(context);
    CarrinhoProvider _carrinhoProvider = Provider.of<CarrinhoProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        actions: [
          Badge(
            badgeContent:
                Text("${_carrinhoProvider.listaProdutosCarrinho.length}"),
            position: BadgePosition.topEnd(),
            child: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarrinhoCompraPage()));
              },
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: Container(),
      body: Column(
        children: [
          CatalogoHeaderComponent(),
          Expanded(
            child: ListView.builder(
              itemCount: _lojaProvider.listaProdutos.length,
              itemBuilder: (context, index) {
                return ProdutoCardComponent(
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
