import 'package:flutter/material.dart';
import 'package:my_flickr/widgets/my_app_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(height: 50,),
      body: _body(),
    );
  }

  _body() {
    return Column(children: [

    ],);
  }
}
