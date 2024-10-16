import 'package:mobile/services/base_service.dart';
import 'package:mobile/services/dtos/transaction.dart';

class TransactionService extends BaseService<TransactionDto> {
  TransactionService() : super("transactions");

  @override
  mapToDto(Map<String, dynamic> json) {
    return TransactionDto.fromJson(json);
  }
}
