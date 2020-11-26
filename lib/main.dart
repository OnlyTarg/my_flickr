import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_flickr/bloc/images/images_bloc.dart';
import 'package:my_flickr/model/reposit.dart';
import 'package:my_flickr/screens/search_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider(
            create: (context) {
              return ImagesBloc(imagesRepo: ImagesServices());
            },
            child: SearchPage()));
  }
}
