
import 'package:cinemapedia/infraestructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infraestructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// Este repositorio es inmutable (de solo lectura)
final MovieReposityProvider = Provider((ref){
  return MovieRepositoryImpl(MoviedbDatasource());
});