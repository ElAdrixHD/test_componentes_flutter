import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha = "";
  List<String> _poderes = ["Volar", "Rayos-X", "Fuerza", "Invisivilidad"];
  String _opcionSeleccionada = "Volar";

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _crearDropdown(),
            Divider(),
            _crearPersona(),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      maxLines: 1,
      maxLength: 50,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("${_nombre.length}/50"),
        hintText: "Nombre de la persona",
        labelText: "Nombre",
        helperText: "Solo es el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("Nombre: $_nombre"),
      subtitle: Text("Email: $_email"),
        trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      maxLength: 50,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("${_email.length}/50"),
        hintText: "Correo electronico",
        labelText: "Email",
        helperText: "Pon tu correo electronico",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      maxLines: 1,
      maxLength: 50,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("${_password.length}/50"),
        hintText: "Contraseña",
        labelText: "Password",
        helperText: "Pon tu contraseña",
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock_outline),
      ),
      onChanged: (valor){
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.datetime,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: "Fecha Nacimiento",
        labelText: "Fecha Nacimiento",
        helperText: "Pon tu fecha de nacimiento",
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      controller: _inputFieldDateController,
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: new DateTime(2020), lastDate:  new DateTime(2025), locale: Locale("es","ES"));
    if(picked != null){
      setState(() {
        _fecha = (picked.toString().split(RegExp(" ")))[0];
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionsDropdown(){
    List<DropdownMenuItem<String>> _lista = new List();
    _poderes.forEach((poder){
      _lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return _lista;
  }

  Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 20.0,),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOptionsDropdown(),
            icon: Icon(Icons.arrow_drop_up),
            onChanged: (value) {
              setState((){
                _opcionSeleccionada = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
