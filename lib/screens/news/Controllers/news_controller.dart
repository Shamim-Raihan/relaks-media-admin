import 'package:get/get.dart';
import 'dart:html' as html;
class NewsController extends GetxController{
  Rx<html.File?> newsImage = Rx<html.File?>(null);

  void handleImageSelected(html.FileUploadInputElement uploadInput) {
    final files = uploadInput.files;
    if (files != null && files.isNotEmpty) {
      newsImage.value = files.first;
    }
  }
}