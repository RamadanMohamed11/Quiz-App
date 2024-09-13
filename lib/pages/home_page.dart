import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/pages/question_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.9,
              child: Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Learn Flutter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionPage()));
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white, width: 3)),
              label: const Text(
                "Start Quiz",
                style: TextStyle(fontSize: 27),
              ),
              icon: const Icon(
                Icons.arrow_right_alt_outlined,
                size: 45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
