import 'package:flutter/material.dart';
import 'package:myapp/models/question_list.dart';
import 'package:myapp/models/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 1;
  final List<String?> _selectedAnswers = [];
  List<dynamic> questions = [];

  @override
  void initState() {
    super.initState();
    questions = QuestionsData.getInitialQuestions();
  }

  void _nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Handle quiz completion, like navigating to the results screen
      Navigator.of(context).pushReplacementNamed(
          '/results'); // Replace with your results screen route.
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = currentQuestionIndex < questions.length
        ? questions[currentQuestionIndex]
        : null;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentQuestion?.question ?? 'No question available',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(currentQuestion?.answers.length ?? 0, (index) {
              return RadioListTile<String>(
                title: Text(currentQuestion!.answers[index]),
                value: currentQuestion!.answers[index],
                groupValue: _selectedAnswers.length > currentQuestionIndex
                    ? _selectedAnswers[currentQuestionIndex]
                    : '',
                onChanged: (String? value) {
                  setState(() {
                    if (_selectedAnswers.length > currentQuestionIndex) {
                      _selectedAnswers[currentQuestionIndex] = value!;
                    } else {
                      _selectedAnswers.add(value!); // or value as String
                    }
                  });
                },
              );
            }),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => _nextQuestion(),
                child: Text(
                  currentQuestionIndex < questions.length - 1
                      ? 'Next Question'
                      : 'Submit Quiz',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
