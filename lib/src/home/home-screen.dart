import 'package:flutter/material.dart';
import 'package:lista_exercicios/src/Exercicio/exercicio-screen.dart';
import 'package:lista_exercicios/src/add/add-screen.dart';

List listasExercicios = new List();
HomeScreenState homeState = new HomeScreenState();
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return homeState;
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    listasExercicios = [
      botaoExercicio("Lista de exercicios 1", context, 0),
      botaoExercicio("Lista de exercicios 2", context, 1),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: new AppBar(
        title: new Text("Lista de exercícios"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listasExercicios.length,
        itemBuilder: (BuildContext context, int index) {
          return listasExercicios[index];
        },
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return new AddScreen();
          }));
        },
      ),
    );
  }

  dynamic botaoExercicio(String nome, context, pos) {
    return MaterialButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      padding: new EdgeInsets.only(top: 15),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return new ExercicioScreenState(pos, nome);
        }));
      },
      child: new Container(
        width: double.infinity,
        margin: new EdgeInsets.only(left: 15, right: 15),
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
