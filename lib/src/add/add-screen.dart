import 'package:flutter/material.dart';
import 'package:lista_exercicios/src/home/home-screen.dart';

class AddScreen extends StatefulWidget {
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final _nomeController = TextEditingController();
  final _subtituloController = TextEditingController();
  bool _editedList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Adicionar uma lista"),
        centerTitle: true,
      ),
      body: new Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: "Nome"),
                onChanged: (text) {
                  _editedList = true;
                },
                keyboardType: TextInputType.text,
              ),
              TextField(
                controller: _subtituloController,
                decoration: InputDecoration(labelText: "Qual é o treino ?"),
                onChanged: (text) {
                  _editedList = true;
                },
                keyboardType: TextInputType.text,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    padding: new EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: new CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: new Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    padding: new EdgeInsets.all(0.0),
                    onPressed: () {
                      homeState.setState(() {
                        listasExercicios.add(homeState.botaoExercicio(
                            _nomeController.text,
                            homeState.context,
                            listasExercicios.length));
                            Navigator.of(context).pop();
                      });
                      
                    },
                    child: new CircleAvatar(
                      backgroundColor: Colors.green,
                      child: new Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
