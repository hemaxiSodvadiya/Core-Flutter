import 'dart:io';

void main() {
  List l1 = [];
  int i, n, v;

  print("enter else:-");
  n = int.parse(stdin.readLineSync()!);
  print("\n Enter number:-");
  for (i = 0; i < n; i++) {
    v = int.parse(stdin.readLineSync()!);
    l1.add(v);
  }
  print(" elements  : ");
  for (i = 0; i < n; i++) {
    print("${l1[i]}");
  }
  var largest = l1[0];
  print("\nlargest elements: ");
  for (i = 0; i < l1.length; i++) {
    if (l1[i] > largest) {
      largest = l1[i];
    }
  }
  print("lar:-$largest");
}
