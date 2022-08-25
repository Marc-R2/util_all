import 'dart:math';

void main() {
  print('Day 8 - 220824');
  const s1 = <int>[2, 4, 6, 2, 5];
  const s2 = <int>[5, 1, 1, 5];

  print(sumLargestNonAdjacentNums(s1));
  print(sumLargestNonAdjacentNums(s2));
}

String doSomething() => '220824';

int sumLargestNonAdjacentNums(List<int> input) {
  var first = 0;
  var second = 0;

  for (var i = input.length - 1; i >= 0; i--) {
    final newSum = max(input[i] + second, first);
    second = first;
    first = newSum;
  }

  return first;
}
