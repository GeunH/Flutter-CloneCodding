class MovieSoonModel {
  late final dynamic title, thumb, id;

  MovieSoonModel.fromJson(Map<dynamic, dynamic> json)
      : title = json['title'],
        thumb = json['poster_path'],
        id = json['id'];
}
