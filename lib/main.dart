import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:money_manager/models/category.dart';
import 'package:money_manager/models/investments.dart';
import 'package:money_manager/models/transaction.dart';
import 'package:money_manager/models/transactions.dart';
import 'package:money_manager/screens/add_investment.dart';
import 'package:money_manager/screens/bottom_navbar_home.dart';
import 'package:money_manager/screens/home_page.dart';
import 'package:money_manager/screens/profile.dart';
import 'package:money_manager/widgets/add_investment/bonds.dart';
import 'package:money_manager/widgets/add_investment/mutual_funds.dart';
import 'package:money_manager/widgets/add_investment/savings_account.dart';
import 'package:money_manager/widgets/add_investment/stocks.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:firebase_core/firebase_core.dart';
import 'package:money_manager/controllers/bindings/auth_binding.dart';
import 'package:money_manager/utils/root.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(InvestmentsAdapter());
  Hive.registerAdapter(TransactionAdapter());
  Hive.registerAdapter(TransactionsAdapter());
  Hive.registerAdapter(CategoryAdapter());
  await Hive.openBox<Transaction>('transactions');
  await Hive.openBox<Investments>('investments');
  await Firebase.initializeApp();
  runApp(MoneyManager());
}

class MoneyManager extends StatefulWidget {
  @override
  _MoneyManagerState createState() => _MoneyManagerState();
}

class _MoneyManagerState extends State<MoneyManager> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        initialBinding: AuthBinding(),
        title: 'Money Manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Root(),
        getPages: <GetPage<String>>[
          GetPage<String>(name: '/', page: () => Root()),
          GetPage<String>(name: '/bottom-nav-home', page: () => BottomNavHome()),
          GetPage<String>(name: '/home-page', page: () => Home()),
          GetPage<String>(name: '/add-investment', page: () => AddInvestment()),
          GetPage<String>(name: '/profile', page: () => Profile()),
          GetPage<String>(name: '/add-investment/stocks', page: () => Stocks()),
          GetPage<String>(name: '/add-investment/mutual-funds', page: () => MutualFunds()),
          GetPage<String>(name: '/add-investment/savings-account', page: () => SavingsAccount()),
          GetPage<String>(name: '/add-investment/bonds', page: () => Bonds()),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
