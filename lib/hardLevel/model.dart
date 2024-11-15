import 'package:flutter/cupertino.dart';

class RiverpodModel extends ChangeNotifier{
  int counter;
  RiverpodModel({
    required this.counter,
  });

  void addCounter(){
    counter ++;
    notifyListeners();
  }
  void removeCounter(){
    counter --;
    notifyListeners();
  }
}