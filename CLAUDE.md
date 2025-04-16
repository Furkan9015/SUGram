# SUGram Development Guidelines

## Build Commands
- `flutter pub get` - Install dependencies
- `flutter run` - Run app in debug mode
- `flutter build apk` - Build Android APK

## Testing
- `flutter test` - Run all tests
- `flutter test test/specific_test.dart` - Run specific test file
- `flutter test --name="test name"` - Run specific test

## Linting
- `flutter analyze` - Static code analysis
- `dart format lib` - Format code in lib directory

## Code Style Guidelines
- **Imports**: Group Dart, Flutter, third-party, and project imports separately
- **Naming**: camelCase for variables/methods, PascalCase for classes/enums
- **Types**: Always use strong typing, avoid dynamic where possible
- **Widgets**: Extract reusable widgets into separate files
- **Error Handling**: Use try/catch for external operations, show user-friendly messages
- **State Management**: Use Provider pattern for state management
- **Comments**: Document public APIs but keep code self-explanatory
- **Architecture**: Follow MVVM pattern with separate UI, business logic, and data layers

Refer to the [Flutter style guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo) for more details.