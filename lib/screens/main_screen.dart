import 'package:flutter/material.dart';
import 'package:my_flickr/widgets/my_app_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        height: 50,
      ),
      body: Container(),
    );
  }
}
