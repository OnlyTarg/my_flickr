part of 'images_bloc.dart';

abstract class ImagesState extends Equatable {
  const ImagesState();

  @override
  List<Object> get props => [];
}

class ImagesInitial extends ImagesState {}

class ImagesLoading extends ImagesState {}

class ImagesLoaded extends  ImagesState {
  final List<Images> images;

  ImagesLoaded({this.images});
}

class ImagesListError extends ImagesState {
  final error;

  ImagesListError(this.error);
}
