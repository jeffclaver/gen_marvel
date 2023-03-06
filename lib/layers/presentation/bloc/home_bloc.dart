import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen_marvel/layers/domain/entities/mavel_entity.dart';
import 'package:gen_marvel/layers/domain/usecases/fetch_mcu_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchMcuUsecase usecase;
  HomeBloc(this.usecase) : super(HomeLoading()) {
    on<HomeEvent>((event, emit) async {
      try {
        switch (event.runtimeType) {
          case FetchMarvelEvent:
            emit(HomeLoading());
            final response = await usecase.call();
            emit(HomeLoaded(marvel: response));
            break;
          default:
        }
      } catch (e, s) {
        debugPrint(e.toString() + s.toString());
        throw Exception(e.toString());
      }
    });
  }
}
