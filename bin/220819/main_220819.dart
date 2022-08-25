void main() {
  print('Day 3 - 220819');

  final input1 = <int>[3, 4, -1, 1]; // 2
  final inpuz1 = <int>[2, 2, 2, 2]; // 2
  final input2 = <int>[1, 2, 0]; // 3
  final input3 = <int>[
    0,
    0,
  ]; // 2

  print(smallestIntNotInList(input1));
  print(smallestIntNotInList(input2));
}

String doSomething() => '220819';

/// https://stackoverflow.com/questions/51346136/given-an-array-of-integers-find-the-first-missing-positive-integer-in-linear-ti
int missingInt(List<int> input) {
  var i = 0;

  while (i < input.length) {
    final j = input[i];
    if (0 < j && j < input.length && j != input[j - 1]) {
      // input[i], input[j - 1] = input[j - 1], input[i];
      final tmp = input[i];
      input[i] = input[j - 1];
      input[j - 1] = tmp;
    } else {
      i++;
    }
  }

  // return next((x + 1 for x in range(n) if nums[x] != x + 1), n + 1)
  for (var i = 0; i < input.length; i++) {
    if (input[i] != i + 1) return i + 1;
  }
  return input.length + 1;
}

/// First solution - in n^2
// TODO(Marc-R2): Bug - only find greater gap if there is a gap of 2
// [1, 2, 3, 6, 7] => 5
int smallestIntNotInList(List<int> list) {
  int? low;
  var max = 0;

  for (final i in list) {
    if (i > max) max = i;
    if (i > 1 && (low == null || i < low)) {
      var found = false;
      for (final j in list) {
        if (i == j + 1) found = true;
      }
      if (!found) low = i;
    }
  }

  if (low == null) return max + 1;

  return low - 1;
}
