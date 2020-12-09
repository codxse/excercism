const Map<String, int> MAPPER = {
  'AEIOULNRST': 1,
  'DG': 2,
  'BCMP': 3,
  'FHVWY': 4,
  'K': 5,
  'JX': 8,
  'QZ': 10,
};

int score(String anystring) {
  if (anystring.isEmpty) return 0;
  return anystring.split('').map((c) {
    return MAPPER
        .entries
        .map((e) => e.key.toString().toLowerCase().contains(c.toLowerCase()) ? e.value : 0)
        .reduce((value, element) => value + element);
  }).reduce((value, element) => value + element);
}