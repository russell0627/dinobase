import 'package:recase/recase.dart';

String displayList(List<String> values, {bool titleCase = false}) {
  final newValues = !titleCase
      ? values
      : values.map((e) => e.titleCase).toList();

  return newValues.join(', ');
}

String enumList<T extends Enum>(List<T> values) => values.map((e) => e.name.titleCase).join(', ');
