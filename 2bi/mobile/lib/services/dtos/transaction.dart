import 'package:mobile/services/dtos/base_dto.dart';

class TransactionDto extends BaseDto {
  late double value;
  late String name;

  TransactionDto(
    this.value,
    this.name
  );

  @override
  TransactionDto.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    value = json['value'] as double;
    name = json['name'] as String;
  }
} 