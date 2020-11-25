/*
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_flickr/provider/Picture.dart';

class Pictures extends ChangeNotifier {
  List<Picture> picturesList;

  List<Image> listOfImages(List<Picture> list){
    List<Image> finalImages=[];
    for(var i in list){
      finalImages.add(Image.network('https://live.staticflickr.com/${i.serverID}/${i.id}_${i.secret}_${i.size}.jpg'));
    }
    return finalImages;

  }

  Future<void> getPicturesFromJSON() async {
    if (picturesList == null) {
      picturesList = [];
    };
    Response response = await Dio().get(
        'https://www.flickr.com/services/rest/?method=flickr.photos.search&format=json&api_key=c7713e265cce18e69fc23965a1840261&tags=some&extras=o_dims');
    //print(json.decode(response.data.runtimeType));
    // String str =response.data.substring(response.data.indexOf('{'));
    int firstIndex = response.data.indexOf('(') + 1;
    int lastIndex = response.data.length - 1;
    //String str = response.data.substring(firstIndex, lastIndex);
    Map<String, dynamic> map =
        json.decode(response.data.substring(firstIndex, lastIndex));
    List<dynamic> list = map['photos']['photo'];
    //https://live.staticflickr.com/{server-id}/{id}_{secret}_{size-suffix}.jpg
    for (var i in list) {
      Picture newPicture = Picture(
          id: i['id'], serverID: i['server'], secret: i['secret'], size: 'b');
      //picturesList.add(newPicture);
      */
/*print(newPicture.id);
      print(newPicture.size);
      print(newPicture.secret);
      print(newPicture.serverID);*//*

      picturesList.add(newPicture);

    }
  }
}
*/
