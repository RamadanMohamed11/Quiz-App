import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/constants/questions.dart';
import 'package:quiz/pages/score_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late int indexOfQuest;
  late int numberOfTrueAns;
  late List<String> answers;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indexOfQuest = 0;
    numberOfTrueAns = 0;
    flutterQuestions.shuffle();
    flutterQuestions[indexOfQuest].answers.shuffle();
    answers = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: Alignment.centerRight,
                colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  flutterQuestions[indexOfQuest].question,
                  style: const TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: flutterQuestions[indexOfQuest].answers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple[900]),
                      onPressed: () {
                        answers
                            .add(flutterQuestions[indexOfQuest].answers[index]);
                        if (flutterQuestions[indexOfQuest].trueAns ==
                            flutterQuestions[indexOfQuest].answers[index]) {
                          numberOfTrueAns++;
                        }
                        if (indexOfQuest == flutterQuestions.length - 1) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScorePage(
                                        score: numberOfTrueAns,
                                        answers: answers,
                                      )));
                        } else {
                          indexOfQuest++;
                          flutterQuestions[indexOfQuest].answers.shuffle();
                          setState(() {});
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          flutterQuestions[indexOfQuest].answers[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
