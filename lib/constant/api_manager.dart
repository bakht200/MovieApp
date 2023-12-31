import 'package:dio/dio.dart';
import 'package:tentwenty_movie_project/constant/config.dart';

class ApiManager {
  Dio dio = Dio();
  getRequest(var url) async {
    Response response = await dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': "Bearer ${AuthorizationToken.autheorizationToekn}",
        },
      ),
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      return null;
    }
  }
}
