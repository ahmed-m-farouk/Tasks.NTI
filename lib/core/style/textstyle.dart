import 'package:flutter/material.dart';

TextStyle textStyle({
  required double fontsize,
  required FontWeight? font,
}) {
  return TextStyle(
    fontSize: fontsize,
    color: Colors.white,
    fontWeight: font,
  );
}

TextStyle subtextStyle() {
  return TextStyle(
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}

TextStyle timetextStyle() {
  return TextStyle(
    color: Colors.white,
  );
}
