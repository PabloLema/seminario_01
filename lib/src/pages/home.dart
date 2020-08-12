import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text('Home Page')),
        body: _body(),
        floatingActionButton: _fabButtons());
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Contador:'),
          Text('Resultados: $_contador'),
        ],
      ),
    );
    // return new Center(
    //   child: new Text('Home Page'),
    // );
  }

  Widget _fabButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: _aumentar,
          child: Icon(Icons.add),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          onPressed: _disminuir,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          onPressed: _resetear,
          child: FaIcon(FontAwesomeIcons.sync),
        ),
      ],
    );
  }

  void _aumentar() {
    setState(() {
      _contador++;
    });
  }

  void _disminuir() {
    setState(() => _contador--);
  }

  void _resetear() {
    setState(() => _contador = 0);
  }
}
