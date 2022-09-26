void main() {
  print('Day 3 - 220819');

  final input1 = <int>[3, 4, -1, 1]; // 2
  final inpuz1 = <int>[2, 2, 2, 2]; // 2
  final input2 = <int>[1, 2, 0]; // 3
  final input3 = <int>[0, 0, ]; // 2

  print(smallestIntNotInList(input1));
  print(smallestIntNotInList(input2));
}

String doSomething() => '220819';

/// First solution - in n^2
// TODO(Marc-R2): Optimize this solution to meet the requirements
int smallestIntNotInList(List<int> list) {
  int? low;
  var max = 0;

  for (final i in list) {
    if (i > max) max = i;
    if (i > 1 && (low == null || i < low)) {
      var found = false;
      for (final j in list) {
        if (i - 1 == j) found = true;
      }
      if (!found) low = i;
    }
  }

  if (low == null) return max + 1;

  return low - 1;
}
