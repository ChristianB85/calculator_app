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
  String _input = "0";
  String _output = "0";

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
              child: Text(_input, style: const TextStyle(fontSize: 24)),
              alignment: Alignment.bottomRight,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 230, 223, 223),
              padding: const EdgeInsets.all(18),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(flex: 4, child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}
