import 'dart:io';

void main(List<String> arguments) {
  print("Enter an expression");
  String? exp = stdin.readLineSync();
  if (exp == null) {
    print("Enter a valid expression");
  }
  print(exp);
}
