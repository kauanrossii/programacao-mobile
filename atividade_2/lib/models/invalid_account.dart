import 'account.dart';

class InvalidAccount extends Account {
  InvalidAccount() : super("invalid");

  @override
  double getBalance() {
    return 0.0;
  }

  @override
  String getAgencyName() {
    return "invalid-agency";
  }

  @override
  String getNumber() {
    return "invalid-number";
  }
}