import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sanpresolve/features/complaint_form/domain/usecase.dart';
import 'package:sanpresolve/features/complaint_form/presentation/bloc/complaintform_bloc.dart';
import 'package:sanpresolve/features/validation/permissions.dart';

// ignore: camel_case_types
class imagepicker extends StatefulWidget {
  //  final Function(String?) onImagePicked;
   final Function(String?) ImagePrediction;
  // final BuildContext passedcontext;
const imagepicker({super.key,required this.ImagePrediction}) ;

  @override
  State<imagepicker> createState() => _imagepicker();
}

// ignore: camel_case_types
class _imagepicker extends State<imagepicker> {
  final Permissions ImageAccessingPermission = Permissions();
  final ImagePicker _picker = ImagePicker();
  XFile? _image=null;
  void showimagepicker(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(22),
                  child:Column(children: [
                IconButton(
                  icon: Icon(Icons.photo_library, color: Colors.black),
                  iconSize: 60.0,
                  onPressed: () {
                    Navigator.of(context).pop();
                    uploadimage.add(GalleryNavigationButtonClickedEvent());
                  },
                ),
                Text("Gallery")]),),
                SizedBox(width: 70), // Add spacing between the icons
                Container(
                  margin: EdgeInsets.all(22),
                  child:Column(children: [
                IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.black),
                  iconSize: 60.0,
                  onPressed: () {
                    Navigator.of(context).pop();
                    uploadimage.add(CameraNavigationButtonClickedEvent());
                  },
                ),
                Text("Camera")
              ],
            ),
          ),
          ]
          ),
          ),
        );
      });
}

  final ComplaintformBloc uploadimage = ComplaintformBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ComplaintformBloc, ComplaintformState>(
      bloc: uploadimage,
      buildWhen: (previous, current) => current==ImageLoadedSuccessFullyState,
      listener: (context, state) {
        
        // ignore: unrelated_type_equality_checks
        if (state is UploadImageButtonClickedState)
          showimagepicker(context);
        else if (state is GalleryNavigationButtonClickedState)
          openGallery();
        else if (state is CameraNavigationButtonClickedState) 
          openCamera();
      },
      builder: (context, state) {
        if(_image!=null)
        {
          File uploadedImage=File(_image!.path);
           return Center(child:Container(
              height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.75,
          margin: const EdgeInsets.all(30),
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black,width: 3)
           ),
      child: Stack(
        children: [
          Center(
            child:Container(
        height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.60,
            child: Image.file(
              uploadedImage,
              fit: BoxFit.cover,
            ),
          ),),
          Positioned(
            bottom: 0.0,
            right: 05.0,
            child: IconButton(
              icon: Icon(Icons.cancel_rounded, color: Colors.red, size: 50.0),
              onPressed: () {
                  setState(() {
                    _image=null;
                    widget.ImagePrediction(null);
                  });
              }
            ),
          ),
        ],
    ),
        ),);
        }else  {
          return Center(child:Container(
          margin: const EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.75,
          color: Colors.white,
          child: DottedBorder(
            strokeWidth: 3,
            color: Colors.black38,
            borderType: BorderType.RRect,
            radius: const Radius.circular(20),
            dashPattern: const [5, 5],
            child: TextButton(
                onPressed: () {
                  _image=null;
                  uploadimage.add(UploadImageButtonClickedEvent());
                },
                child: const Center(
                  child: Text('Upload an Image'),
                )),
          ),
          ),);
        }
      },
    );
  }

  Future<void> openGallery() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
        // widget.onImagePicked((pickedFile.path));  
        UseCases imagepickedusecase=UseCases();
        imagepickedusecase.UserImagePicked(pickedFile.path.toString());
        UseCases imagepickedusecasegallery=UseCases();
      String? result=await imagepickedusecase.UserImagePicked(pickedFile.path.toString());
      widget.ImagePrediction(result);
    }

  }

  Future<void> openCamera() async {
    await ImageAccessingPermission.checkPermissions(Permission.camera, context);
     final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
      // widget.onImagePicked((pickedFile.path)); 
      UseCases imagepickedusecasecamera=UseCases();
      String? result=await imagepickedusecasecamera.UserImagePicked(pickedFile.path.toString());
      widget.ImagePrediction(result);
    }
  }
}




