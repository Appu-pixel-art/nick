
import 'dart:math';



import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DartChatApp());
}

const Color appGreen = Color(0xFF128C7E);
const Color messageGreen = Color(0xFFDCF8C6);

class DartChatApp extends StatelessWidget {
  const DartChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DartChat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appGreen),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<String> names = [
    'Arun',
    'Vignesh',
    'Karthik',
    'Murali',
    'Priya',
    'Sanjay',
  ];

  final List<String> messages = [
    'Hi macha!',
    'Enna panra?',
    'Tomorrow college varuviya?',
    'Call me when free.',
    'Good morning!',
    'Super da!',
  ];

  final List<String> times = [
    '10:30 AM',
    '10:15 AM',
    'Yesterday',
    'Yesterday',
    'Monday',
    'Sunday',
  ];

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildChats(),
      const ClipsPage(),
      const GamesPage(),
      _buildCalls(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appGreen,
        foregroundColor: Colors.white,
        title: const Text(
          'DartChat',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showMessage('Search coming soon!'),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                Navigator.push(
                  context,
<<<<<<< HEAD
                  MaterialPageRoute(builder: (_) => const ProfilePage()),
=======
                  MaterialPageRoute(
                    builder: (_) => const ProfilePage(),
                  ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                );
              } else if (value == 'settings') {
                Navigator.push(
                  context,
<<<<<<< HEAD
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
=======
                  MaterialPageRoute(
                    builder: (_) => const SettingsPage(),
                  ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                );
              }
            },
            itemBuilder: (_) => const [
<<<<<<< HEAD
              PopupMenuItem(value: 'profile', child: Text('Profile')),
              PopupMenuItem(value: 'settings', child: Text('Settings')),
=======
              PopupMenuItem(
                value: 'profile',
                child: Text('Profile'),
              ),
              PopupMenuItem(
                value: 'settings',
                child: Text('Settings'),
              ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            ],
          ),
        ],
      ),
<<<<<<< HEAD
      body: IndexedStack(index: selectedIndex, children: pages),
=======
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
      floatingActionButton: selectedIndex == 0
          ? FloatingActionButton(
              backgroundColor: appGreen,
              foregroundColor: Colors.white,
              onPressed: () => _showMessage('New chat coming soon!'),
              child: const Icon(Icons.chat),
            )
          : null,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() => selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.movie_outlined),
            selectedIcon: Icon(Icons.play_circle_fill),
            label: 'Clips',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_esports_outlined),
            selectedIcon: Icon(Icons.sports_esports),
            label: 'Games',
          ),
          NavigationDestination(
            icon: Icon(Icons.call_outlined),
            selectedIcon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }

  Widget _buildChats() {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: appGreen,
            child: Text(
              names[index][0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            names[index],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(messages[index]),
<<<<<<< HEAD
          trailing: Text(times[index], style: const TextStyle(fontSize: 11)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ChatPage(name: names[index])),
=======
          trailing: Text(
            times[index],
            style: const TextStyle(fontSize: 11),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatPage(name: names[index]),
              ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            );
          },
        );
      },
    );
  }

  Widget _buildCalls() {
    return ListView(
      children: [
        for (final name in names)
          ListTile(
            leading: CircleAvatar(
              backgroundColor: appGreen,
<<<<<<< HEAD
              child: Text(name[0], style: const TextStyle(color: Colors.white)),
=======
              child: Text(
                name[0],
                style: const TextStyle(color: Colors.white),
              ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            ),
            title: Text(name),
            subtitle: const Text('Tap to call'),
            trailing: IconButton(
              icon: const Icon(Icons.call, color: appGreen),
              onPressed: () => _showMessage('Calling $name...'),
            ),
          ),
      ],
    );
  }

  void _showMessage(String message) {
<<<<<<< HEAD
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
=======
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
  }
}

// CLIPS PAGE

class ClipsPage extends StatelessWidget {
  const ClipsPage({super.key});

  static const String clipImage =
      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=900&q=85';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'DartChat Clips',
<<<<<<< HEAD
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Text('Photos and moments', style: TextStyle(color: Colors.grey)),
=======
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Photos and moments',
          style: TextStyle(color: Colors.grey),
        ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
        const SizedBox(height: 16),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                clipImage,
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 280,
                    width: double.infinity,
                    color: Colors.grey.shade300,
<<<<<<< HEAD
                    child: const Icon(Icons.image_not_supported, size: 60),
=======
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 60,
                    ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                  );
                },
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: appGreen,
<<<<<<< HEAD
                  child: Icon(Icons.play_arrow, color: Colors.white),
=======
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                ),
                title: Text(
                  'DartChat Clips',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Featured image'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {
<<<<<<< HEAD
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(const SnackBar(content: Text('Liked!')));
=======
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Liked!')),
                        );
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share_outlined),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Share coming soon!')),
                        );
                      },
                    ),
                    const Spacer(),
                    const Text(
                      'Photo Clip',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Center(
          child: Text(
            'More clips coming soon!',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

// CHAT PAGE

class ChatPage extends StatefulWidget {
  final String name;

  const ChatPage({super.key, required this.name});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController controller = TextEditingController();
  final List<String> sentMessages = [];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void sendMessage() {
    final text = controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      sentMessages.add(text);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appGreen,
        foregroundColor: Colors.white,
        title: Text(widget.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
<<<<<<< HEAD
            onPressed: () =>
                showAppMessage(context, 'Calling ${widget.name}...'),
=======
            onPressed: () => showAppMessage(context, 'Calling ${widget.name}...'),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
          ),
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () => showAppMessage(context, 'Video call coming soon!'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    text: 'Hi! Welcome to DartChat.',
                    isSent: false,
                  ),
                ),
                for (final message in sentMessages)
                  Align(
                    alignment: Alignment.centerRight,
                    child: ChatBubble(text: message, isSent: true),
                  ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                      ),
                      onSubmitted: (_) => sendMessage(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: appGreen,
                    child: IconButton(
                      icon: const Icon(Icons.send, color: Colors.white),
                      onPressed: sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSent;

<<<<<<< HEAD
  const ChatBubble({super.key, required this.text, required this.isSent});
=======
  const ChatBubble({
    super.key,
    required this.text,
    required this.isSent,
  });
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      constraints: const BoxConstraints(maxWidth: 280),
      decoration: BoxDecoration(
        color: isSent ? messageGreen : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(text),
    );
  }
}

// GAMES PAGE

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'DartChat Games',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _gameTile(
          context,
          'Rock Paper Scissors',
          Icons.sports_martial_arts,
          const RockPaperScissorsPage(),
        ),
        _gameTile(
          context,
          'Number Guess',
          Icons.numbers,
          const NumberGuessPage(),
        ),
<<<<<<< HEAD
        _gameTile(context, 'Quick Quiz', Icons.quiz, const QuickQuizPage()),
=======
        _gameTile(
          context,
          'Quick Quiz',
          Icons.quiz,
          const QuickQuizPage(),
        ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
        _gameTile(
          context,
          'Tic-Tac-Toe',
          Icons.grid_3x3,
          const TicTacToePage(),
        ),
      ],
    );
  }

  Widget _gameTile(
    BuildContext context,
    String title,
    IconData icon,
    Widget page,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: appGreen, size: 30),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
<<<<<<< HEAD
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
=======
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
        },
      ),
    );
  }
}

// ROCK PAPER SCISSORS

class RockPaperScissorsPage extends StatefulWidget {
  const RockPaperScissorsPage({super.key});

  @override
<<<<<<< HEAD
  State<RockPaperScissorsPage> createState() => _RockPaperScissorsPageState();
=======
  State<RockPaperScissorsPage> createState() =>
      _RockPaperScissorsPageState();
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
}

class _RockPaperScissorsPageState extends State<RockPaperScissorsPage> {
  final Random random = Random();
  String userChoice = '❔';
  String computerChoice = '❔';
  String result = 'Choose your move!';

  final List<String> choices = ['✊', '✋', '✌️'];

  void play(String choice) {
    final computer = choices[random.nextInt(choices.length)];
    String outcome;

    if (choice == computer) {
      outcome = 'It is a draw!';
    } else if ((choice == '✊' && computer == '✌️') ||
        (choice == '✋' && computer == '✊') ||
        (choice == '✌️' && computer == '✋')) {
      outcome = 'You win!';
    } else {
      outcome = 'Computer wins!';
    }

    setState(() {
      userChoice = choice;
      computerChoice = computer;
      result = outcome;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rock Paper Scissors')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 24),
            Text('You: $userChoice', style: const TextStyle(fontSize: 28)),
            Text(
              'Computer: $computerChoice',
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 12,
              children: [
                for (final choice in choices)
                  ElevatedButton(
                    onPressed: () => play(choice),
<<<<<<< HEAD
                    child: Text(choice, style: const TextStyle(fontSize: 30)),
=======
                    child: Text(
                      choice,
                      style: const TextStyle(fontSize: 30),
                    ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// NUMBER GUESS

class NumberGuessPage extends StatefulWidget {
  const NumberGuessPage({super.key});

  @override
  State<NumberGuessPage> createState() => _NumberGuessPageState();
}

class _NumberGuessPageState extends State<NumberGuessPage> {
  final Random random = Random();
  final TextEditingController controller = TextEditingController();

  late int target;
  String result = 'Guess a number from 1 to 10';

  @override
  void initState() {
    super.initState();
    target = random.nextInt(10) + 1;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void checkGuess() {
    final guess = int.tryParse(controller.text.trim());

    if (guess == null || guess < 1 || guess > 10) {
      setState(() => result = 'Enter a number from 1 to 10');
      return;
    }

    setState(() {
      if (guess == target) {
        result = 'Correct! You win!';
      } else if (guess < target) {
        result = 'Too low! Try again.';
      } else {
        result = 'Too high! Try again.';
      }
    });
  }

  void restart() {
    setState(() {
      target = random.nextInt(10) + 1;
      result = 'Guess a number from 1 to 10';
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Guess')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.numbers, size: 70, color: appGreen),
            const SizedBox(height: 20),
            Text(
              result,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22),
<<<<<<< HEAD
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Your guess',
                border: OutlineInputBorder(),
              ),
=======
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Your guess',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: checkGuess,
              child: const Text('Check'),
            ),
            TextButton(
              onPressed: restart,
              child: const Text('Play Again'),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            ),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: checkGuess, child: const Text('Check')),
            TextButton(onPressed: restart, child: const Text('Play Again')),
          ],
        ),
      ),
    );
  }
}

// QUICK QUIZ

class QuickQuizPage extends StatefulWidget {
  const QuickQuizPage({super.key});

  @override
  State<QuickQuizPage> createState() => _QuickQuizPageState();
}

class _QuickQuizPageState extends State<QuickQuizPage> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Which language is used with Flutter?',
      'options': ['Java', 'Dart', 'Python', 'C'],
      'answer': 'Dart',
    },
    {
      'question': 'What does CPU stand for?',
      'options': [
        'Central Processing Unit',
        'Computer Personal Unit',
        'Central Program Utility',
        'Control Processing User',
      ],
      'answer': 'Central Processing Unit',
    },
    {
      'question': 'Which company develops Flutter?',
      'options': ['Google', 'Apple', 'Meta', 'Microsoft'],
      'answer': 'Google',
    },
  ];

  int current = 0;
  int score = 0;
  bool answered = false;

  void chooseAnswer(String answer) {
    if (answered) return;

    setState(() {
      answered = true;
      if (answer == questions[current]['answer']) score++;
    });
  }

  void nextQuestion() {
    setState(() {
      current++;
      answered = false;
    });
  }

  void restartQuiz() {
    setState(() {
      current = 0;
      score = 0;
      answered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final finished = current >= questions.length;

    return Scaffold(
      appBar: AppBar(title: const Text('Quick Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: finished
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
<<<<<<< HEAD
                    const Icon(
                      Icons.emoji_events,
                      size: 75,
                      color: Colors.amber,
                    ),
=======
                    const Icon(Icons.emoji_events,
                        size: 75, color: Colors.amber),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                    const SizedBox(height: 16),
                    Text(
                      'Quiz completed!\nScore: $score/${questions.length}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: restartQuiz,
                      child: const Text('Play Again'),
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Question ${current + 1}/${questions.length}',
                    style: const TextStyle(color: appGreen),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    questions[current]['question'],
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (final option
                      in questions[current]['options'] as List<String>)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        onPressed: () => chooseAnswer(option),
                        child: Text(option),
                      ),
                    ),
                  if (answered) ...[
                    const SizedBox(height: 10),
                    Text(
                      questions[current]['answer'] == null
                          ? ''
                          : 'Correct answer: ${questions[current]['answer']}',
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: nextQuestion,
                      child: Text(
                        current == questions.length - 1
                            ? 'Show Result'
                            : 'Next Question',
                      ),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}

// TIC-TAC-TOE

class TicTacToePage extends StatefulWidget {
  const TicTacToePage({super.key});

  @override
  State<TicTacToePage> createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';
  String result = '';

  void playMove(int index) {
    if (board[index].isNotEmpty || result.isNotEmpty) return;

    setState(() {
      board[index] = currentPlayer;

      if (hasWon(currentPlayer)) {
        result = '$currentPlayer wins!';
      } else if (!board.contains('')) {
        result = 'It is a draw!';
      } else {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
    });
  }

  bool hasWon(String player) {
    const combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (final combo in combinations) {
      if (board[combo[0]] == player &&
          board[combo[1]] == player &&
          board[combo[2]] == player) {
        return true;
      }
    }

    return false;
  }

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      currentPlayer = 'X';
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tic-Tac-Toe')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.isEmpty ? "Player $currentPlayer's turn" : result,
<<<<<<< HEAD
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
=======
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
<<<<<<< HEAD
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
=======
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: ElevatedButton(
                      onPressed: () => playMove(index),
                      child: Text(
                        board[index],
                        style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: resetGame,
              child: const Text('Restart Game'),
            ),
          ],
        ),
      ),
    );
  }
}

// PROFILE PAGE

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: appGreen,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: appGreen,
<<<<<<< HEAD
              child: Icon(Icons.person, size: 60, color: Colors.white),
=======
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
            ),
            const SizedBox(height: 16),
            const Text(
              'DartChat User',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text('Welcome to DartChat!'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
<<<<<<< HEAD
              onPressed: () =>
                  showAppMessage(context, 'Edit profile coming soon!'),
=======
              onPressed: () => showAppMessage(context, 'Edit profile coming soon!'),
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

// SETTINGS PAGE

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notifications = true;
  bool sound = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: appGreen,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            value: notifications,
            onChanged: (value) {
              setState(() => notifications = value);
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.volume_up),
            title: const Text('Sound'),
            value: sound,
            onChanged: (value) {
              setState(() => sound = value);
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            value: darkMode,
            onChanged: (value) {
              setState(() => darkMode = value);
            },
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About DartChat'),
            subtitle: Text('Version 1.0.0'),
          ),
        ],
      ),
    );
  }
}

// COMMON MESSAGE

void showAppMessage(BuildContext context, String message) {
<<<<<<< HEAD
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
=======
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
>>>>>>> 5d5c0bdd9a0fe8c6f4b31320e6a7d83fedd868cc
}
