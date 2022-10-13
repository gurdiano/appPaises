import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(title: Text('Países'), backgroundColor: Colors.pink[900]),
        body: _novaPaginaPaises(),
      ),
    ),
  );
}

class _novaPaginaPaises extends StatefulWidget {
  const _novaPaginaPaises({Key? key}) : super(key: key);

  @override
  State<_novaPaginaPaises> createState() => new __novaPaginaPaises();
}

class __novaPaginaPaises extends State<_novaPaginaPaises> {
  var random = Random();
  int i = 1;
  var band = [
    'Alemanha',
    'Argentina',
    'Bélgica',
    'Brasil',
    'Canadá',
    'China',
    'Colombia',
    'Coréia',
    'Cuba',
    'Espanha',
    'Estados Unidos',
    'Finlândia',
    'França',
    'Israel',
    'Japão',
    'Rússia',
    'Suécia',
    'Suíça',
    'Uruguai',
    'Venezuela'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  i = random.nextInt(19);
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(radius: 80.0, backgroundImage: AssetImage('images/p$i.png')),
                  Text('${band[i]}', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
