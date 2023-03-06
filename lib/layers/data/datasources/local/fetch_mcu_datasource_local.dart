import 'package:gen_marvel/core/fixture_reader.dart';
import 'package:gen_marvel/layers/data/datasources/i_fetch_mcu_datasource.dart';
import 'package:gen_marvel/layers/data/dto/marvel_dto.dart';

class FetchMcuDatasourceLocal implements IFetchMcuDatasource {
  @override
  Future<MarvelDto> call() async {
    try {
      final json = await readJson();
      return MarvelDto.fromJson(json);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
