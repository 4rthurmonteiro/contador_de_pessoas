import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      debugShowCheckedModeBanner: false,
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _number = 0;
  String _info = "Pode Entrar!";
  void checkNumber(){
    if(_number < 0 ){
        _info = 'Mundo Invertido';
    }

    if(_number >= 0 && _number <= 10){
      _info = "Pode Entrar!";
    }

    if(_number > 10){
      _info = 'Lotado!';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pessoas: $_number',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    onPressed: () {
                      setState(() {
                        _number++;
                        checkNumber();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                      '-1',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    onPressed: () {
                      setState(() {
                        _number--;
                        checkNumber();
                      });
                    },
                  ),
                ),
              ],
            ),
            Text('$_info!',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30))
          ],
        ),
      ],
    );
  }


}
