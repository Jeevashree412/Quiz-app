import 'dart:io';
// Define a Question class for structure
class Question {
  String questionText;
  List<String> options;
  int correctOption;
  Question(this.questionText, this.options, this.correctOption);
}
// Function to display a qucestion and get user's answer
int askQuestion(Question q) {
  print('\n${q.questionText}');
  for (int i = 0; i < q.options.length; i++) {
    print('${i + 1}. ${q.options[i]}');
  }
  stdout.write('Your answer (1-${q.options.length}): ');
  String? input = stdin.readLineSync();
  int? answer = int.tryParse(input ?? '');

  if (answer != null && answer >= 1 && answer <= q.options.length) {
    return answer == q.correctOption ? 1 : 0;
  } else {
    print('Invalid input. No points awarded.');
    return 0;
  }
}
// Main quiz logic
void runQuiz() {
  List<Question> quiz = [
    Question('What is the capital of France?', ['Berlin', 'Madrid', 'Paris', 'Rome'], 3),
    Question('Which planet is known as the Red Planet?', ['Earth', 'Mars', 'Jupiter', 'Saturn'], 2),
    Question('Who wrote "Romeo and Juliet"?', ['Shakespeare', 'Hemingway', 'Tolkien', 'Dickens'], 1),
    Question('What is the largest mammal?', ['Elephant', 'Blue Whale', 'Giraffe', 'Hippo'], 2),
    Question('Which language is used for Flutter development?', ['Java', 'Python', 'Dart', 'C++'], 3),
  ];
  int score = 0;
  print('🧠 Welcome to the Dart Quiz!\n');
  for (var q in quiz) {
    score += askQuestion(q);
  }
  print('\n🎉 Quiz Completed!');
  print('Your final score is: $score out of ${quiz.length}');
}
void main() {
  runQuiz();
}
