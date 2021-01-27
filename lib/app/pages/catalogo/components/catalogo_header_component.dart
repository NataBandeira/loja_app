import 'package:flutter/material.dart';

class CatalogoHeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue[900],
      child: Center(
        child: Text(
          "Catálogo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
