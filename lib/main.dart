
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Componentes App",
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => AlertPage()
        );
      },
    );
  }
}