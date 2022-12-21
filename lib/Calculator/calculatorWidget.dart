import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tutorial/Calculator/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userQuestion = '';
  var userAnswer = '';
  bool more_than_one_operator = false;
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    '00',
    '='
  ];

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'x' || x == '+' || x == '-' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuestion = userQuestion;
    if (userQuestion.contains('Invalid Expression')) {
      setState(() {
        userQuestion = '';
      });
    }
    if ('+'.allMatches(finalQuestion).length > 1 ||
        'x'.allMatches(finalQuestion).length > 1 ||
        '/'.allMatches(finalQuestion).length > 1 ||
        '-'.allMatches(finalQuestion).length > 1 ||
        '%'.allMatches(finalQuestion).length > 1) {
      more_than_one_operator = true;
    }
    if (more_than_one_operator) {
      setState(() {
        userQuestion = 'Invalid Expression';
        more_than_one_operator = false;
      });
    } else {
      finalQuestion = finalQuestion.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finalQuestion);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      userQuestion = eval.toString();
      more_than_one_operator = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  userQuestion,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              // Container(
              //   alignment: Alignment.centerRight,
              //   child: Text(
              //     userAnswer,
              //     style: const TextStyle(fontSize: 20),
              //   ),
              // ),
            ],
          ),
        )),
        Expanded(
            flex: 2,
            child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: ((context, index) => (index == 0)
                        ? MyButton(buttonTapped: () {
                            setState(() {
                              userQuestion = '';
                              userAnswer = '';
                            });
                          }, Colors.green, Colors.white, buttons[index])
                        : (index == 1)
                            ? MyButton(buttonTapped: () {
                                setState(() {
                                  userQuestion = userQuestion.substring(
                                      0, userQuestion.length - 1);
                                });
                              }, Colors.red, Colors.white, buttons[index])
                            : (index == buttons.length - 1)
                                ? MyButton(buttonTapped: () {
                                    setState(() {
                                      equalPressed();
                                    });
                                  }, Colors.deepPurple, Colors.white,
                                    buttons[index])
                                : MyButton(buttonTapped: () {
                                    setState(() {
                                      userQuestion += buttons[index];
                                    });
                                  },
                                    isOperator(buttons[index])
                                        ? Colors.deepPurple
                                        : Colors.deepPurple.shade50,
                                    isOperator(buttons[index])
                                        ? Colors.white
                                        : Colors.deepPurple,
                                    buttons[index]))))),
      ]),
    );
  }
}
