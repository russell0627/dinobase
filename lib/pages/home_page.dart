import 'package:flutter/material.dart';

import '../widgets/logo_display.dart';
import 'dinosaur_browser_page.dart';

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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const DinosaurBrowserPage()));
          },
          child: const Text('Browse'),
        ),
      ),
    );
  }
}
