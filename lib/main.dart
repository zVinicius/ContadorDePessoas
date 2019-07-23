//importando os widgets necessários ao metiral desing
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    //esse title é usado internamente, não vamos ver ele no app
    title: "Contador de Pessoas",
    //especificando a tela inicial do app
    home: Stack(
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
              "Pesoas: 0",
              style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white) ),
                      onPressed: (){},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
              Text(
                "Pode Entra!!",
                style: TextStyle(
                  fontSize: 30.0, 
                  color: Colors.white, 
                  fontStyle: FontStyle.italic),
              )
          ],
        )
        
      ]
    )
  ));
}