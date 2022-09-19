import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(title: "Contador de pessoas", 
    home: Home()));//Material App
}

class Home extends StatefulWidget{
  @override 
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  int _pessoa = 0;
  String _mensagem = "Pode entrar!";
  void _changePeople(int delta){
    setState(() {
      _pessoa += delta;
      if (_pessoa >= 20) {
      _mensagem = "Lotado, não pode entrar.";
      _pessoa = 20;
      }else if (_pessoa < 0 ){
        _mensagem = "Pode entrar!";
        _pessoa = 0;
      } else {
        _mensagem = "Pode entrar!";
      }
    });
  }

  Widget build(BuildContext contex){
  return Stack( 
    children: <Widget>[
      Image.asset( 
        "imagens/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
      ),
      Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text( 
            "Pessoas: $_pessoa",
            style: const TextStyle( 
              color: Colors.white,
              fontWeight: FontWeight.bold)
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(10.0),
            child: TextButton(
              child: const Text( 
                "+1",
                style: TextStyle(fontSize: 40.0, 
                    color: Colors.white),
              ),
              onPressed: (){
                 _changePeople(1);
              },
          )
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
            child: TextButton(
              child: const Text( 
                "-1",
                style: TextStyle(fontSize: 40.0, 
                    color: Colors.white),
              ),
              onPressed: (){
                _changePeople(-1);
              },
            )
        )
        ],
      )
    ],
  );
}

}



                  
               
            
          
        
      
  
  
  

