import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Jugador'+' 120 puntos'),
            leading: ImageIcon(AssetImage("assets/images/primer_lugar.jpg")),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Jugador'+' 120 puntos'),
            leading: ImageIcon(AssetImage("assets/images/primer_lugar.jpg")),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Jugador'+' 120 puntos'),
            leading: ImageIcon(AssetImage("assets/images/primer_lugar.jpg")),
          )
        ],
      ),
    )
    );
  }
}
