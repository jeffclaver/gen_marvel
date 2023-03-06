import 'package:gen_marvel/layers/data/dto/marvel_dto.dart';

abstract class IFetchMcuDatasource {
  Future<MarvelDto> call();
}
