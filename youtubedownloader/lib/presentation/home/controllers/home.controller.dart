import 'dart:convert';

import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  String image;

  HomeController({this.image = "najib"});
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
  }

  factory HomeController.returnGet() {
    return HomeController(image: "aa");
  }
  void getSearch() async {
    // var result = await http.get(Uri.parse(
    //     "https://www.googleapis.com/youtube/v3/search?key=AIzaSyCkzcwSJNguHaybXQyYwZmfcpPEo4fVYQ8&type=video&part=snippet&maxResults=10&q=home"));
    // var a = json.decode(result.body);
    // print(a['items'][0]['snippet']['thumbnails']['default']['url']);
    final result = await FlutterYoutubeDownloader.downloadVideo(
        "https://youtu.be/wu11PcLjASY", "Video Title goes Here...", 18);
    print(result);
  }
}
