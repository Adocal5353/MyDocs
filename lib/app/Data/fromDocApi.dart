import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

Future getAllDocs() async {
  try {
    var response = await Dio().get('http://127.0.0.1:5000/books');
    GetStorage().write('elements', response.data);
    return response.data;
  } catch (e) {
    return GetStorage().read('elements') ?? [];
  }
}
