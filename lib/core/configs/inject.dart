import 'package:get_it/get_it.dart';
import 'package:gen_marvel/layers/data/datasources/i_fetch_mcu_datasource.dart';
import 'package:gen_marvel/layers/data/datasources/local/fetch_mcu_datasource_local.dart';
import 'package:gen_marvel/layers/data/repositories/fetch_mcu_repository.dart';
import 'package:gen_marvel/layers/domain/repositories/i_fetch_mcu_repository.dart';
import 'package:gen_marvel/layers/domain/usecases/fetch_mcu_usecase.dart';
import 'package:gen_marvel/layers/presentation/bloc/home_bloc.dart';

part '../../layers/fetch_mcu_injection.dart';

final di = GetIt.instance;

Future<void> initCore() async {
  await _fetchMcuInjection();
}
