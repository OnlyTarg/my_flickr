part of 'images_bloc.dart';


abstract class ImagesEvent extends Equatable {
  const ImagesEvent();
}

class FetchEvent extends ImagesEvent {
  final String text;

   FetchEvent(this.text);

  @override
  List<Object> get props => throw UnimplementedError();
}
class InitialEvent extends ImagesEvent {

   InitialEvent();

  @override
  List<Object> get props => throw UnimplementedError();


}
