abstract class Stack {
  bool isEmpty();
  void push(String item);
  String pop();
  String top();
  List<String> getStack();
}

class ListImplementation extends Stack {
  List<String> _stack = [];
  @override
  bool isEmpty() {
    return _stack.isEmpty;
  }

  @override
  String pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.removeLast();
  }

  @override
  void push(String item) {
    _stack.add(item);
  }

  @override
  String top() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.last;
  }

  @override
  List<String> getStack() {
    return _stack;
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
