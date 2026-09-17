import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  group('Calculator App Unit Tests', () {
    final calculator = Calculator();

    // Test 1: Addition (Checking 2 + 2 = 4)
    test('Addition test: 2 + 2 should equal 4', () {
      final result = calculator.add(2, 2);
      expect(result, 4);
    });

    // Test 2: Subtraction
    test('Subtraction test: 5 - 3 should equal 2', () {
      final result = calculator.subtract(5, 3);
      expect(result, 2);
    });

    // Test 3: Multiplication
    test('Multiplication test: 3 * 4 should equal 12', () {
      final result = calculator.multiply(3, 4);
      expect(result, 12);
    });

    // Test 4: Division
    test('Division test: 10 / 2 should equal 5.0', () {
      final result = calculator.divide(10, 2);
      expect(result, 5.0);
    });

    // Test 5: Conditional logic check (isEven)
    test('Even number validation test: 4 should be even', () {
      final result = calculator.isEven(4);
      expect(result, true);
    });
  });
}