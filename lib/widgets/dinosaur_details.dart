import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/dinosaur_browser/dinosaur_browser_ctrl.dart';

class DinosaurDetails extends ConsumerWidget {
  const DinosaurDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDino = ref.watch(dinosaurBrowserCtrlProvider.select((value) => value.selectedDinosaur));

    return const Placeholder();
  }
}
