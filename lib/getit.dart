import 'package:get_it/get_it.dart';
import 'package:kinema/src/core/services/movie_service.dart';

final getIt = GetIt.instance;

void locator() {
  getIt.registerSingleton<MovieService>(MovieService.create());
}
