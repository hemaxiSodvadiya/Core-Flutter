import 'dart:io';

void main() {
  List l1 = [];
  int i, n, v;
  print("enter else:-");
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    print("\n Enter number:-");
    v = int.parse(stdin.readLineSync()!);
    l1.add(v);
  }
  print("Enter elements in array : ");
  for (i = 0; i < n; i++) {
    print("${l1[i]}");
  }
  print("\nAll negative elements in array are : ");
  for (i = 0; i < n; i++) {
    if (l1[i] < 0) {
      print("${l1[i]}");
    }
  }
}
