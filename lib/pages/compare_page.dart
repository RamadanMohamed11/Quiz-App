import 'package:flutter/material.dart';
import 'package:quiz/widgets/comparison_widget.dart';
import 'package:quiz/widgets/restart_button.dart';

class ComparePage extends StatelessWidget {
  const ComparePage({super.key, required this.answers});
  final List<String> answers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: Alignment.centerRight,
                colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
        child: Column(
          children: [
            SizedBox(
              height: 800,
              child: ListView.builder(
                itemCount: answers.length,
                itemBuilder: (BuildContext context, int index) {
                  return ComparisonWidget(
                    answers: answers,
                    index: index,
                  );
                },
              ),
            ),
            const RestartButton()
          ],
        ),
      ),
    );
  }
}
