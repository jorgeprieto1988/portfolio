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
      name: 'QuickSOS',
      description: 'desc',
      languages: 'Kotlin',
      image: 'images/quicksosquare.png',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
      image: '',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
      image: '',
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
