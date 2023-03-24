import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../models/dinosaur.dart';

class DinosaurSelector extends StatelessWidget {
  final List<Dinosaur> options;
  final ValueChanged<Dinosaur> onSelected;

  const DinosaurSelector({Key? key, required this.options, required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: options.length,
      itemBuilder: (context, i) {
        return _DinosaurTile(
          dinosaur: options[i],
          onPressed: onSelected,
        );
      },
    );
  }
}

class _DinosaurTile extends StatelessWidget {
  final Dinosaur dinosaur;
  final ValueChanged<Dinosaur> onPressed;

  const _DinosaurTile({Key? key, required this.dinosaur, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => onPressed(dinosaur),
        title: Text(dinosaur.genus),
        subtitle: Text(
            "Diet: ${dinosaur.diet.name.titleCase} Time Period(s): ${dinosaur.timePeriodsDisplay} Suborder: ${dinosaur.findSuborder().name.titleCase}"),
      ),
    );
  }
}
