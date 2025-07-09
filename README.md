# 😊 Emoji Mood Matcher

A fun and interactive Flutter app that lets you tap emojis to express your mood!  
Each emoji triggers a voice message, a cool animation, and a mood-themed background color.

---

## 🚀 Features

- Tap on an emoji to match your mood
- Hear a fun message using **Text-to-Speech**
- See a matching **Lottie animation**
- Background changes color based on mood type

---

## 📦 Packages Used

| Package         | Purpose                         |
|----------------|----------------------------------|
| [`flutter_tts`](https://pub.dev/packages/flutter_tts) | Converts text to speech               |
| [`lottie`](https://pub.dev/packages/lottie)       | Plays animated emoji-style effects    |

> ✨ Note: We intentionally avoided `flutter_randomcolor` to use meaningful mood-based colors instead.

---

## 🎯 Moods Supported

- 😃 Happy
- 😢 Sad
- 😡 Angry
- 😴 Sleepy
- 🤩 Excited

---

## 📸 Screenshot

> Add this after running the app on an emulator or device.

<img width="1919" height="994" alt="Image" src="https://github.com/user-attachments/assets/8e5503fa-003c-47bf-ac59-3fbe6ce71aed" />
<img width="1919" height="998" alt="Image" src="https://github.com/user-attachments/assets/a59f2ee8-93f3-4afe-bdba-f316e5af38b8" />
<img width="1919" height="965" alt="Image" src="https://github.com/user-attachments/assets/ea2de68e-b12d-444e-98b0-7b476fe2d873" />

> 📁 Place your screenshot in:  
> `project_root/screenshots/mood_matcher_ui.png`

---

## 🛠 How to Run

```bash
git clone https://github.com/yourusername/emoji_mood_matcher.git
cd emoji_mood_matcher
flutter pub get
flutter run
