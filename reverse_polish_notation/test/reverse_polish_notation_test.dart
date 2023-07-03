import 'package:reverse_polish_notation/evaluation.dart';
import 'package:test/test.dart';

void main() {
  test('Test1', () {
   expect(evaluateNotation(["2","1","+","3","*"]), 9);
  });

   test('Test2', () {
   expect(evaluateNotation(["4","13","5","/","+"]), 6);
  });

   test('Test3', () {
   expect(evaluateNotation(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]), 22);
  });
}
