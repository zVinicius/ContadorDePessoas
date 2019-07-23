//importando os widgets necessários ao metiral desing
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    //esse title é usado internamente, não vamos ver ele no app
    title: "Contador de Pessoas",
    //especificando a tela inicial do app
    home: Home()
  ));
}

//criando um widget statefull, esse widget vai ter seu estado
// modificado ao longo do uso do app
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();
}
class _HomeState extends State<Home>{

  int _peaple = 0;
  String _messege = "Pode Entrar !!!";

  void _changePeaple(int delta){
    setState((){
      _peaple += delta;
      if(_peaple > 10){
        _messege = "Chega, cabe mais não!";
      }else if(_peaple < 0){
        _messege = "Porra é essa, $_peaple ?!";
      }
      else{
        _messege = "Pode Entrar!!!";
      }
    });    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        //primeiro o widget que vai ficar por baixo
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        //Segundo item da stack
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pesoas: $_peaple",
              style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white) ),
                      onPressed: (){
                        _changePeaple(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: (){
                        _changePeaple(-1);
                      },
                    ),
                  )
                ],
              ),
              Text(
                _messege,
                style: TextStyle(
                  fontSize: 30.0, 
                  color: Colors.white, 
                  fontStyle: FontStyle.italic),
              )
          ],
        )
        
      ]
    );
  }

}