import 'package:flutter/material.dart';
import 'package:quiz/pages/compare_page.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key, required this.score, required this.answers});
  final int score;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[900],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    "Your score = $score/10",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 3, color: Colors.deepPurple[900]!),
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ComparePage(answers: answers)));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Compare Answers",
                      style: TextStyle(fontSize: 25),
                    ),
                  ))
            ],
          )),
    );
  }
}
