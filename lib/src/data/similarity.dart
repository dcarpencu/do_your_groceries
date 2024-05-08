int levenshteinDistance(String first, String second) {
  final int firstLen = first.length;
  final int secondLen = second.length;

  if (firstLen == 0 || secondLen == 0) {
    throw ArgumentError('Inputs must not have length 0');
  }

  final List<List<int>> matrix = List<List<int>>.generate(firstLen + 1, (_) => List<int>.filled(secondLen + 1, 0));

  for (int i = 0; i <= firstLen; i++) {
    matrix[i][0] = i;
  }

  for (int j = 0; j <= secondLen; j++) {
    matrix[0][j] = j;
  }

  for (int i = 1; i <= firstLen; i++) {
    for (int j = 1; j <= secondLen; j++) {
      final int cost = (first[i - 1] == second[j - 1]) ? 0 : 1;
      matrix[i][j] = <int>[
        matrix[i - 1][j] + 1,
        matrix[i][j - 1] + 1,
        matrix[i - 1][j - 1] + cost,
      ].reduce((int value, int element) => value < element ? value : element);
    }
  }

  return matrix[firstLen][secondLen];
}

double similarity(String first, String second) {
  final int changes = levenshteinDistance(first, second);
  final int maxLength = first.length > second.length ? first.length : second.length;

  return 1 - (changes / maxLength);
}

// void main() {
//   double result = similarity('Aqua Carpatica', 'Awas Carpatic');
//   print(result);
// }
