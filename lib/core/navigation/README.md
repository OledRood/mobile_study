# Система навигации на Riverpod

Система навигации создана с использованием Riverpod и Go Router. Обеспечивает легкое подключение к навигации из любых DI файлов.

## Структура файлов

### `app_routes.dart`
- Определяет все маршруты приложения через enum `AppRoutes`
- Конфигурирует `GoRoute` для каждого экрана
- Определяет начальный маршрут

### `router_notifier.dart`
- Содержит `routerProvider` - главный провайдер для GoRouter
- Настройка роутера с начальным маршрутом и всеми routes

### `app_navigation.dart`
- Основной класс `AppNavigation` для управления навигацией
- Предоставляет удобные методы для навигации:
  - `goToHome()` - переход на главную
  - `goToSplash()` - переход на splash
  - `goBack()` - возврат назад
  - `push(path)` - добавить маршрут в стек
  - `pushReplacement(path)` - заменить текущий маршрут
  - И другие методы для работы с именованными маршрутами

### `navigator_di.dart`
- DI контейнер для системы навигации
- `NavigatorDi.routerProvider` - провайдер GoRouter
- `NavigatorDi.appNavigationProvider` - провайдер AppNavigation

## Как подключаться к навигации из других DI

### В любом DI файле:

```dart
import 'package:mobile_study/core/navigation/navigator_di.dart';

class YourFeatureDi {
  static final yourViewModelProvider = StateNotifierProvider<YourViewModel, YourModel>(
    (ref) => YourViewModel(
      appNavigation: ref.read(NavigatorDi.appNavigationProvider),
    ),
  );
}
```

### В ViewModel:

```dart
class YourViewModel extends StateNotifier<YourModel> {
  final AppNavigation appNavigation;

  YourViewModel({required this.appNavigation}) : super(initialState);

  void navigateToHome() {
    appNavigation.goToHome();
  }

  void navigateToSplash() {
    appNavigation.goToSplash();
  }
}
```

### В сервисах:

```dart
class YourService {
  final AppNavigation appNavigation;

  YourService({required this.appNavigation});

  void someMethodThatNavigates() {
    appNavigation.goToHome();
  }
}
```

## Добавление новых маршрутов

1. Добавить новый маршрут в `AppRoutes` enum в `app_routes.dart`
2. Добавить соответствующий `GoRoute` в массив `appRoutes`
3. При необходимости добавить удобный метод в `AppNavigation`

## Пример использования

См. файл `navigation_usage_example.dart` для примеров подключения навигации в различных сценариях.