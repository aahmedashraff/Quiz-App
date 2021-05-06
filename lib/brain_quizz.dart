import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'القاضية ممكن؟؟', a: true),
    Question(q: 'الأهلي هو نادي القرن الحقيقي؟', a: true),
    Question(q: 'الزمالك هيكسب الأهلي قريب؟', a: false),
    Question(q: 'الزمالك هياخد المركز التاني كالعادة؟', a: true),
    Question(q: 'الأهلي هياخد أفريقيا تاني ؟', a: true),
    Question(q: 'الأهلي بطل الدوري؟', a: true),
    Question(q: 'رمضان صبحي كلب فلوس؟', a: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
