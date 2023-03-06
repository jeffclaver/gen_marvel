import 'package:gen_marvel/layers/domain/entities/mcu.dart';

class McuDto extends Mcu {
  McuDto({
    this.adulto,
    this.pathImagem,
    this.genero,
    this.mcuID,
    this.lingua,
    this.tituloOriginal,
    this.sinopse,
    this.popularidade,
    this.pathPoster,
    this.dataEstreia,
    this.titulo,
    this.trailler,
    this.nota,
    this.votacao,
  }) : super(
          adult: adulto,
          backdropPath: pathImagem,
          genreIds: genero,
          id: mcuID,
          originalLanguage: lingua,
          originalTitle: tituloOriginal,
          overview: sinopse,
          popularity: popularidade,
          posterPath: pathPoster,
          releaseDate: dataEstreia,
          title: titulo,
          video: trailler,
          voteAverage: nota,
          voteCount: votacao,
        );

  bool? adulto;
  String? pathImagem;
  List<int>? genero;
  int? mcuID;
  String? lingua;
  String? tituloOriginal;
  String? sinopse;
  double? popularidade;
  String? pathPoster;
  String? dataEstreia;
  String? titulo;
  bool? trailler;
  double? nota;
  int? votacao;

  Map toJson() => {
        "adult": adulto,
        "backdrop_path": pathImagem,
        "genre_ids": genero,
        "id": mcuID,
        "original_language": lingua,
        "original_title": tituloOriginal,
        "overview": sinopse,
        "popularity": popularidade,
        "poster_path": pathPoster,
        "release_date": dataEstreia,
        "title": titulo,
        "video": trailler,
        "vote_average": nota,
        "vote_count": votacao,
      };

  factory McuDto.fromJson(Map? json) {
    if (json == null) return McuDto();
    return McuDto(
      adulto: json['adult'],
      pathImagem: json['backdrop_path'],
      genero: json['genre_ids'].cast<int>(),
      mcuID: json['id'],
      lingua: json['original_language'],
      tituloOriginal: json['original_title'],
      sinopse: json['overview'],
      popularidade: json['popularity'],
      pathPoster: json['poster_path'],
      dataEstreia: json['release_date'],
      titulo: json['title'],
      trailler: json['video'],
      nota: json['vote_average'],
      votacao: json['vote_count'],
    );
  }
}
