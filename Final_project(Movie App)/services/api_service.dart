import 'dart:convert';

import 'package:gogo/Model/movie_cinema_model.dart';
import 'package:gogo/Model/movie_detial_model.dart';
import 'package:gogo/Model/movie_model.dart';
import 'package:gogo/Model/movie_soon_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";
  static String now = "now-playing";
  static String soon = "coming-soon";

  static Future<List<MovieModel>> getPopularMoives() async {
    List<MovieModel> movieInstances = [];
    final url = Uri.parse("$baseUrl/$popular");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<dynamic, dynamic> movies = jsonDecode(response.body);
      final List<dynamic> good = movies['results'];
      for (var movie in good) {
        movieInstances.add(MovieModel.fromJson(movie));
      }
      return movieInstances;
    }
    throw Error();
  }

  static Future<List<MovieCinemaModel>> getCinemas() async {
    List<MovieCinemaModel> movieInstances = [];
    final url = Uri.parse("$baseUrl/$now");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<dynamic, dynamic> json = jsonDecode(response.body);
      final List<dynamic> movies = json['results'];
      for (var movie in movies) {
        movieInstances.add(MovieCinemaModel.fromJson(movie));
      }
      return movieInstances;
    }
    throw Error;
  }

  static Future<List<MovieSoonModel>> getSoon() async {
    List<MovieSoonModel> movieInstances = [];
    final url = Uri.parse("$baseUrl/$soon");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<dynamic, dynamic> json = jsonDecode(response.body);
      final List<dynamic> movies = json['results'];
      for (var movie in movies) {
        movieInstances.add(MovieSoonModel.fromJson(movie));
      }
      return movieInstances;
    }
    throw Error;
  }

  static Future<MovieDetailModel> getDetailById(dynamic id) async {
    final url =
        Uri.parse("https://movies-api.nomadcoders.workers.dev/movie?id=$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final movie = jsonDecode(response.body);
      return MovieDetailModel.fromJson(movie);
    }
    throw Error();
  }
}
