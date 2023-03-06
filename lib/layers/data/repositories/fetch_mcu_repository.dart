import 'package:gen_marvel/layers/data/datasources/i_fetch_mcu_datasource.dart';
import 'package:gen_marvel/layers/domain/entities/mavel_entity.dart';
import 'package:gen_marvel/layers/domain/repositories/i_fetch_mcu_repository.dart';

class FetchMcuRepository implements IFetchMcuRepository {
  FetchMcuRepository(this.datasource);
  final IFetchMcuDatasource datasource;

  @override
  Future<MarvelEntity> fetchMCU() async {
    final response = await datasource.call();
    return response;
  }
}
