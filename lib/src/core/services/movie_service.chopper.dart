// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$MovieService extends MovieService {
  _$MovieService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = MovieService;

  Future<Response<Popular>> getPopularMovies() {
    final $url = 'movie/popular';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Popular, Popular>($request);
  }
}
