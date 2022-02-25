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
        playstore: ''),
    App(
        name: 'BetsuBetsu',
        description:
            'BetsuBetsu is an app that allows you to split a bill among any number of persons in a quick and easy way.',
        languages: 'Kotlin',
        image: 'images/betsubetsu.png',
        funcionalities: '',
        arquitecture: '',
        librariesservices: '',
        github: 'https://github.com/jorgeprieto1988/BetsuBetsu',
        playstore:
            'https://play.google.com/store/apps/details?id=prieto.jorge.betsubetsu'),
    App(
        name: 'MovieHunters',
        description:
            'Movie Hunters is a party game designed to have fun playing with your friends internationally. It consists of guessing the largest number of movies, from a wide selection, in the shortest time possible, using only gestures. It shows movie titles in 3 different languages, English, Spanish and Japanese',
        languages: 'Java',
        image: 'images/moviehunters.png',
        funcionalities: '',
        arquitecture: '',
        librariesservices: '',
        github: 'https://github.com/jorgeprieto1988/MovieHunters',
        playstore:
            'https://play.google.com/store/apps/details?id=jorjoxo.app.moviehunters'),
    App(
        name: 'TrueOrFalse',
        description:
            'True or false quizz game. This app uses https://opentdb.com/ API',
        languages: 'Flutter',
        image: 'images/trueorfalsesquare.png',
        funcionalities: '',
        arquitecture: '',
        librariesservices: '',
        github: 'https://github.com/jorgeprieto1988/quizz',
        playstore: ''),
    App(
        name: 'TwitchAPI',
        description:
            'Android app that uses the twitch api to show a list of streamers. Master degree small project',
        languages: 'Kotlin',
        image: 'images/twitchapi.png',
        funcionalities: '',
        arquitecture: '',
        librariesservices: '',
        github: 'https://github.com/jorgeprieto1988/twitchAPI',
        playstore: ''),
    App(
        name: 'Multipurpose-Project',
        description:
            'Android app that uses a map to locate museums, a list of museums, an small quizz and allows you to take a picture for your profile. Master degree small project',
        languages: 'Kotlin',
        image: 'images/multipurposeproject.png',
        funcionalities: '',
        arquitecture: '',
        librariesservices: '',
        github: 'https://github.com/jorgeprieto1988/Multipurpose-Project',
        playstore: ''),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<App> getApps() {
    return _apps;
  }
}
