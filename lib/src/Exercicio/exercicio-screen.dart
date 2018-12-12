import 'package:flutter/material.dart';

class ExercicioScreen extends StatefulWidget {
  _ExercicioScreenState createState() => _ExercicioScreenState();
}

class _ExercicioScreenState extends State<ExercicioScreen> {
bool checkBoxState1 = false;
bool checkBoxState2 = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Exercícios"),
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Text("Abdominal de 20 repetições"),
                  new Checkbox(
                    value: checkBoxState1,
                    onChanged: (bool e) => changeState1(),
                  ),
                ],
              ),
            ),
            new Card(
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Text("Elevação frontal com halteres de 10 repetições"),
                  new Checkbox(
                    value: checkBoxState2,
                    onChanged: (bool e) => changeState2(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeState1(){
setState(() {
  checkBoxState1 = !checkBoxState1;
});
}
 void changeState2(){
setState(() {
  checkBoxState2 = !checkBoxState2;
});
}
}



