import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../controllers/dinosaur_browser/dinosaur_browser_ctrl.dart';
import '../utils/screen_utils.dart';
import '../utils/utils.dart';

class DinosaurDetails extends ConsumerWidget {
  const DinosaurDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDino = ref.watch(dinosaurBrowserCtrlProvider.select((value) => value.selectedDinosaur));

    if (selectedDino == null) {
      return const SizedBox.shrink();
    }

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          selectedDino.hasImage
              ? Image.asset("assets/images/dinosaurs/${selectedDino.imageFileName}")
              : const Text("No Image"),
          boxXXL,
          Row(
            children: [
              Column(
                children: [
                  Text(selectedDino.genus),
                  Text(displayList(selectedDino.species)),
                  Text(selectedDino.diet.name.titleCase),
                  Text(enumList(selectedDino.timePeriods)),
                ],
              ),
              Column(
                children: [
                  const Text("Classification"),
                  for (final classification in selectedDino.classification)
                    Text(
                      classification.name.titleCase,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
