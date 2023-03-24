import 'package:recase/recase.dart';

class Dinosaur implements Comparable<Dinosaur> {
  final String genus;
  final Diet diet;
  final List<String> species;
  final List<TimePeriod> timePeriods;
  final List<TaxonomicRank> classification;

  const Dinosaur({
    required this.genus,
    required this.diet,
    required this.species,
    required this.timePeriods,
    required this.classification,
  });

  String get timePeriodsDisplay => timePeriods.toString().replaceAll('[', '').replaceAll(']', '').replaceAll("TimePeriod.", '').titleCase;

  @override
  String toString() => "$genus, $diet, $species, $timePeriods";

  @override
  int compareTo(Dinosaur other) => genus.compareTo(other.genus);

  TaxonomicRank findSuborder() {
    if (classification.contains(TaxonomicRank.ankylosauria)) {
      return TaxonomicRank.ankylosauria;
    } else if (classification.contains(TaxonomicRank.ceratopsia)) {
      return TaxonomicRank.ceratopsia;
    } else if (classification.contains(TaxonomicRank.sauropoda)) {
      return TaxonomicRank.ceratopsia;
    } else if (classification.contains(TaxonomicRank.prosauropoda)) {
      return TaxonomicRank.ceratopsia;
    } else if (classification.contains(TaxonomicRank.theropoda)) {
      return TaxonomicRank.ceratopsia;
    } else if (classification.contains(TaxonomicRank.pachycephalosauria)) {
      return TaxonomicRank.ceratopsia;
    } else if (classification.contains(TaxonomicRank.stegosauria)) {
      return TaxonomicRank.ceratopsia;
    }else if (classification.contains(TaxonomicRank.ornithopoda)) {
      return TaxonomicRank.ornithopoda;
    } else {
      return TaxonomicRank.dinosauria;
    }
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
  dacentrurinae,
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
