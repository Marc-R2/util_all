void main() {
  print('Day 11 - 220827');
  final set = {1, 2};

  print(countSteps(4, set));
  print(countStepsShort(4, set));
}

int countSteps(int stairs, Set<int> moves) {
  var steps = 0;
  for (final i in moves) {
    if (stairs == i) {
      steps += 1;
    } else if (stairs > i) {
      steps += countSteps(stairs - i, moves);
    }
  }
  return steps;
}

int countStepsShort(int stairs, Set<int> moves) {
  return moves.fold<int>(0, (int pre, int i) {
    if (stairs == i) return pre + 1;
    return pre + (stairs > i ? countStepsShort(stairs - i, moves) : 0);
  });
}

String doSomething() => '220827';
