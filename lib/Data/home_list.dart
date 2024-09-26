// movie_provider.dart
import 'package:playvies/Model/home_model.dart';

class MovieProvider {
  List<Movie> popularMovies() {
    return [
      Movie(
        id: 1,
        title: 'Film 1',
        posterUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        releaseYear: '2020',
        rating: 4.5,
      ),
      Movie(
        id: 2,
        title: 'Film 2',
        posterUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        releaseYear: '2021',
        rating: 4.0,
      ),
      Movie(
        id: 3,
        title: 'Film 3',
        posterUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        releaseYear: '2022',
        rating: 3.8,
      ),
    ];
  }
}

class ActorProvider {
  List<Actor> popularActors() {
    return [
      Actor(
        id: 1,
        name: 'Aktor 1',
        profileUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        age: 30,
      ),
      Actor(
        id: 2,
        name: 'Aktor 2',
        profileUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        age: 25,
      ),
      Actor(
        id: 3,
        name: 'Aktor 3',
        profileUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        age: 35,
      ),
    ];
  }
}
