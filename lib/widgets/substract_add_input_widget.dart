import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class SubstractAddInputWidget extends StatelessWidget {
  const SubstractAddInputWidget(
      {Key? key,
      required this.text,
      required this.counter,
      required this.stateSubstract,
      required this.stateAdd})
      : super(key: key);

  final String text;
  final int counter;
  final Function() stateSubstract;
  final Function() stateAdd;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: kTextStyle,
          ),
          Text(
            '$counter',
            style: kTextStyleNumbers,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  heroTag: null,
                  backgroundColor: const Color(0xFF8D8E98),
                  onPressed: stateSubstract,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                  heroTag: null,
                  backgroundColor: const Color(0xFF8D8E98),
                  onPressed: stateAdd,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
