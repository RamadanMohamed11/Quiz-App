import '../models/question_model.dart';

List<QuestionModel> flutterQuestions = [
  QuestionModel(
    question: "What is Flutter?",
    answers: [
      "A mobile development framework",
      "A programming language",
      "A database",
      "A design tool"
    ],
    trueAns: "A mobile development framework", // Correct answer as a String
  ),
  QuestionModel(
    question: "Which programming language is used by Flutter?",
    answers: ["JavaScript", "Swift", "Dart", "Kotlin"],
    trueAns: "Dart", // Correct answer as a String
  ),
  QuestionModel(
    question: "What is the use of a 'StatefulWidget' in Flutter?",
    answers: [
      "To display static UI elements",
      "To handle dynamic data and update the UI",
      "To manage network requests",
      "To handle background tasks"
    ],
    trueAns: "To handle dynamic data and update the UI", // Correct answer
  ),
  QuestionModel(
    question: "What is a widget in Flutter?",
    answers: [
      "A database",
      "A class to build UI",
      "A storage mechanism",
      "A type of animation"
    ],
    trueAns: "A class to build UI", // Correct answer
  ),
  QuestionModel(
    question: "What is the purpose of the 'pubspec.yaml' file?",
    answers: [
      "To write Flutter app logic",
      "To define app metadata and dependencies",
      "To store images and fonts",
      "To create app themes"
    ],
    trueAns: "To define app metadata and dependencies", // Correct answer
  ),
  QuestionModel(
    question: "Which widget is used to lay out children vertically in Flutter?",
    answers: ["Row", "Column", "Stack", "GridView"],
    trueAns: "Column", // Correct answer
  ),
  QuestionModel(
    question: "What does the 'setState' method do?",
    answers: [
      "It changes the state and rebuilds the widget",
      "It destroys the widget",
      "It sends data to the server",
      "It handles user inputs"
    ],
    trueAns: "It changes the state and rebuilds the widget", // Correct answer
  ),
  QuestionModel(
    question: "What is a key feature of Flutter?",
    answers: [
      "Hot Reload",
      "No cross-platform support",
      "Low performance",
      "No widget support"
    ],
    trueAns: "Hot Reload", // Correct answer
  ),
  QuestionModel(
    question:
        "Which method is called when a 'StatefulWidget' is removed from the tree?",
    answers: ["initState()", "dispose()", "build()", "didChangeDependencies()"],
    trueAns: "dispose()", // Correct answer
  ),
  QuestionModel(
    question: "What is the default port used when running a Flutter web app?",
    answers: ["8080", "3000", "5000", "8000"],
    trueAns: "8080", // Correct answer
  ),
];
