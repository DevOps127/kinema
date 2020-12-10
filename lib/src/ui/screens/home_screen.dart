import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:kinema/getit.dart';
import 'package:kinema/src/core/models/popular.dart';
import 'package:kinema/src/core/services/movie_service.dart';
import 'package:kinema/src/ui/themes/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final movieService = getIt<MovieService>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: FutureBuilder<Response<Popular>>(
        future: movieService.getPopularMovies(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.3,
                ),
              );
            }

            final popular = snapshot.data.body as Popular;

            return ListView.builder(
              itemCount: popular.results.length,
              itemBuilder: (_, i) => Text(
                popular.results[i].title,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.colorWhite,
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
