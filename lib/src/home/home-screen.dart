import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: new AppBar(
        title: new Text("Lista de exercícios"),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          botaoExercicio("Lista de exercicios 1",context,context),
          botaoExercicio("Lista de exercicios 2",context,context),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          //TODO: tela add
        },
      ),
    );
  }

  Widget botaoExercicio(String nome,context,tela) {
    return MaterialButton(
      padding: new EdgeInsets.all(0.0),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return tela;
        }));
      },
          child: new Container(
        width: 200,
        height: 70,
        child: new Text(nome),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
