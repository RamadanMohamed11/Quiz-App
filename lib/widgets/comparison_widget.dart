import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/constants/questions.dart';

class ComparisonWidget extends StatelessWidget {
  const ComparisonWidget(
      {super.key, required this.answers, required this.index});
  final int index;
  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red[400],
            child: Text(
              "${index + 1}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                flutterQuestions[index].question,
                style: const TextStyle(fontSize: 21, color: Colors.white),
              ),
              Text(
                flutterQuestions[index].trueAns,
                style: const TextStyle(fontSize: 19),
              ),
              Text(
                answers[index],
                style: TextStyle(
                    fontSize: 20,
                    color: (answers[index] == flutterQuestions[index].trueAns)
                        ? Colors.greenAccent
                        : Colors.orange),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
