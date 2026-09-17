import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_app/main.dart';

void main() {
  group('Calculator App Unit Tests', () {
    final calculator = Calculator();

    test('Addition test: 2 + 2 should equal 4', () {
      final result = calculator.add(2, 2);
      expect(result, 4);
    });

    test('Subtraction test: 5 - 3 should equal 2', () {
      final result = calculator.subtract(5, 3);
      expect(result, 2);
    });

    test('Multiplication test: 3 * 4 should equal 12', () {
      final result = calculator.multiply(3, 4);
      expect(result, 12);
    });

    test('Division test: 10 / 2 should equal 5.0', () {
      final result = calculator.divide(10, 2);
      expect(result, 5.0);
    });

    test('Even number validation test: 4 should be even', () {
      final result = calculator.isEven(4);
      expect(result, true);
    });
  });
}