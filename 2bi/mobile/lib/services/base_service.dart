import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/services/dtos/base_dto.dart';

abstract class BaseService<T extends BaseDto> {
  final String _resource;
  static const String _baseAddress = "http://localhost:3000";

  BaseService(this._resource);

  Future<T> get(int id) async {
    var response = await http.get(Uri.parse('$_baseAddress/$_resource/$id'));
    var json = jsonDecode(response.body) as Map<String, dynamic>;
    return mapToDto(json);
  }

  Future<List<T>> getAll() async {
    var response = await http.get(Uri.parse('$_baseAddress/$_resource'));
    var json = jsonDecode(response.body) as List;
    var jsonList = json.map((element) => element as Map<String, dynamic>).toList();
    return jsonList.map((element) => mapToDto(element)).toList();
  }

  Future<T> update(int id, T item) async {
    var response =
        await http.put(Uri.parse('$_baseAddress/$_resource/$id'), body: T);
    var json = jsonDecode(response.body) as Map<String, dynamic>;
    return mapToDto(json);
  }

  Future<void> delete(int id) async {
    await http.delete(Uri.parse('$_baseAddress/$_resource/$id'));
  }

  T mapToDto(Map<String, dynamic> json);
}
