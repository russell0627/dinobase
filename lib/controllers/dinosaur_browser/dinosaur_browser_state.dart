import '../../models/dinosaur.dart';

class DinosaurBrowserState {
  final Dinosaur? selectedDinosaur;

  const DinosaurBrowserState({
    this.selectedDinosaur,
  });

  DinosaurBrowserState copyWith({
    Dinosaur? selectedDinosaur,
  }) {
    return DinosaurBrowserState(
      selectedDinosaur: selectedDinosaur ?? this.selectedDinosaur,
    );
  }
}