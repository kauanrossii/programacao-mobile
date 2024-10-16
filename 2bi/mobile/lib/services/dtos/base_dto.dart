abstract class BaseDto {
  late String id;

  BaseDto();

  BaseDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
  }
}