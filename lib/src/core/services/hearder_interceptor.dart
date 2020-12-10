import 'dart:async';

import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = 'Authorization';

  static const String BEARER = "Bearer ";

  static const String TOKEN =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiY2IxODRhMzE3MzM1YWQ5M2RhMDBmNTQzYWI0NGYwNCIsInN1YiI6IjVlOGU1NTYxZmRjMTQ2MDAxMzQ0MzlmMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GwX3fem9q9Hm3TXv6Z5H5YEZgsBBEGqEZBCK68tTpwE';

  @override
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest = request.replace(
      headers: {AUTH_HEADER: BEARER + TOKEN},
    );

    return newRequest;
  }
}
