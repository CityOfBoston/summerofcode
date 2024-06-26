part of 'complaintform_bloc.dart';

@immutable
sealed class ComplaintformEvent {}

class ComplaintformInitialEvent extends ComplaintformEvent {}

class UploadImageButtonClickedEvent extends ComplaintformEvent{ }

class GalleryNavigationButtonClickedEvent extends ComplaintformEvent{}

class CameraNavigationButtonClickedEvent extends ComplaintformEvent{}

class ImageLoadedSuccessFullyEvent extends ComplaintformEvent{}


