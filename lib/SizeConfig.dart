import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenHeight = 0;
  static double _screenWidth = 0;
  static double _blockHorizontal = 0;
  static double _blockvertical = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightmultiplier = 0;
  static double widthMultiplier = 0;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenHeight = constraints.maxHeight;
      _screenWidth = constraints.maxWidth;
      _blockHorizontal = _screenWidth / _screenHeight;
      _blockvertical = _screenWidth / 2;
      isPortrait = true;
      if (_screenWidth < 490) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = false;
      isMobilePortrait = false;
    }
    _blockHorizontal = _screenWidth / 100;
    _blockvertical = _screenHeight / 00;

    textMultiplier = _blockvertical;
    imageSizeMultiplier = _blockHorizontal;
    heightmultiplier = _blockvertical;
    widthMultiplier = _blockHorizontal;

    print(_blockHorizontal);
    print(_blockvertical);
    print(_screenWidth);
  }
}
