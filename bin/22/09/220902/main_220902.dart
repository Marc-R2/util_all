void main() {
  print('Day 17 - 220902');

  print(maxList([10, 5, 2, 7, 8, 7], 3));
}

String doSomething() => '220902';

List<int> maxList(List<int> list, int k) {
  final result = <int>[];

  for (var i = 0; i < list.length - k + 1; i++) {
    final subList = list.sublist(i, i + k);
    result.add(max(subList));
  }

  return result;
}

int max(List<int> numbers) => numbers.reduce((a, b) => a > b ? a : b);
