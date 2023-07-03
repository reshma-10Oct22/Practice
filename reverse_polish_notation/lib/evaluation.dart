import 'package:reverse_polish_notation/operations.dart';
import 'stack.dart';

int evaluateNotation(List<String> tokens){
  Stack stack = ListImplementation();
  Operation operation = OperationImpl();
  int result = 0;
  for(String element in tokens){
    switch(element){
        case "+":
          int num2 = stack.pop();
          int num1 = stack.pop();
          result = operation.add(num1, num2);
          stack.push(result);
          break;
        case "-":
          int num2 = stack.pop();
          int num1 = stack.pop();
          result = operation.sub(num1, num2);
          stack.push(result);
          break;
        case "*":
          int num2 = stack.pop();
          int num1 = stack.pop();
          result = operation.mul(num1, num2);
          stack.push(result);
          break;
        case "/":
          int num2 = stack.pop();
          int num1 = stack.pop();
          result = operation.div(num1, num2);
          stack.push(result);
          break;
        default:
          stack.push(int.parse(element));
          break;
      }
  }
  return stack.top();  
}