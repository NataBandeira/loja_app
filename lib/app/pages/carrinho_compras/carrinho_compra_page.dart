import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_provider/app/pages/carrinho_compras/components/carrinho_card_component.dart';
import 'package:store_provider/app/providers/carrinho_provider.dart';
import 'package:store_provider/app/providers/loja_provider.dart';

class CarrinhoCompraPage extends StatefulWidget {
  @override
  _CarrinhoCompraPageState createState() => _CarrinhoCompraPageState();
}

class _CarrinhoCompraPageState extends State<CarrinhoCompraPage> {
  @override
  Widget build(BuildContext context) {
    CarrinhoProvider _carrinhoProvider = Provider.of<CarrinhoProvider>(context);

    print(">> ${_carrinhoProvider.listaProdutosCarrinho.length}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de compras"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: Column(
        children: [
          // lista de produtos
          Expanded(
            child: ListView.builder(
              itemCount: _carrinhoProvider.listaProdutosCarrinho.length,
              itemBuilder: (context, index) {
                return CarrinhoCardComponent(index: index);
              },
            ),
          ),
          // Botão de compra
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Valor Total: ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "${_carrinhoProvider.calcularValorTotal()}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
