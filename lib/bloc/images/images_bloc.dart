import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:my_flickr/model/images_list.dart';
import 'package:my_flickr/model/reposit.dart';

part 'images_event.dart';
part 'images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final ImagesRepo imagesRepo;
  List<Picture> images;

  ImagesBloc({this.imagesRepo}) : super(ImagesInitial());

  @override
  Stream<ImagesState> mapEventToState(
    ImagesEvent event,
  ) async* {
    if (event is FetchEvent && event.text != '') {
      yield ImagesLoading();
      images = await imagesRepo.getImagesList(event.text);
      yield ImagesLoaded(pictures: images);
    }
    if (event is InitialEvent) {
      yield ImagesInitial();
    }
  }
}
