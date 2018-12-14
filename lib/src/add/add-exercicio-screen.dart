import 'package:flutter/material.dart';
import 'package:lista_exercicios/src/Exercicio/exercicio-screen.dart';

_AddExercicioState addExercicioState = new _AddExercicioState();
class AddExercicio extends StatefulWidget {

  @override
  _AddExercicioState createState() {
      return addExercicioState;
  }
}

class _AddExercicioState extends State<AddExercicio> {
  final _nomeExercicioController = TextEditingController();
  bool _editedText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Adicionando um novo exercício"),
        centerTitle: true,
      ),
      body: new Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nomeExercicioController,
                decoration: InputDecoration(labelText: "Exercício"),
                onChanged: (text) {
                  _editedText = true;
                },
                keyboardType: TextInputType.text,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: new CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        child: new Icon(Icons.close, color: Colors.black),
                      )),
                  MaterialButton(
                    onPressed: () {
                      exercicioScreenState.setState(() {
                        fazerExercicios.add(
                            exercicioScreenState.createCheckBoxList(
                                _nomeExercicioController.text,
                                exercicioScreenState.context,
                                fazerExercicios.length));
                                Navigator.of(context).pop();
                      });
                    },
                    child: new CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: new Icon(Icons.check, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
