void main() {
  print('Day 8 - 220824');
  const s1 = <int>[2, 4, 6, 2, 5];
  const s2 = <int>[5, 1, 1, 5];

  print(sumLargestNonAdjacentNums(s1));
  print(sumLargestNonAdjacentNums(s2));
}

String doSomething() => '220824';

List<int> sumLargestNonAdjacentNums(List<int> input, {int first = 0}) {
  if (first > input.length) return [];
  final res = <int>[];
  final map = input.asMap();

  final pair1 = (map[first] ?? 0) + (map[first + 2] ?? 0);
  final pair2 = (map[first + 1] ?? 0) + (map[first + 3] ?? 0);

  if (pair1 > pair2) {
    res
      ..add(input[first])
      ..addAll(sumLargestNonAdjacentNums(input, first: first + 2));
  } else if (pair1 < pair2) {
    res.addAll([
      input[first + 1],
      ...sumLargestNonAdjacentNums(input, first: first + 3),
    ]);
  } else {
    final path1 = sumLargestNonAdjacentNums(input, first: first + 1);
    final path2 = sumLargestNonAdjacentNums(input, first: first + 2);

    final sum1 = path1.reduce((value, element) => value + element);
    final sum2 = path2.reduce((v, e) => v + e) + input[first];

    if (sum1 > sum2) return path1;
    return path2;
  }

  return res;
}
