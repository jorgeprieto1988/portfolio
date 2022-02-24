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
      description:
          'QuickSOS is an Android App that allows you contact an emergency service or a friend in a quick way whenever or wherever you are.',
      languages: 'Kotlin',
      image: 'images/quicksosquare.png',
      funcionalities:
          'Create an informative alarm in two steps, Shows your position in a map, Search and add friends, Send and receive help alarms to friends',
      arquitecture: 'MVP',
      librariesservices:
          'Room, Coroutines, Firebase, Picasso, Mockito, Espresso, Maps',
      github: 'https://github.com/jorgeprieto1988/QuickSoS2',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
      image: '',
      funcionalities: '',
      arquitecture: '',
      librariesservices: '',
      github: '',
    ),
    App(
      name: 'MovieHunters',
      description: 'desc',
      languages: 'Kotlin',
      image: '',
      funcionalities: '',
      arquitecture: '',
      librariesservices: '',
      github: '',
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
