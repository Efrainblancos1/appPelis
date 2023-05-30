import 'package:cinemapedia/domain/datasources/movies_datasources.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

import 'package:cinemapedia/domain/entities/movie.dart';

class MovieRepositoryImpl extends MovieRepository{

  final MoviesDataSource datasource;
  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}){
    return datasource.getNowPlaying(page: page);
  }

}