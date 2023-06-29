import 'package:valid_paranthesis/valid_paranthesis.dart';
import 'package:test/test.dart';

import '../bin/valid_paranthesis.dart';

void main() {
  // Valid Parnthesis
  test('Valid', () {
    expect(isValid("()"), true);
  });

  test('Valid', () {
    expect(isValid("[]"), true);
  });

  test('Valid', () {
    expect(isValid("{}"), true);
  });
  test('Valid', () {
    expect(isValid("({[]})"), true);
  });

  // Invalid Paranthesis

  test('Invalid', () {
    expect(isValid("}"), false);
  });
  test('Invalid', () {
    expect(isValid("(}"), false);
  });

  test('Invalid', () {
    expect(isValid("([)]"), false);
  });
}
