import 'package:playvies/Model/home_model.dart';

class HomeMovieData {
  List<Movie> popularMovies() {
    return [
      Movie(
        title: 'Breaking Bad',
        posterUrl: 'https://i.pinimg.com/564x/fd/c1/a0/fdc1a05ec8d0744389237d477a1a8994.jpg',
        releaseYear: '2008',
        rating: 9.5,
      ),
      Movie(
        title: 'Vincenzo',
        posterUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
        releaseYear: '2021',
        rating: 8.4,
      ),
      Movie(
        title: 'Love next door',
        posterUrl: 'https://i.pinimg.com/736x/c5/c2/ce/c5c2ce6050465222eef5dc809e6e6a0e.jpg',
        releaseYear: '2024',
        rating: 8.2,
      ),
      Movie(
        title: 'One Piece',
        posterUrl: 'https://i.pinimg.com/736x/5f/f1/0e/5ff10e6e370c9fdbdaaecead50da3f0b.jpg',
        releaseYear: '1999',
        rating: 9.0,
      ),
      Movie(
        title: 'Fruit Basket',
        posterUrl: 'https://i.pinimg.com/564x/96/a4/1c/96a41c3919d8722b6ce328bb53143169.jpg',
        releaseYear: '2019',
        rating: 8.6,
      ),
    ];
  }
}

class HomeActorData {
  List<Actor> popularActors() {
    return [
      Actor(
        name: 'Iko Uwais',
        profileUrl: 'https://i.pinimg.com/564x/b9/18/e0/b918e08df0fb6da994b1019df465d567.jpg',
        age: 41,
      ),
      Actor(
        name: 'Willem Dafoe',
        profileUrl: 'https://i.pinimg.com/564x/48/22/cc/4822cc20fbb656561a551fed5f521a2c.jpg',
        age: 69,
      ),
      Actor(
        name: 'Leonardo DiCaprio',
        profileUrl: 'https://i.pinimg.com/564x/bf/a9/d1/bfa9d181218e142e0cfa528da88e20ba.jpg',
        age: 49,
      ),
      Actor(
        name: 'Shahrukh Khan',
        profileUrl: 'https://i.pinimg.com/564x/03/cf/c1/03cfc14c79999dcee224e9eeba278a68.jpg',
        age: 58,
      ),
      Actor(
        name: 'Kim Jiwon',
        profileUrl: 'https://i.pinimg.com/736x/6f/11/96/6f11961e7c339aa67d940538eec2f436.jpg',
        age: 31,
      ),
    ];
  }
}
