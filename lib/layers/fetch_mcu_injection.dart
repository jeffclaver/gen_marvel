part of '../core/configs/inject.dart';

Future<void> _fetchMcuInjection() async {
  di.registerFactory<HomeBloc>(() => HomeBloc(di<FetchMcuUsecase>()));
  di.registerLazySingleton<FetchMcuUsecase>(
      () => FetchMcuUsecase(di<IFetchMcuRepository>()));
  di.registerLazySingleton<IFetchMcuRepository>(
      () => FetchMcuRepository(di<IFetchMcuDatasource>()));

  di.registerLazySingleton<IFetchMcuDatasource>(
      () => FetchMcuDatasourceLocal());
}
