import 'dart:math';

void main() {
  print('Day 13 - 220829');

  print(estimatePI(27000000));
}

String doSomething() => '220829';

double estimatePI(int pointCount) {
  final points = List.generate(pointCount, (index) {
    final x = Random().nextDouble();
    return Offset(x, sqrt(1 - pow(x, 2)));
  })
    ..sort((a, b) => a.x.compareTo(b.x))..add(Offset(1, 0));

  /*final points = List.generate(pointCount, (index) {
    final x = index / pointCount;
    return Offset(x, sqrt(1 - pow(x, 2)));
  });*/

  var of = Offset(0, 1);
  var dist = 0.0;

  for (final o in points) {
    dist += of.distanceTo(o);
    of = o;
  }

  return 2 * dist;
}

class Offset {
  Offset(this.x, this.y);

  double x;
  double y;

  double distanceTo(Offset otherOffset) {
    final x = this.x - otherOffset.x;
    final y = this.y - otherOffset.y;
    return sqrt(pow(x, 2) + pow(y, 2));
  }

  @override
  String toString() => '($x/$y)';
}
