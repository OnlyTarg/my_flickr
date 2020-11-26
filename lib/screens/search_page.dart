import 'package:flutter/material.dart';
import 'package:my_flickr/bloc/images/images_bloc.dart';
import 'package:my_flickr/model/images_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  _loadImages() async {
    /* BlocProvider.of<ImagesBloc>(context).add(ImagesEvent.fetchImages);*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Flickr SEARCH'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    String tempStr = '';
    return GestureDetector(
      onTap:() => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Column(
        children: [
          Form(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextFormField(
                  autofocus: true,

                  decoration: new InputDecoration(
                    labelText: "What do you want to find?",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                  onChanged: (value) {
                    tempStr = value;
                    if (value != '') {
                      Future.delayed(Duration(seconds: 1), () {
                        if (tempStr == value && value.length > 2) {
                          BlocProvider.of<ImagesBloc>(context)
                              .add(FetchEvent(value));
                        }
                        if (value.length < 2 || value.isEmpty) {
                          BlocProvider.of<ImagesBloc>(context).add(InitialEvent());
                        }
                      });
                    } else {}
                  },
                ),
              ),
            ),
          ),
          BlocBuilder<ImagesBloc, ImagesState>(
            builder: (context, state) {
              if (state is ImagesListError) {
                return Text('Error');
              }
              if (state is ImagesLoaded) {
                List<Picture> pictures = state.pictures;
                return _list(pictures);
              }
              if (state is ImagesInitial) {
                return Container();
              }
              return Expanded(child: Center(child: CircularProgressIndicator()));
            },
          )
        ],
      ),
    );
  }

  Widget _list(List<Picture> pictures) {
    return Expanded(
        child: (ListView.builder(
      itemCount: pictures.length,
      itemBuilder: (_, index) {
        Picture image = pictures[index];
        //return Text(image.title);
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 4),
          child: Image.network(
              'https://live.staticflickr.com/${image.server}/${image.id}_${image.secret}.jpg',fit: BoxFit.fitWidth,),
        );
      },
    )));
  }
}
