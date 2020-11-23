import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'picture_event.dart';
part 'picture_state.dart';

class PictureBloc extends Bloc<PictureEvent, PictureState> {
  PictureBloc() : super(PictureInitial());

  @override
  Stream<PictureState> mapEventToState(
    PictureEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
