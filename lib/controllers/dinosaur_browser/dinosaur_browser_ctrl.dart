import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/dinosaur.dart';
import 'dinosaur_browser_state.dart';

part 'dinosaur_browser_ctrl.g.dart';

@riverpod
class DinosaurBrowserCtrl extends _$DinosaurBrowserCtrl {
  @override
  DinosaurBrowserState build() => const DinosaurBrowserState();

  void onSelected(Dinosaur value) {
    state = state.copyWith(selectedDinosaur: value);
  }
}