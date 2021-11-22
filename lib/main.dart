import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:puntuaciones/chart.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetallePuntuacion(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetallePuntuacion extends StatelessWidget {
  const DetallePuntuacion({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1A237E),
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () => print('regresa a la pantalla anterior'),
              );
            },
          ), 
          title: Text('Puntuaciones'),
        ),
        body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Puntuaciones ronda',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: GroupedBarChart(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      );
  }
}
