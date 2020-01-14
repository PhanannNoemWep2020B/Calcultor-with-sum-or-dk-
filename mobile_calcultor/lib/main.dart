
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calcultor());
class Calcultor extends StatefulWidget {
  @override
  _CalcultorState createState() => _CalcultorState();
}

class _CalcultorState extends State<Calcultor> {
  int num = 0;
  void store(){
    setState(() {
      num++;
    });
  }
  void resutl(){
    setState(() {
      num--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${num}", style: TextStyle(fontSize: 40),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: (){
                        store();
                      },
                      child: Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: (){
                        resutl();
                      },
                      child: Icon(Icons.remove),
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