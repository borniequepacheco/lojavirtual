import 'package:flutter/cupertino.dart';

class PageManager {
  PageManager(this._pageController);

  final PageController _pageController;

  int pageNumber = 0;

  void setPage(int value) {
    if (value == pageNumber) return;
    pageNumber = value;
    _pageController.jumpToPage(value);
  }
}
