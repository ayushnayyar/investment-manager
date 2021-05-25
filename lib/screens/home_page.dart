import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/screens/add_investment.dart';
import 'package:money_manager/widgets/home_page/user_details.dart';
import 'package:money_manager/widgets/home_page/user_investment.dart';
import 'package:money_manager/widgets/home_page/chip_list.dart';
import 'package:money_manager/widgets/home_page/transaction_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddInvestment());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(top: statusBarHeight + 20),
              sliver: UserDetails(),
            ),
            UserInvestment(),
            ChipList(),
            SliverPadding(
              padding: const EdgeInsets.only(
                bottom: 75.0,
              ),
              sliver: TransactionList(),
            ),
          ],
        ),
      ),
    );
  }
}
