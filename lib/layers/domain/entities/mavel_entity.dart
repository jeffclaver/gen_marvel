import 'package:equatable/equatable.dart';

import 'mcu.dart';

class MarvelEntity extends Equatable {
  const MarvelEntity({this.mcu});
  final List<Mcu>? mcu;

  @override
  List<Object?> get props => [mcu];
}
