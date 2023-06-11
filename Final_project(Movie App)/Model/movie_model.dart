class MovieModel {
  late final dynamic thumb, id;

  MovieModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    thumb = json['poster_path'];
  }
}
