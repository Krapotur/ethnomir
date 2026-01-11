import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class RestaurantModel with ChangeNotifier {
  var logger = Logger(printer: PrettyPrinter());
  bool isSelect = false;

  void selectCategory() {
    logger.w(isSelect);
    isSelect ? isSelect = false : isSelect = true;
    notifyListeners();
  }
}
