import 'package:gen_marvel/layers/domain/entities/mavel_entity.dart';
import 'package:gen_marvel/layers/domain/repositories/i_fetch_mcu_repository.dart';
import 'package:gen_marvel/layers/domain/usecases/i_fetch_mcu_usecase.dart';

class FetchMcuUsecase implements IFetchMcuUsecase {
  FetchMcuUsecase(this.repository);
  final IFetchMcuRepository repository;

  @override
  Future<MarvelEntity> call() async {
    final response = await repository.fetchMCU();
    return response;
  }
}
