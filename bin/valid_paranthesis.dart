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

bool isValid(String paranthesis) {
  Stack _stack = ListImplementation();
  print(paranthesis.split(""));
  List<String> _items = ["(", "[", "{"];

  for (String p in paranthesis.split("")) {
    if (_items.contains(p)) {
      _stack.push(p);
    } else {
      if (_stack.isEmpty()) {
        return false;
      }
      var top = _stack.top();
      if ((top == "(" && p == ")") ||
          (top == "[" && p == "]") ||
          (top == "{" && p == "}")) {
        _stack.pop();
      } else {
        return false;
      }
    }
  }
  return _stack.isEmpty();
}
