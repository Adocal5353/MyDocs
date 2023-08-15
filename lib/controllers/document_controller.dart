import 'package:get/get.dart';
import 'package:my_docs/app/services/dio_service.dart';
import 'package:my_docs/models/document.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class DocumentController extends GetxController {
  RxList<Document> documents = RxList();
  RxBool isLoading = false.obs;
  RxBool isInternetConnect = true.obs;
  var url = 'https://mockend.com/Adocal5353/MyDocs/documents?limit=10';

  getDocuments() async {
    isInternetConnectFunc();
    isLoading = true.obs;
    update([1]);
    var response = await DioService().getMethod(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        documents.add(Document.fromJson(element));
      });
    }
    isLoading = false.obs;
    update([1]);
    print(isLoading.value.toString());
  }

  /// this methov verify if the device is connect (Return a bool that describe the status of the connection)
  isInternetConnectFunc() async {
    isInternetConnect.value = await InternetConnectionChecker().hasConnection;
    update();
  }

  // @override
  // void onInit() {
  //   isInternetConnectFunc();
  //   if (isInternetConnect.value) {
  //     getDocuments();
  //   }
  //   super.onInit();
  // }
}
