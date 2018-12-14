import 'package:flutter/material.dart';
import 'package:lista_exercicios/src/add/add-exercicio-screen.dart';

List fazerExercicios = new List();
_ExercicioScreenState exercicioScreenState = new _ExercicioScreenState();
class ExercicioScreen extends StatefulWidget {
  @override
  _ExercicioScreenState createState(){
  return exercicioScreenState;
  } 


}

class _ExercicioScreenState extends State<ExercicioScreen> {
  
  @override
  void initState() { 
    fazerExercicios = [
      createCheckBoxList("Abdominal", context, 0),
      createCheckBoxList("Stiff", context, 1),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Exercícios"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: fazerExercicios.length,
          itemBuilder: (BuildContext context, int index) {
            return fazerExercicios[index];
          }),
          floatingActionButton: new FloatingActionButton(
            child: new Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return new AddExercicio();
              }));
            },
          ),
    );
  }

  Widget createCheckBoxList(String texto, context, pos) {
    return new Card(
      margin: EdgeInsets.all(10.0),
      child:Container(
        child: ListTile(
          title: new Text(texto, style: TextStyle(fontWeight: FontWeight.w500)),
        ),
      ),
      
    );
  }
}
