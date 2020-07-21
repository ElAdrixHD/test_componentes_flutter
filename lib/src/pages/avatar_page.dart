import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AvatarPage"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fc.ndtvimg.com%2F2019-04%2F0eq5hpa_elon-musk-reuters-650_625x300_12_April_19.jpg&f=1&nofb=1"),
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpepnewz.com%2Fwp-content%2Fuploads%2Frtx3c49k-e1503288228255.jpg&f=1&nofb=1"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}