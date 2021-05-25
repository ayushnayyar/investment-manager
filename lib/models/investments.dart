import 'package:hive/hive.dart';

part 'investments.g.dart';

@HiveType(typeId: 1)
class Investments extends HiveObject {
  @HiveField(0)
  double _savingsAccount = 0;
  @HiveField(1)
  double _stocks = 0;
  @HiveField(2)
  double _mutualFunds = 0;
  @HiveField(3)
  double _fixedDeposits = 0;
  @HiveField(4)
  double _bonds = 0;
  @HiveField(5)
  double _realEstate = 0;
  @HiveField(6)
  double _epf = 0;

  double get savingsAccountBalance => _savingsAccount;
  double get stockBalance => _stocks;
  double get mutualFundBalance => _mutualFunds;
  double get fixedDepositBalance => _fixedDeposits;
  double get bondBalance => _bonds;
  double get realEstateBalance => _realEstate;
  double get epfBalance => _epf;

  void addSavingsAccountBalance(double addBalance) {
    _savingsAccount += addBalance;
  }

  void addStocksBalance(double addInvestment) {
    _stocks += addInvestment;
  }

  void addMutualFundBalance(double addInvestment) {
    _mutualFunds += addInvestment;
  }

  void addFixedDepositsBalance(double addInvestment) {
    _fixedDeposits += addInvestment;
  }

  void bonds(double addInvestment) {
    _bonds += addInvestment;
  }

  void addRealEstateInvestement(double addInvestment) {
    _realEstate += addInvestment;
  }

  void addEPFInvestment(double addInvestment) {
    _epf += addInvestment;
  }

  double get netWorth => _savingsAccount + _stocks + _mutualFunds + _fixedDeposits + _bonds + _realEstate + _epf;

  // Investments({
  //   double savingsAccount = 0,
  //   double stocks = 0,
  //   double fixedDeposits = 0,
  //   double mutualFunds = 0,
  //   double bonds = 0,
  //   double realEstate = 0,
  //   double epf = 0,
  // })  : _savingsAccount = savingsAccount,
  //       _stocks = stocks,
  //       _fixedDeposits = fixedDeposits,
  //       _mutualFunds = mutualFunds,
  //       _bonds = bonds,
  //       _realEstate = realEstate,
  //       _epf = epf;
}
