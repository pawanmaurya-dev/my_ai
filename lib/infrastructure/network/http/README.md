# HTTP Network Layer

Use this directory as:

```text
lib/infrastructure/network/http
```

Structure:

```text
http/
  api_provider.dart
  api_response.dart
  api_response.freezed.dart
  app_exception.dart
  app_exception.freezed.dart
  interceptor/
    dio_connectivity_request_retrier.dart
    retry_interceptor.dart
```

Keep existing generated Freezed files if they are already present:

```text
api_response.freezed.dart
app_exception.freezed.dart
```

If generated files are missing, run this from project root:

```text
flutter pub run build_runner build --delete-conflicting-outputs
```

Add in pubspec.yaml file

```text
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.8
  connectivity_plus: ^7.1.1
  dio: ^5.9.2
  flutter_dotenv: ^6.0.1
  flutter_riverpod: ^3.3.1
  pretty_dio_logger: ^1.4.0
  freezed_annotation: ^2.4.4
  json_annotation: ^4.9.0


dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
  auto_route_generator: ^10.2.3
  build_runner: ^2.1.7
  freezed: ^2.5.7
  json_serializable: ^6.1.4
```
