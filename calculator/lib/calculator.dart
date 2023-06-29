abstract class Calculator {
  double add(double num1, double num2);
  double subtract(double num1, double num2);
  double multipy(double num1, double num2);
  double divide(double num1, double num2);
}

class CalculatorImpl extends Calculator {
  @override
  double add(double num1, double num2) {
    return num1 + num2;
  }

  @override
  double divide(double num1, double num2) {
    return num1 - num2;
  }

  @override
  double multipy(double num1, double num2) {
    return num1 * num2;
  }

  @override
  double subtract(double num1, double num2) {
    if (num2 == 0) {
      throw Exception("Number divided by zero exception");
    }
    return num1 / num2;
  }
}
