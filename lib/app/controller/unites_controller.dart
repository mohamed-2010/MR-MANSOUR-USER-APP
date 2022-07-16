import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/model/unites_model.dart';

class UnitesController extends GetxController {
  var isLoading = false.obs;
  List unites = <UnitesModel>[].obs;
  dynamic argumentData = Get.arguments;
  var linkUrl = "".obs;

  //function to get data from fireStore database and set it to studyphase variable to be used in the app
  Future getUnites(String? id) async {
    isLoading.value = true;
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("StudyPhase").doc(id).collection('unites').get();
    var url = await FirebaseFirestore.instance.collection("youtube").doc("urlId").get();
    linkUrl.value = url.get('url');
    print(linkUrl.value);
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      unites.add(UnitesModel(
        id: a.id,
        name: a.get('name'),
        enabled: a.get('enable'),
      ));
      print(a.id);
    }
    isLoading.value = false;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getUnites(argumentData);
  }
}