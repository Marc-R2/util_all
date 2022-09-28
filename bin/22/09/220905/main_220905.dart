void main() {
  print('Day 20 - 220905');
  const list = [Interval(30, 75), Interval(0, 50), Interval(60, 150)];
  print(list);
  print(Interval.calcMinRooms(list));
}

String doSomething() => '220905';

class Interval {
  final int start;
  final int end;

  const Interval(this.start, this.end);

  @override
  String toString() => '($start, $end)';

  bool intersect(Interval other) => start < other.end && other.start < end;

  static int calcMinRooms(List<Interval> list) {
    final rooms = <List<Interval>>[];
    for (final i1 in list) {
      var found = false;
      for (final r in rooms) {
        var bad = false;
        for (final i2 in r) {
          if (!bad && i1.intersect(i2)) bad = true;
        }
        if (!bad && !found) {
          r.add(i1);
          found = true;
        }
      }
      if (!found) rooms.add([i1]);
    }
    return rooms.length;
  }
}
