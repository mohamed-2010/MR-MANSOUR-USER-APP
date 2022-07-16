import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:untitled1/app/model/lessons_model.dart';

class LessonsController extends GetxController {
  var isLoading = false.obs;
  List lessons = <LessonsModel>[].obs;
  dynamic argumentData = Get.arguments;
  final assetsAudioPlayer = AssetsAudioPlayer();
  var linkUrl = "".obs;
  //function to get data from fireStore database and set it to studyphase variable to be used in the app
  Future getLessons(String? unitId,String lessonId) async {
    print("Start0");
    isLoading.value = true;
    var url = await FirebaseFirestore.instance.collection("youtube").doc("urlId").get();
    linkUrl.value = url.get('url');
    print(linkUrl.value);
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("StudyPhase").doc(unitId).collection('unites').doc(lessonId).collection('lessons').get();
    for (int i = 0; i < querySnapshot.docs.length; i++) {
      var a = querySnapshot.docs[i];
      lessons.add(LessonsModel(
        id: a.id,
        name: a.get('name'),
        enabled: a.get('enable'),
        url: a.get('url'),
        horezontal : a.get('horezontal')
      ));
      print(a.id);
    }
    isLoading.value = false;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    print("start");
    assetsAudioPlayer.open(
      Audio("assets/audio/space.mp3"),
      showNotification: true,
    );
    getLessons(argumentData['unitId'],argumentData['lessonId']);
  }

  @override
  void onClose() {
    assetsAudioPlayer.stop();
  }
}