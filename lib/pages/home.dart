import 'package:flutter/material.dart';

import '../data/dinosaurs.dart';
import '../utils/screen_utils.dart';
import '../widgets/dinosaur_selector.dart';
import '../widgets/logo_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoDisplay(imagePath: "assets/images/icons/", imageName: "parasaurolophus_icon.png", fontFamily: 'dinosauce', imagePadding: 8, text: ["Dino", "Base"],),
      ),
      body: Padding(
        padding: paddingAllXXL,
        child: DinosaurSelector(
          options: dinosaurs.toList()..sort(),
          onSelected: (dinosaur) {
            print(dinosaur);
          },
        ),
      ),
    );
  }
}
