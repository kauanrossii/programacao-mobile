import 'dart:math';

abstract class Account {
  late double balance;
  late String number;
  String agencyName;
  
  Account(this.agencyName) {
    balance = 0.0;
    number = agencyName + Random().nextInt(200).toString();
  }

  double getBalance();
  String getAgencyName();
  String getNumber();
}
