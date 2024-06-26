import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'complaintform_event.dart';
part 'complaintform_state.dart';

class ComplaintformBloc extends Bloc<ComplaintformEvent, ComplaintformState> {
   ComplaintformBloc() : super(ComplaintformInitialState()) {

   on<UploadImageButtonClickedEvent>(_UploadImageButtonClickedEvent);

   on<GalleryNavigationButtonClickedEvent>(_GalleryNavigationButtonClickedEvent);

   on<CameraNavigationButtonClickedEvent>(_CameraNavigationButtonClickedEvent);

  on<ImageLoadedSuccessFullyEvent>(_ImageLoadedSuccessFullyEvent);

  on<ComplaintformInitialEvent>(_complaintformInitialEvent);

  }
  
}


// ignore: non_constant_identifier_names
FutureOr<void> _UploadImageButtonClickedEvent(UploadImageButtonClickedEvent event,Emitter<ComplaintformState> emit )
{
   emit(UploadImageButtonClickedState());
}

FutureOr<void> _GalleryNavigationButtonClickedEvent(GalleryNavigationButtonClickedEvent event,Emitter<ComplaintformState> emit )
{
   emit(GalleryNavigationButtonClickedState());
}

FutureOr<void> _CameraNavigationButtonClickedEvent(CameraNavigationButtonClickedEventevent,Emitter<ComplaintformState> emit )
{
   emit(CameraNavigationButtonClickedState());
}

FutureOr<void> _ImageLoadedSuccessFullyEvent(ImageLoadedSuccessFullyEvent event,Emitter<ComplaintformState> emit )
{
   emit(ImageLoadedSuccessFullyState());
}

  FutureOr<void> _complaintformInitialEvent(ComplaintformInitialEvent event, Emitter<ComplaintformState> emit) {
    emit(ComplaintformInitialState());
  }


