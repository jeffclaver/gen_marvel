part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  const HomeLoaded({required this.marvel});
  final MarvelEntity marvel;

  @override
  List<Object> get props => [marvel];
}
