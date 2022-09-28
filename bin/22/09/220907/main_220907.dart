import 'dart:math';

void main() {
  print('Day 22 - 220907');
  const w = -1;

  var matrix = <List<int>>[
    [0, 0, 0, 0],
    [w, w, 0, w],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ];

  matrix[3][0] = 1;

  printMatrix(matrix);

  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
  printMatrix(matrix = transformMatrix(matrix));
}

String doSomething() => '220907';

void printMatrix(List<List<int>> matrix) {
  for (var i = 0; i < matrix.length; i++) {
    print(matrix[i].map((e) => e == -1 ? 'w' : e));
  }
  print('^----------^');
}

List<List<int>> transformMatrix(List<List<int>> matrix) {
  final newMatrix = <List<int>>[];

  for (var i = 0; i < matrix.length; i++) {
    newMatrix.add([]);
    for (var j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == -1) {
        newMatrix[i].add(-1);
      } else if (matrix[i][j] == 0) {
        final n = neighbours(matrix, i, j);
        newMatrix[i].add(n == 0 ? 0 : n + 1);
      } else {
        newMatrix[i].add(matrix[i][j]);
      }
    }
  }

  return newMatrix;
}

// Get the smallest neighboring for a given cell
int neighbours(List<List<int>> matrix, int x, int y) {
  final neighbours = <int>[];

  if (x > 0) neighbours.add(matrix[x - 1][y]);

  if (x < matrix.length - 1) neighbours.add(matrix[x + 1][y]);

  if (y > 0) neighbours.add(matrix[x][y - 1]);

  if (y < matrix[x].length - 1) neighbours.add(matrix[x][y + 1]);

  neighbours.removeWhere((element) => element == -1 || element == 0);

  if (neighbours.isEmpty) return 0;
  return neighbours.reduce(min);
}


