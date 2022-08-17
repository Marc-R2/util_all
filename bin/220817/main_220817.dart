void main() {
  print('Day 1 - 220817');

  print(productsOfEveryOtherNumber([1, 2, 3, 4, 5]));
  print(productsOfEveryOtherNumberHard([1, 2, 3, 4, 5]));
}

String doSomething() => '220817';

List<int> productsOfEveryOtherNumber(List<int> list) {
  final res = <int>[];
  final product = list.reduce((value, element) => value * element);
  for (final e in list) {
    res.add(product ~/ e);
  }
  return res;
}


/// Implements productsOfEveryOtherNumber without division
List<int> productsOfEveryOtherNumberHard(List<int> list) {
  final res = <int>[];
  for (var i = 0; i < list.length; i++) {
    var product = 1;
    for (var j = 0; j < list.length; j++) {
      if (j != i) product *= list[j];
    }
    res.add(product);
  }
  return res;
}
