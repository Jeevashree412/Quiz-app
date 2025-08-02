# Quiz App

The Quiz App is a console-based application developed in Dart, designed to provide users with an engaging and interactive quiz experience. The app tests users' knowledge across various domains through a series of multiple-choice questions.

## Features

- **Structured Question Management**: Utilizes a robust `Question` class to store question text, answer options, and the correct answer, ensuring data integrity and ease of maintenance.
- **Interactive User Interface**: Presents questions sequentially and captures user input for answer selection, offering immediate feedback on validity.
- **Score Calculation**: Automatically tracks the user's score, awarding points for correct answers and handling invalid inputs gracefully.
- **Diverse Question Set**: Includes questions from general knowledge, literature, science, and technology, making it suitable for a wide range of users.
- **Simple Execution**: Runs entirely in the console, requiring no external dependencies beyond Dart's core libraries.

## Usage

1. Launch the application in a Dart-supported console environment.
2. Answer each question by entering the number corresponding to your chosen option.
3. At the end of the quiz, your total score and completion message are displayed.

## Code Structure

- **Question Class**: Defines the structure for each quiz question.
- **askQuestion Function**: Handles question display, user input, and answer validation.
- **runQuiz Function**: Manages the quiz flow, scoring, and result output.
- **main Function**: Entry point for the application.

This app serves as an excellent starting point for learning Dart programming concepts and building interactive console applications.
