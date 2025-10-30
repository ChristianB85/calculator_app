import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Calculator", home: CalculatorWidget());
  }
}

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(18),
              child: Text("20", style: const TextStyle(fontSize: 24)),
              alignment: Alignment.bottomRight,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(color: const Color.fromARGB(255, 230, 223, 223)),
          ),
          Expanded(flex: 4, child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}
