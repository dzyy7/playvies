import '../Model/movie_detail_model.dart';

class MovieDetailData {
  static Map<String, MovieDetail> movieDetails = {
    'Breaking Bad': MovieDetail(
      title: 'Breaking Bad',
      posterUrl: 'https://i.pinimg.com/564x/fd/c1/a0/fdc1a05ec8d0744389237d477a1a8994.jpg',
      releaseYear: '2008',
      rating: 9.5,
      synopsis: 'Walter White, seorang guru kimia SMA yang didiagnosis kanker paru-paru, mulai memproduksi dan menjual metamfetamin dengan mantan muridnya Jesse Pinkman untuk mengamankan masa depan keuangan keluarganya.',
      genre: 'Crime, Drama, Thriller',
      duration: '49 min per episode',
      director: 'Vince Gilligan',
      cast: ['Bryan Cranston', 'Aaron Paul', 'Anna Gunn', 'RJ Mitte'],
    ),
    'Vincenzo': MovieDetail(
      title: 'Vincenzo',
      posterUrl: 'https://i.pinimg.com/736x/b9/1c/22/b91c2275452bc4d60c35278fd89294a8.jpg',
      releaseYear: '2021',
      rating: 8.4,
      synopsis: 'Vincenzo Cassano, seorang lawyer Italia-Korea yang bekerja untuk mafia, kembali ke Korea Selatan dan menggunakan metode kejahatannya untuk melawan villain yang lebih besar.',
      genre: 'Crime, Comedy, Drama',
      duration: '80 min per episode',
      director: 'Kim Hee-won',
      cast: ['Song Joong-ki', 'Jeon Yeo-been', 'Ok Taec-yeon', 'Yoo Jae-myung'],
    ),
    'Love next door': MovieDetail(
      title: 'Love next door',
      posterUrl: 'https://i.pinimg.com/736x/c5/c2/ce/c5c2ce6050465222eef5dc809e6e6a0e.jpg',
      releaseYear: '2024',
      rating: 8.2,
      synopsis: 'Kisah cinta romantis antara dua tetangga yang telah saling mengenal sejak kecil dan menemukan cinta di tempat yang paling tak terduga.',
      genre: 'Romance, Comedy, Drama',
      duration: '70 min per episode',
      director: 'Yoon Je-won',
      cast: ['Jung Hae-in', 'Jung So-min', 'Kim Ji-eun', 'Yun Ji-on'],
    ),
    'One Piece': MovieDetail(
      title: 'One Piece',
      posterUrl: 'https://i.pinimg.com/736x/5f/f1/0e/5ff10e6e370c9fdbdaaecead50da3f0b.jpg',
      releaseYear: '1999',
      rating: 9.0,
      synopsis: 'Monkey D. Luffy dan kru bajak lautnya menjelajahi Grand Line untuk mencari harta karun legendaris yang dikenal sebagai "One Piece" untuk menjadi Raja Bajak Laut berikutnya.',
      genre: 'Adventure, Comedy, Shounen',
      duration: '24 min per episode',
      director: 'Eiichiro Oda',
      cast: ['Mayumi Tanaka', 'Akemi Okamura', 'Kazuya Nakai', 'Kappei Yamaguchi'],
    ),
    'Fruit Basket': MovieDetail(
      title: 'Fruit Basket',
      posterUrl: 'https://i.pinimg.com/564x/96/a4/1c/96a41c3919d8722b6ce328bb53143169.jpg',
      releaseYear: '2019',
      rating: 8.6,
      synopsis: 'Tohru Honda, seorang gadis SMA yatim piatu, tinggal bersama keluarga Sohma yang menyimpan rahasia: mereka dikutuk untuk berubah menjadi hewan zodiak Cina.',
      genre: 'Romance, Drama, Supernatural',
      duration: '24 min per episode',
      director: 'Yoshihide Ibata',
      cast: ['Manaka Iwami', 'Nobunaga Shimazaki', 'Yuma Uchida', 'Megumi Takamoto'],
    ),
    'Transformers One': MovieDetail(
      title: 'Transformers One',
      posterUrl: 'https://i.pinimg.com/564x/13/72/8a/13728a8f0899deed32c7a12cee78e1fa.jpg',
      releaseYear: '2024',
      rating: 7.9,
      synopsis: 'Kisah asal-usul Optimus Prime dan Megatron, dulunya adalah teman yang kemudian menjadi musuh bebuyutan dalam perang saudara di Cybertron.',
      genre: 'Animation, Action, Adventure',
      duration: '104 minutes',
      director: 'Josh Cooley',
      cast: ['Chris Hemsworth', 'Brian Cox', 'Scarlett Johansson', 'Keegan-Michael Key'],
    ),
  };

  static MovieDetail? getMovieDetail(String title) {
    return movieDetails[title];
  }
}