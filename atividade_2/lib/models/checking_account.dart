import 'account.dart';

class CheckingAccount extends Account {
  CheckingAccount(super.agencyName);

  @override
  String getAgencyName() {
    return agencyName;
  }

  @override
  double getBalance() {
    return balance;
  }

  @override
  String getNumber() {
    return number;
  }
}