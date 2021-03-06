import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );

  }

  List<Widget>_listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element["texto"]),
        leading: getIcon(element["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: (){
          /*final route = MaterialPageRoute(
              builder: (context){
                return AlertPage();
              }
          );
          Navigator.push(context, route);*/
          Navigator.pushNamed(context, element["ruta"]);
        },
      );
      options..add(widgetTemp)
              ..add(Divider());
    });
    return options;
  }
}
