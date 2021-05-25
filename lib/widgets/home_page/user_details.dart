import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:money_manager/controllers/auth_controller.dart';

class UserDetails extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              bottom: 25.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Hi, good morning!',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      controller.name ?? '',
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.notifications),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
