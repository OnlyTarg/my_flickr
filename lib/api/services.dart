import 'package:http/http.dart' as http;
import 'package:my_flickr/model/images_list.dart';

abstract class ImagesRepo{
Future<List<Images>> getImagesList ();
}

class ImagesServices implements ImagesRepo{
  static const _baseUrl = 'jsonplaceholder.typicode.com/';
  static const  String _GET_IMAGES = '/albums';
  @override
  Future<List<Images>> getImagesList() async {
    Uri uri = Uri.https(_baseUrl, _GET_IMAGES);
    var response = await http.get(uri);
    List<Images> images = imagesFromJson(response.body);

  }

}