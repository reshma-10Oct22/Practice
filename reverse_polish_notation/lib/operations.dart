abstract class Operation{
  int add(int num1, int num2);
  int sub(int num1, int num2);
  int mul(int num1, int num2);
  int div(int num1, int num2);
}

class OperationImpl extends Operation{
  @override
  int add(int num1, int num2) {
    return num1+num2;
  }

  @override
  int div(int num1, int num2) {
    if(num2==0){
      throw Exception("Number can't be divided by zero");
    }
    return num1~/num2;
  }

  @override
  int mul(int num1, int num2) {
    return num1*num2;
  }

  @override
  int sub(int num1, int num2) {
    return num1-num2;
  }

}