import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateController extends GetxController {
  //
  var textFieldController = TextEditingController();
  var currentLetter = '';
  var tr = '';
  var from = 'en';
  var to = 'fa';
  //

  // Showing Translated word - Func
  void showTr(var translation) {
    tr = translation;
    update();
  }

  // Letter Counter - Func
  void letterCounter(var val) {
    currentLetter = val;
    update();
  }

  // Clear TextField & Translated Box - Func
  void clearTr() {
    tr = '';
    currentLetter = '';
    textFieldController.clear();
    update();
  }

  // DropdownButton - Func
  void dropDownFunc(String val) {
    to = val;
    update();
  }
}
