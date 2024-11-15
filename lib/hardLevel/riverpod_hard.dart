import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/hardLevel/model.dart';

/// Using Model
final riverPodHardLevel = ChangeNotifierProvider<RiverpodModel>((ref){

  return RiverpodModel(counter : 0);

});