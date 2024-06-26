import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanpresolve/features/complaint_form/presentation/widgets/image_picker.dart';
import 'package:sanpresolve/features/complaint_form/presentation/widgets/location.dart';

class ComplaintForm extends StatefulWidget {
  const ComplaintForm({super.key});

  @override
  State<ComplaintForm> createState() => _ComplaintForm();
}

class _ComplaintForm extends State<ComplaintForm> {
  // XFile? _selectedImage=null;
  String? _Prediction;

  // ignore: non_constant_identifier_names
  void PredictionImageCallBack(String? Prediction) {
    setState(() {
      if (Prediction != null) {
        _Prediction = Prediction;
      } else {
        _Prediction = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complaint Form'),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: SafeArea(
        child: Column(
          children: [
            imagepicker(ImagePrediction: PredictionImageCallBack),
            Expanded(
                child: Column(
              children: [
                _Prediction != null
                    ? Container(
                        margin: const EdgeInsets.only(left:40,right:40,top:40),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: const Text(
                                  "Department",
                                  style: TextStyle(fontSize: 20),
                                )),
                            Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 55,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.lime,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Text(
                                  _Prediction.toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                      )
                    : Container(),
                LocationWidget(),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.lime,
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text('Submit'),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
