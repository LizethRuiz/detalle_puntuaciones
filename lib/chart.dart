import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GroupedBarChart extends StatelessWidget {
  List<charts.Series<PuntuacionesRonda, String>> _seriesData = [];

  _generateData() {
    var data1 = [
      PuntuacionesRonda('ronda1', 100, 100, 100),
      PuntuacionesRonda('ronda1', 100, 100, 100),
      PuntuacionesRonda('ronda1', 100, 100, 100),
    ];
    var data2 = [
      PuntuacionesRonda('ronda1', 100, 100, 100),
      PuntuacionesRonda('ronda1', 100, 100, 100),
      PuntuacionesRonda('ronda1', 100, 100, 100),
    ];
    
    _seriesData.add(
      charts.Series(
        domainFn: (PuntuacionesRonda puntuacion, _) => puntuacion.ronda,
        measureFn: (PuntuacionesRonda puntuacion, _) => puntuacion.jugador1,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (PuntuacionesRonda puntuacion, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ), 
    );

    _seriesData.add(
      charts.Series(
        domainFn: (PuntuacionesRonda puntuacion, _) => puntuacion.ronda,
        measureFn: (PuntuacionesRonda puntuacion, _) => puntuacion.jugador1,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (PuntuacionesRonda puntuacion, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ), 
    );
  }

  @override
  Widget build(BuildContext context) {
    return  charts.BarChart(
      _seriesData,
      animate: true,
      barGroupingType: charts.BarGroupingType.grouped,
    );
  }
}
/// Sample ordinal data type.
class PuntuacionesRonda {
  String ronda = 'Ronda 1';
  int jugador1 = 10;
  int jugador2 = 10;
  int jugador3 = 10;

  PuntuacionesRonda(this.ronda, this.jugador1, this.jugador2, this.jugador3);
}