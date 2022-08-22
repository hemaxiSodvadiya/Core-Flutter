import 'dart:io';

// 5
void main() {
  List a = [];
  int i, j, ch;
  int n = 3;
  int m = 3;
  int sum = 0;
  int rsum = 0;

  do {
    stdout.write("""\n\n-------------ENTER------------
1 for Sum of all elements
2 for Sum of specific row
3 for Sum of specific column
4 for Sum of diagonal elements
5 for Sum of antidiagonal elements
0 for Exit :: """);

    ch = int.parse(stdin.readLineSync()!);

    switch (ch) {
      case 0:
        break;
      case 1:
        stdout.write("enter matrix 3*3 ::");

        var ascList = List.generate(n,
            (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);

        stdout.write("\n\nsum of all elements are :: ");

        var bList = List.generate(
            n, (i) => List.generate(m, (j) => sum = sum + ascList[i][j]));

        stdout.write(sum);
        break;

      case 2:
        stdout.write("enter matrix 3*3 ::");

        var ascList = List.generate(n,
            (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);

        stdout.write("\n\nsum of rows ::");

        for (int i = 0; i < n; i++) {
          for (int j = 0; j < n; j++) {
            sum += ascList[i][j];
            rsum += ascList[i][j];
          }
          print("sum of ${i + 1} row is $rsum ");
        }

        break;

      case 3:
        stdout.write("enter matrix 3*3 ::");

        var ascList = List.generate(n,
            (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);

        stdout.write("\n\nsum of coloumns ::");

        for (int i = 0; i < n; i++) {
          for (int j = 0; j < n; j++) {
            sum += ascList[i][j];
            rsum += ascList[j][i];
          }
          print("sum of ${i + 1} column is $rsum ");
        }
        break;

      case 4:
        stdout.write("enter matrix 3*3 ::");

        var ascList = List.generate(n,
            (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);

        stdout.write("\n\nSum of diagonal elements are :: ");

        for (int i = 0; i < n; i++) {
          for (int j = 0; j < n; j++) {
            if (i == j) {
              sum += ascList[i][j];
            }
          }
        }
        stdout.write(sum);
        break;

      case 5:
        stdout.write("enter matrix 3*3 ::");

        var ascList = List.generate(n,
            (i) => List.generate(m, (j) => int.parse(stdin.readLineSync()!)));
        print(ascList);

        stdout.write("\n\nSum of diagonal elements are :: ");

        for (int i = 0; i < n; i++) {
          for (int j = 0; j < n; j++) {
            if (i + j == 2) {
              sum += ascList[i][j];
            }
          }
        }
        stdout.write(sum);

        break;
      default:
        stdout.write("Put valid choice :::");
    }
  } while (ch != 0);
}
