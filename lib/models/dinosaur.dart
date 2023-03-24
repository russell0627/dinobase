import 'package:recase/recase.dart';

class Dinosaur implements Comparable<Dinosaur> {
  final String genus;
  final Diet diet;
  final List<String> species;
  final List<TimePeriod> timePeriods;
  final List<TaxonomicRank> classification;
  final String? imageFileName;

  const Dinosaur({
    required this.genus,
    required this.diet,
    required this.species,
    required this.timePeriods,
    required this.classification,
    this.imageFileName,
  });

  bool get hasImage => imageFileName != null;

  @override
  String toString() => "$genus, $diet, $species, $timePeriods";

  @override
  int compareTo(Dinosaur other) => genus.compareTo(other.genus);

  TaxonomicRank findSuborder() {
    for (final suborder in TaxonomicRank.suborders) {
      if (classification.contains(suborder)) {
        return suborder;
      }
    }

    return TaxonomicRank.dinosauria;
  }
}

const List<Dinosaur> dinosaurs = [];

enum TaxonomicRank {
  dinosauria,
  saurischia,
  ornithschia,
  cerapoda,
  thyreophora,
  sauropodomorpha,
  sauropoda,
  prosauropoda,
  theropoda,
  marginocephalia,
  ankylosauria,
  ceratopsia,
  ornithopoda,
  stegosauria,
  pachycephalosauria,
  heterodontosauridae,
  ceratopsidae,
  chasmosaurinae,
  triceratopsini,
  tetanurae,
  ceratosauria,
  allosauroidea,
  megalosauridea,
  tyrannosauridae,
  tyrannosaurinae,
  hadrosauridae,
  lambeosaurinae,
  parasaurolophini,
  alioramini,
  stegosauridae,
  stegosaurinae,
  dacentrurinae;

  static List<TaxonomicRank> suborders = [
    TaxonomicRank.ankylosauria,
    TaxonomicRank.ceratopsia,
    TaxonomicRank.ornithopoda,
    TaxonomicRank.pachycephalosauria,
    TaxonomicRank.prosauropoda,
    TaxonomicRank.sauropoda,
    TaxonomicRank.stegosauria,
    TaxonomicRank.theropoda,
  ];
}

enum Category {
  clade,
  order,
  suborder,
  family,
  subfamily,
  tribe,
  subtribe;
}

enum Diet {
  carnivore,
  herbivore,
  omnivore,
}

enum TimePeriod {
  earlyTriassic,
  midTriassic,
  lateTriassic,
  earlyJurassic,
  midJurassic,
  lateJurassic,
  earlyCretaceous,
  midCretaceous,
  lateCretaceous,
}
