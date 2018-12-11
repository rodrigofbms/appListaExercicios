import 'package:flutter/material.dart';
import 'package:lista_exercicios/src/Exercicio/umExercicio-screen.dart';

List exercicios = new List();
ExercicioScreenState ExercicioState = new ExercicioScreenState();
class ExercicioScreen extends StatefulWidget {
  final posicao1;
  final nome1;
  const ExercicioScreen(this.posicao1, this.nome1);

  @override
  ExercicioScreenState createState() {
    return ExercicioState;
  }
}

  class ExercicioScreenState extends State<ExercicioScreen> {
    
  void initState() {
    exercicios = [
      Exercicio("Abdominal", context, 0),
      Exercicio("Cadeira Flexora", context, 1),
    ];
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
    body: Center(
     child: SingleChildScrollView(
       padding: EdgeInsets.all(10.0),
        child: Column(
        children: <Widget>[
          
        ],
      ),
     ),
    ),
    );
  }

  Widget Exercicio(String nome, context, pos) {
    return MaterialButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      padding: new EdgeInsets.only(top: 15),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return new UmExercicioScreen(pos, nome);
        }));
      },
    );
  }
}