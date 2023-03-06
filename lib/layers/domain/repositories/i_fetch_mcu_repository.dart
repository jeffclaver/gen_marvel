import 'package:gen_marvel/layers/domain/entities/mavel_entity.dart';

abstract class IFetchMcuRepository {
  Future<MarvelEntity> fetchMCU();
}
