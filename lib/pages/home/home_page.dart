import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/widgets/my_app_bar.dart';

import 'widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }
  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(top: _screenHeigth * .24,)
        ],
      ),
    );
  }
}