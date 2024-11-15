import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/theme/hard/model.dart';

final riverpodIsLightHard = ChangeNotifierProvider<RiverPodThemeModel>((ref){
  return RiverPodThemeModel(isLight: true);
});