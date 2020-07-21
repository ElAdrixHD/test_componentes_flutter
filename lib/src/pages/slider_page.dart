import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _bloqueo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: "Tamaño de la imagen",
      //divisions: 100,
      onChanged: (_bloqueo)? null:(double value) {
        setState((){
          _valorSlider = value;
        });
      },
      value: _valorSlider,
      min: 0,
      max: 500,
    );
  }

  Widget _crearImagen() {
    return Image(
      image :NetworkImage("https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fgetwallpapers.com%2Fwallpaper%2Ffull%2F3%2Ff%2F0%2F756854-gallade-wallpapers-2200x2030-for-phones.jpg&f=1&nofb=1"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    /* return Checkbox(
      value: _bloqueo,
      onChanged: (bool value) {
        setState(() {
          _bloqueo = value;
        });
      },
    );*/

    return CheckboxListTile(
      value: _bloqueo,
      onChanged: (bool value){
        setState(() {
          _bloqueo = value;
        });
      },
      title: Text("Bloquear Slider"),
    ) ;
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      value: _bloqueo,
      onChanged: (bool value){
        setState(() {
          _bloqueo = value;
        });
      },
      title: Text("Bloquear Slider"),
    );
  }
}
