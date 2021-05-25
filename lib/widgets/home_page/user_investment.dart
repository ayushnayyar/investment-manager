import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/models/investments.dart';

class UserInvestment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Hive.box<Investments>('investments').isEmpty) {
      final Investments investmentsObject = Investments();
      Hive.box<Investments>('investments').put('investments', investmentsObject);
    }

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          color: const Color(0xFF5444F6),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
              left: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Net Worth',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    // ignore: always_specify_types
                    ValueListenableBuilder(
                        valueListenable: Hive.box<Investments>('investments').listenable(),
                        builder: (
                          BuildContext context,
                          Box<Investments> investmentsBox,
                          _,
                        ) {
                          final dynamic investments = investmentsBox.get('investments');
                          return Text(
                            '₹ ${investments.netWorth.toString()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                            ),
                          );
                        }),
                  ],
                ),
                Image.asset(
                  'assets/images/money.png',
                  alignment: Alignment.centerRight,
                  scale: 1.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
