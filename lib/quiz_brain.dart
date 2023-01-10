import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questions = [
    Question(
        'You can lead a cow down the stairs but not up the stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('Approximately one quarter of human bones are in the feet.', true)
  ];

  bool nextQuestion() {
    if (_questionNumber + 1 < _questions.length) {
      _questionNumber++;
      return true;
    } else {
      return false;
    }
  }

  void restartQuiz() {
    _questionNumber = 0;
  }

  String getQuestion() {
    return _questions[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  int getNumberOfQuestion() {
    return _questions.length;
  }
}
