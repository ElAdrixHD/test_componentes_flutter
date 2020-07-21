
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text("Soy el titulo de esta tarjeta"),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec varius nulla, ac blandit est. Integer ante mi, lacinia et enim maximus, eleifend tincidunt mi. Cras vestibulum tincidunt molestie. Morbi vehicula facilisis orci vitae tincidunt. Etiam gravida semper ante, eu pellentesque erat commodo eget. Fusce fringilla justo sed eros congue, quis maximus velit convallis. Proin pretium a erat nec laoreet. Mauris id cursus odio, ornare ornare tellus."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: (){},
              ),
              SizedBox(width: 10.0,)
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      clipBehavior: Clip.antiAlias,
      elevation: 6.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F1105374%2Fpexels-photo-1105374.jpeg%3Fcs%3Dsrgb%26dl%3Ddawn-landscape-mountains-1105374.jpg%26fm%3Djpg&f=1&nofb=1"),
            placeholder: AssetImage("assets/jar-loading.gif"),
            height: 300.0,
            fit: BoxFit.cover,
            fadeInDuration: Duration(seconds: 2),
          ),
          /*Image(
            image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F1105374%2Fpexels-photo-1105374.jpeg%3Fcs%3Dsrgb%26dl%3Ddawn-landscape-mountains-1105374.jpg%26fm%3Djpg&f=1&nofb=1"),
          ),*/
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text("No tengo ni idea de que poner")),
        ],
      ),
    );
  }
}
