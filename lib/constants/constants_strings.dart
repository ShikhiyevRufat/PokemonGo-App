import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String appTitle = "Pokemon App ";

  static TextStyle getPokeMonNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
  }

  static TextStyle getPokeChipTypeTextStyle() {
    return const TextStyle(
        color: Colors.white, fontSize: 20);
  }

  static TextStyle getPokeInfoTypeTextStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 16);
  }

  static TextStyle getPokeTextsTypeTextStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  }
}
