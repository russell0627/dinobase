import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/dinosaur_browser/dinosaur_browser_ctrl.dart';
import '../data/dinosaurs.dart';
import '../widgets/dinosaur_details.dart';
import '../widgets/dinosaur_selector.dart';

class DinosaurBrowserPage extends ConsumerStatefulWidget {
  const DinosaurBrowserPage({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _DinosaurBrowserPageState();
}

class _DinosaurBrowserPageState extends ConsumerState<DinosaurBrowserPage> {
  _Page _page = _Page.selector;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _page.index,
      children: [
        Scaffold(
          appBar: AppBar(title: const Text('Select a Dinosaur')),
          body: DinosaurSelector(
            options: dinosaurs.toList()..sort(),
            onSelected: (dinosaur) {
              ref.read(dinosaurBrowserCtrlProvider.notifier).onSelected(dinosaur);
              setState(() {
                _page = _Page.details;
              });
            },
          ),
        ),
        Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                setState(() {
                  _page = _Page.selector;
                });
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(ref.watch(dinosaurBrowserCtrlProvider).selectedDinosaur?.genus ?? ''),
          ),
          body: const DinosaurDetails(),
        ),
      ],
    );
  }
}

enum _Page {
  selector,
  details,
}
