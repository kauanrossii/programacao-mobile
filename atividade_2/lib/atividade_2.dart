import 'package:atividade_2/models/checking_account.dart';
import 'package:atividade_2/models/savings_account.dart';
import 'package:atividade_2/services/openFinance/open_finance_service.dart';

void main(List<String> args) {
  var savingAccount = SavingsAccount("kmrs-2983");
  var checkingAccount = CheckingAccount("kmrs-2312");

  var openFinanceService = OpenFinanceService();

  openFinanceService.shareAccountScore(savingAccount);
  openFinanceService.shareAccountScore(checkingAccount);
}