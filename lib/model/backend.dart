import 'app.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of apps.
  final _apps = [
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
    )
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<App> getApps() {
    return _apps;
  }
}
