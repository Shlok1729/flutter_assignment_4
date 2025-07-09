import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lottie/lottie.dart';
import 'mood_data.dart';
import 'mood_card.dart';

void main() {
  runApp(const EmojiMoodMatcherApp());
}

class EmojiMoodMatcherApp extends StatelessWidget {
  const EmojiMoodMatcherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Mood Matcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Arial'),
      home: const MoodHomePage(),
    );
  }
}

class MoodHomePage extends StatefulWidget {
  const MoodHomePage({super.key});

  @override
  State<MoodHomePage> createState() => _MoodHomePageState();
}

class _MoodHomePageState extends State<MoodHomePage> {
  final FlutterTts flutterTts = FlutterTts();
  Color backgroundColor = Colors.white;
  Mood? selectedMood;

  void handleMoodTap(Mood mood) async {
    setState(() {
      selectedMood = mood;
      backgroundColor = getMoodColor(mood.moodType);
    });

    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.1);
    await flutterTts.speak(mood.message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Emoji Mood Matcher 😊'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          if (selectedMood != null)
            SizedBox(height: 180, child: Lottie.asset(selectedMood!.animation)),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: moods.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final mood = moods[index];
                return MoodCard(mood: mood, onTap: () => handleMoodTap(mood));
              },
            ),
          ),
        ],
      ),
    );
  }
}

Color getMoodColor(String moodType) {
  switch (moodType) {
    case 'happy':
      return Colors.yellow.shade200;
    case 'sad':
      return Colors.blue.shade100;
    case 'angry':
      return Colors.red.shade200;
    case 'sleepy':
      return Colors.purple.shade100;
    case 'excited':
      return Colors.orange.shade200;
    default:
      return Colors.grey.shade200;
  }
}
