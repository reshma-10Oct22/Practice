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
