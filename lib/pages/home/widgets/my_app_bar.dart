import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.red,
          height: 200,
          child: Row(
            children: <Widget>[
              Image.network(''),
              SizedBox(
                width: 10,
              ),
              Text(
                'Tarciso',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        )
      ],
    );
  }
}
