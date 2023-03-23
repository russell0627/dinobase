class Dinosaur {
  final String genusTitle;
  final Diet diet;
  final List<String> species;
  final List<TimePeriod> timePeriods;
  final List<TaxonomicRank> classification;

  const Dinosaur({
    required this.genusTitle,
    required this.diet,
    required this.species,
    required this.timePeriods,
    required this.classification,
  });
}

const List<Dinosaur> dinosaurs = [];

enum TaxonomicRank {
  dinosauria,
  saurischia,
  ornithschia,
  cerapoda,
  thyreophora,
  sauropodomorpha,
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
