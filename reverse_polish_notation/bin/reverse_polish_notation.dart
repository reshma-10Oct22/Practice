
import 'package:reverse_polish_notation/evaluation.dart';

void main(List<String> arguments) {
  List<String> tokens =  ["10","6","9","3","+","-11","*","/","*","17","+","5","+"];
  print(evaluateNotation(tokens)); 
}
