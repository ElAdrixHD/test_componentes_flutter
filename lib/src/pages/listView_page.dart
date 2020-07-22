import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<int> _listaNumeros = new List();
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;
  int _ultumoNumero = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addMoreImages();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_addMoreImages();
        _fetchdata();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Stack(
        children: <Widget>[
          _crearListView(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearListView() {
    return RefreshIndicator(
      onRefresh: () {
        return _obtenerPaginaUno();
      },
      child: ListView.builder(
        controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index){
            return FadeInImage(
              image: NetworkImage("https://picsum.photos/id/${_listaNumeros[index]}/800/600"),
              placeholder: AssetImage("assets/jar-loading.gif"),
            );
          },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  Future _obtenerPaginaUno(){
    new Timer(Duration(milliseconds: 1500), (){
      _listaNumeros.clear();
      _addMoreImages();
    });
    return Future.delayed(Duration(milliseconds: 1500));
  }

  void _addMoreImages(){
    for(int i = 1; i<10; i++){
      _listaNumeros.add(_ultumoNumero++);
    }
    setState(() {

    });
  }

  Future _fetchdata() async{
    _isLoading = true;
    setState(() {
    });

    new Timer(Duration(milliseconds: 1500), _respuestaHTTP);
  }

  void _respuestaHTTP() {
    _isLoading= false;
    _scrollController.animateTo(_scrollController.position.pixels+100, duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    setState(() {
    });
    _addMoreImages();
  }

  Widget _crearLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    }else{
      return Container();
    }
  }
}
