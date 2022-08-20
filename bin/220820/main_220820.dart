void main() {
  print('Day 4 - 220820');

  print(car(cons(3, 4)) == 3);
  print(cdr(cons(3, 4)) == 4);
}

String doSomething() => '220820';

int Function(int Function(int, int) f) cons(int a, int b) {
  int pair(int Function(int, int) f) {
    return f(a, b);
  }

  return pair;
}

int car(int Function(int Function(int, int)) pair) {
  return pair.call((a, b) => a);
}

int cdr(int Function(int Function(int, int)) pair) {
  return pair.call((a, b) => b);
}
