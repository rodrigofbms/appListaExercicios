import 'package:flutter/widgets.dart';

class Exercise extends StatelessWidget {
  String nome;
  bool state;

  String getNome(){
    return this.nome;
  }
  
  void setNome(String nome){
    this.nome = nome;
  }

  bool getState(){
    return this.state;
  }
  
  void setState(bool state){
    this.state = state;
  }
  
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
