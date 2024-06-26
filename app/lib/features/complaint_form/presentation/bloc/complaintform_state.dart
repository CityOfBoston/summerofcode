part of 'complaintform_bloc.dart';

@immutable
sealed class ComplaintformState {}

final class ComplaintformInitialState extends ComplaintformState {}

class UploadImageButtonClickedState extends ComplaintformState{}

class GalleryNavigationButtonClickedState extends ComplaintformState{}

class CameraNavigationButtonClickedState extends ComplaintformState{}

class ImageLoadedSuccessFullyState extends ComplaintformState{}

