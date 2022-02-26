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
        playstore: '',
        screenshot1: 'images/quicksos1.png',
        screenshot2: 'images/quicksos2.png',
        screenshot3: 'images/quicksos3.png',
        largeDescription:
            '''QuickSOS is my end of master project. This app aims to help people to contact emergency services or friends in a quick way in case of emergency.
        \n With an easy to understand interface, this app implements google maps API to collect your position and show it in a map, where other people can check to locate and help you. 
        \n It uses MVP architecture to help creating unit tests.
        \n It implements firebase services to allow user creation, user identification, alarm consultation and creation, and user interaction among others features
        \n It uses coroutines to show changes in real life like alarm alerts and user friend updates
        \n Some libraries that uses are Room, Coroutines, Firebase, Picasso, Mockito, Espresso and Maps'''),
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
            'https://play.google.com/store/apps/details?id=prieto.jorge.betsubetsu',
        screenshot1: 'images/betsubetsu1.png',
        screenshot2: 'images/betsubetsu2.png',
        screenshot3: 'images/betsubetsu3.png',
        largeDescription:
            '''BetsuBetsu is a project that come to my mind after living in Japan when going to a restaurant and you want to pay separately and then it gets complicated when you have to add the prices with taxes to every separate item.
        \n It was meant to be a one screen app but the need to add diferent users and items to the bill made me realize addin a result screen would make it easier to the user experience.
        \n This was made in Kotlin and uses two concatenated recyclerview lists (users and items) with a horizontal scrolling for users to facilitate the use of the app
        \n It shows and ad from Admob in the result screen to help me understand Admob and how the revenue in android apps works'''),
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
            'https://play.google.com/store/apps/details?id=jorjoxo.app.moviehunters',
        screenshot1: '',
        screenshot2: '',
        screenshot3: '',
        largeDescription: ''),
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
        playstore: '',
        screenshot1: '',
        screenshot2: '',
        screenshot3: '',
        largeDescription: ''),
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
        playstore: '',
        screenshot1: '',
        screenshot2: '',
        screenshot3: '',
        largeDescription: ''),
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
        playstore: '',
        screenshot1: '',
        screenshot2: '',
        screenshot3: '',
        largeDescription: ''),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<App> getApps() {
    return _apps;
  }
}
