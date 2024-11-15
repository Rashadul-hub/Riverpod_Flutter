import 'package:flutter/cupertino.dart';

class RiverPodThemeModel extends ChangeNotifier {
  bool isLight;

  RiverPodThemeModel({
    required this.isLight
  });

  void changeTheme({required bool newBool}){
    isLight = newBool;
    notifyListeners();
  }


}
