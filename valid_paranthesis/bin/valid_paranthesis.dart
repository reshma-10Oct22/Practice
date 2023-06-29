import 'dart:io';
import 'package:valid_paranthesis/valid_paranthesis.dart';

void main(List<String> arguments) {
  String paranthesis = ")";
  print(paranthesis);
  if (isValid(paranthesis)) {
    print("The entered paranthesis is valid");
  } else {
    print("The entered paranthesis is not valid");
  }
}
