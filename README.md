# My AI Chat

A Flutter-based AI chat application powered by Google's Gemini 2.5 Flash model with real-time streaming responses.

## Features

- 💬 Real-time streaming responses (SSE)
- 🎨 Markdown rendering with syntax highlighting
- 📋 Copy message to clipboard
- 🔄 Typing indicator animation
- 🌙 Dark themed UI
- 🔒 Secure API key via `.env`

## Tech Stack

- **Flutter** — UI framework
- **Riverpod** — State management
- **Dio** — HTTP client & SSE streaming
- **Freezed** — Immutable models
- **flutter_dotenv** — Environment variables
- **flutter_markdown_plus** — Markdown rendering

## Project Structure

```
lib/
├── controller/
│   └── ai_controller.dart       # State management & streaming logic
├── data/
│   ├── models/
│   │   ├── chat_model.dart      # Chat message model (Freezed)
│   │   └── ai_response_data_model.dart
│   └── repository/
│       └── ai_repo.dart         # Gemini API & SSE streaming
├── infrastructure/
│   └── network/
│       └── http/
│           ├── api_provider.dart
│           ├── api_response.dart
│           └── app_exception.dart
├── screens/
│   └── chat_screen.dart         # Main chat UI
└── main.dart
```

## Setup

1. **Clone the repo**
   ```bash
   git clone <repo-url>
   cd my-ai-chat
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Create `.env` file in project root**
   ```
   GEMINI_API_KEY=your_api_key_here
   ```

4. **Get your Gemini API key**
    - Go to [aistudio.google.com](https://aistudio.google.com)
    - Sign in and click **Get API Key**
    - Create a new key and paste it in `.env`

5. **Generate Freezed files**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

6. **Run the app**
   ```bash
   flutter run
   ```

## Build

```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS
flutter build ios
```

## Important

- Never commit your `.env` file — it's already in `.gitignore`
- Free tier API has rate limits — if you hit a 429 error, wait a moment and try again
