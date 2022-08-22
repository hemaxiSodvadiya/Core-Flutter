import 'dart:io';

void main() {
  int n = 3, m = 3;
  stdout.write("enter else:-");
  var ascList = List.generate(
      n, (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
  print(ascList);

  stdout.write("enter else:-");
  var bscList = List.generate(
      n, (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
  print(bscList);
  stdout.write("enter else:-");

  var cscList = List.generate(
      n, (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
  print(cscList);
}
