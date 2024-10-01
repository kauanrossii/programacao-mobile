import '../../models/account.dart';
import '../../models/checking_account.dart';
import '../../models/savings_account.dart';
import 'open_finance_response.dart';

class OpenFinanceService {
  Future<OpenFinanceResponse> shareAccountScore<T extends Account>(T account) async {
    if (account is CheckingAccount) {
      return await sendAllOpenFinance(account);
    } else if (account is SavingsAccount) {
      return await sendPartnersOpenFinance(account);
    }
    throw ArgumentError.value(account, "The only account types valid are saving and checking");
  }

  Future<OpenFinanceResponse> sendAllOpenFinance(Account account) async {
    await Future.delayed(Duration(seconds: 2));
    return OpenFinanceResponse(true, "checking-account");
  }

  Future<OpenFinanceResponse> sendPartnersOpenFinance(Account account) async {
    await Future.delayed(Duration(seconds: 2));
    return OpenFinanceResponse(true, "saving-account");
  }
}
