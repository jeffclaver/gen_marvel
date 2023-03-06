import 'package:gen_marvel/layers/data/dto/mcu_dto.dart';
import 'package:gen_marvel/layers/domain/entities/mavel_entity.dart';

// ignore: must_be_immutable
class MarvelDto extends MarvelEntity {
  MarvelDto({
    this.mcuDTO,
  }) : super(mcu: mcuDTO);
  List<McuDto>? mcuDTO;

  Map<String, dynamic> toJson() => {
        if (mcuDTO != null) 'mcu': mcuDTO,
      };

  factory MarvelDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return MarvelDto();
    return MarvelDto(
        mcuDTO: json['mcu'] != null
            ? List<McuDto>.from(
                json['mcu'].map(
                  (element) => McuDto.fromJson(element),
                ),
              )
            : null);
  }
}
