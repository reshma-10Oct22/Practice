abstract class Stack {
  bool isEmpty();
  void push(dynamic item);
  dynamic pop();
  dynamic top();
  List<dynamic> getStack();
}

class ListImplementation extends Stack {
  List<dynamic> _stack = [];
  @override
  bool isEmpty() {
    return _stack.isEmpty;
  }

  @override
  dynamic pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.removeLast();
  }

  @override
  void push(dynamic item) {
    _stack.add(item);
  }

  @override
  dynamic top() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.last;
  }

  @override
  List<dynamic> getStack() {
    return _stack;
  }
}

