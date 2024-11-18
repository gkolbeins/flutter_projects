import 'package:flutter/material.dart';
import 'package:quiz_game_ghk/questions_screen.dart';
import 'package:quiz_game_ghk/start_screen.dart';
import 'package:quiz_game_ghk/data/questions.dart';
import 'package:quiz_game_ghk/results_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState  extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

 /* @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    };
  }

  @override
  Widget build(contex) {
    Widget screenWidget = StartScreen(switchScreen); 

    if (activeScreen == 'questions-screen') {
    screenWidget = QuestionsScreen(
      onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color.fromARGB(255, 74, 3, 94),
                 Color.fromARGB(255, 211, 142, 231),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
              ),
          child: screenWidget,
          ),
      ),
    );
  }
}