class Mood {
  final String emoji;
  final String label;
  final String message;
  final String animation;
  final String moodType;

  Mood({
    required this.emoji,
    required this.label,
    required this.message,
    required this.animation,
    required this.moodType,
  });
}

final List<Mood> moods = [
  Mood(
    emoji: '😃',
    label: 'Happy',
    message: 'I’m feeling awesome!',
    animation: 'assets/animations/Happy.json',
    moodType: 'happy',
  ),
  Mood(
    emoji: '😢',
    label: 'Sad',
    message: 'Feeling a bit low...',
    animation: 'assets/animations/Sad.json',
    moodType: 'sad',
  ),
  Mood(
    emoji: '😡',
    label: 'Angry',
    message: 'I’m fired up!',
    animation: 'assets/animations/Angry.json',
    moodType: 'angry',
  ),
];
