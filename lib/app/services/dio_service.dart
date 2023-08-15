import 'dart:developer';

import 'package:dio/dio.dart';

///This class contains all services that we created with the package 'Dio'
class DioService {
  DioService();

  ///This method make a GET call to the API
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();

    return dio
        .get(
      url,
      options: Options(
        responseType: ResponseType.json,
        method: 'GET',
      ),
    )
        .then((response) {
      log(response.toString());
      return response;
    });
  }
}
