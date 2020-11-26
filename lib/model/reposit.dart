
import 'package:dio/dio.dart';
import 'package:my_flickr/model/images_list.dart';

abstract class ImagesRepo {
  Future<List<Picture>> getImagesList(String text);
}

class ImagesServices implements ImagesRepo {


  @override
  Future<List<Picture>> getImagesList(String searchText) async {
    String json = await fetchNormalJson(searchText);
    List<Picture> images = imagesFromJson(json);
    return images;
  }

  Future<String> fetchNormalJson(String searchText) async {
    Response response = await Dio().get(
        'https://www.flickr.com/services/rest/?method=flickr.photos.search&format=json&api_key=c7713e265cce18e69fc23965a1840261&text=${searchText}&extras=o_dims');


    int firstIndex = response.data.indexOf('[')  ;
    int lastIndex = response.data.lastIndexOf(']')+1;
    String normalJSON = response.data.substring(firstIndex, lastIndex);
    return normalJSON;
  }
}
