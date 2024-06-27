
import 'package:dio/dio.dart';
import 'package:sanpresolve/features/complaint_form/data/models/userimage.dart';

class DataSources {
Future<String?> uploadFileDio(String url, String imagePath) async {
  var formData = FormData.fromMap({
    'file': await MultipartFile.fromFile(imagePath),
  });

  Dio dio = Dio();
  try {
    var response = await dio.post(
      url,
      data: formData,
      options: Options(
        headers: {
          'accept': 'application/json',
          'Content-Type': 'multipart/form-data',
        },
      ),
    );

    if (response.statusCode == 200) {
 
      return response.data["predicted_label"];
    } else {
      // Handle error
      // print('Error: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Exception: $e');
  }
}

}