void main() {
  print('Day 0 - 220816');

  final k = 17;

  print(twoAddUpToKbrutForce([10, 15, 3, 7], k));
  print(twoAddUpToKbrutForce([10, 15, 3, 8], k));
}

String doSomething() => '220816';

bool twoAddUpToKbrutForce(List<int> list, int k) {
  for (final i in list.asMap().keys) {
    for (final j in list.asMap().keys) {
      if (i != j && list[i] + list[j] == k) return true;
    }
  }
  return false;
}

bool twoAddUpToK(List<int> list, int k) {
  final map = <int, int>{};
  for (final i in list) {
    if (map.containsKey(k - i)) return true;
    map[i] = i;
  }
  return false;
}
