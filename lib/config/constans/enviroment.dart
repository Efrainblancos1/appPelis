import 'package:flutter_dotenv/flutter_dotenv.dart';


class Eviroment {
  static String theMovieDbKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay api key';
}