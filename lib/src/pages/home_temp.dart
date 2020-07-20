import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes_Temp"),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for(var item in opciones){
      lista..add(ListTile(title: Text(item),))
           ..add(Divider());

    }
    return lista;
  }

  List<Widget> _crearItemsCorto(){
    return opciones.map((e) {
      return Column(
        children: <Widget>[
          ListTile(
              title: Text(e),
            subtitle: Text("Subtitulo"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}//Fin Clase StateLess
