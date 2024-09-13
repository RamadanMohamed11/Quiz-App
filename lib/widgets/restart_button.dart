import 'package:flutter/material.dart';
import 'package:quiz/pages/question_page.dart';

class RestartButton extends StatelessWidget {
  const RestartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white, width: 4)),
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const QuestionPage()));
      },
      label: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          "Restart",
          style: TextStyle(fontSize: 27),
        ),
      ),
      icon: const Icon(
        Icons.restart_alt,
        size: 40,
      ),
    );
  }
}
