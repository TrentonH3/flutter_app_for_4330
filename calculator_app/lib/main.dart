import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Calculator {
  // Simple calculator logic functions to test
  int add(int a, int b) => a + b;
  int subtract(int a, int b) => a - b;
  int multiply(int a, int b) => a * b;
  double divide(int a, int b) {
    if (b == 0) throw ArgumentError('Cannot divide by zero');
    return a / b;
  }
  bool isEven(int n) => n % 2 == 0;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key});

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  final Calculator _calculator = Calculator();
  String _result = "0";

  void _calculateAdd() {
    setState(() {
      _result = _calculator.add(2, 2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Result:', style: TextStyle(fontSize: 20)),
            Text(_result, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateAdd,
              child: const Text('Add 2 + 2'),
            ),
          ],
        ),
      ),
    );
  }
}