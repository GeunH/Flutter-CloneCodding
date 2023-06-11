class MovieCinemaModel {
  late final dynamic title, thumb, id;

  MovieCinemaModel.fromJson(Map<dynamic, dynamic> json)
      : title = json['title'],
        thumb = json['poster_path'],
        id = json['id'];
}
