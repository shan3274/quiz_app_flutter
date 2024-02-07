import 'package:quize_app/models/quiz_question.dart';

var questions = [
  [
    QuizQuestion(
      'What are the main building blocks of Flutter UIs?',
      [
        'Widgets',
        'Components',
        'Blocks',
        'Functions',
      ],
    ),
    QuizQuestion('How are Flutter UIs built?', [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ]),
    QuizQuestion(
      'What\'s the purpose of a StatefulWidget?',
      [
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ],
    ),
    QuizQuestion(
      'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ],
    ),
    QuizQuestion(
      'What happens if you change data in a StatelessWidget?',
      [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
      ],
    ),
    QuizQuestion(
      'How should you update data inside of StatefulWidgets?',
      [
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
      ],
    ),
  ],
  [
    QuizQuestion(
      'What is the capital of France?',
      [
        'Paris',
        'London',
        'Berlin',
        'Rome',
      ],
    ),
    QuizQuestion('Which planet is closest to the sun?', [
      'Mercury',
      'Venus',
      'Earth',
      'Mars',
    ]),
    QuizQuestion(
      'Who wrote "Romeo and Juliet"?',
      [
        'William Shakespeare',
        'Jane Austen',
        'Charles Dickens',
        'Mark Twain',
      ],
    ),
    QuizQuestion(
      'What is the chemical symbol for water?',
      [
        'H2O',
        'CO2',
        'NaCl',
        'O2',
      ],
    ),
    QuizQuestion(
      'What is the tallest mammal on Earth?',
      [
        'Giraffe',
        'Elephant',
        'Hippo',
        'Rhino',
      ],
    ),
    QuizQuestion(
      'Who painted the Mona Lisa?',
      [
        'Leonardo da Vinci',
        'Vincent van Gogh',
        'Pablo Picasso',
        'Michelangelo',
      ],
    ),
  ],
  [
    QuizQuestion(
      'What is the largest ocean on Earth?',
      [
        'Pacific Ocean',
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean',
      ],
    ),
    QuizQuestion('Which gas do plants use for photosynthesis?', [
      'Carbon dioxide',
      'Oxygen',
      'Nitrogen',
      'Hydrogen',
    ]),
    QuizQuestion(
      'Who developed the theory of relativity?',
      [
        'Albert Einstein',
        'Isaac Newton',
        'Galileo Galilei',
        'Stephen Hawking',
      ],
    ),
    QuizQuestion(
      'Which country is known as the Land of the Rising Sun?',
      [
        'Japan',
        'China',
        'South Korea',
        'Thailand',
      ],
    ),
    QuizQuestion(
      'What is the chemical symbol for gold?',
      [
        'Au',
        'Ag',
        'Fe',
        'Cu',
      ],
    ),
    QuizQuestion(
      'Who is the author of "The Great Gatsby"?',
      [
        'F. Scott Fitzgerald',
        'Ernest Hemingway',
        'William Faulkner',
        'John Steinbeck',
      ],
    ),
  ]
];
