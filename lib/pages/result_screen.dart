import 'package:bmi_calculator_app_ui/widgets/bottom_page_button_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  static const id = '/result_screen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  double result = 25.0;
  String state = "NORMAL";
  dynamic map = {};

  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)!.settings.arguments;
    result = map['result'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result >= 25
                        ? "OVERWEIGHT"
                        : result > 18
                            ? "NORMAL"
                            : "UNDERWEIGHT",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)),
                  ),
                  Text(
                    result.toStringAsFixed(1),
                    style: const TextStyle(
                        fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      result >= 25
                          ? "You have a higher than normal body weight. Try to exercize more."
                          : result > 18
                              ? "You have a normal body weight. Good job!"
                              : "You have a lower than normal body weight. You can eat a bit more.",
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
            ),
          ),
          BottomPageButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
