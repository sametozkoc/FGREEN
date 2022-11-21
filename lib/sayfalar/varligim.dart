// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sayfalar/send/send.dart';
import 'package:flutter/material.dart';
import "package:kartal/kartal.dart";

class Varligim extends StatelessWidget {
  const Varligim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          color: Renkler.gradient1,
        ),
        Positioned(
            left: context.dynamicWidth(0.004),
            right: context.dynamicWidth(0.85),
            top: context.dynamicHeight(0.008),
            bottom: context.dynamicHeight(0.85),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.chevron_left),
              iconSize: 40,
              color: Renkler.beyaz,
            )),
        Positioned(
            child: Column(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.15),
            ),
            Center(
              child: Image.asset(
                "assets/ewallet.png",
                height: context.dynamicHeight(0.1),
              ),
            ),
            Text(
              "My Wallet",
              style:
                  context.textTheme.headline4!.copyWith(color: Renkler.beyaz),
            ),
            SizedBox(
              height: context.dynamicHeight(0.06),
            ),
            Text(
              "Hello",
              style:
                  context.textTheme.titleMedium!.copyWith(color: Renkler.beyaz),
            ),
            Text(
              "User",
              style:
                  context.textTheme.titleLarge!.copyWith(color: Renkler.beyaz),
            ),
          ],
        )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: context.dynamicHeight(0.5),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "83 FGR",
                    style: context.textTheme.headline4!
                        .copyWith(color: Renkler.beyaz),
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                const Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Send()));
                      },
                      child: SizedBox(
                        height: context.dynamicHeight(0.09),
                        width: context.dynamicWidth(0.37),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/send.png",
                                height: context.dynamicHeight(0.04),
                              ),
                              Text(
                                "Send",
                                style: context.textTheme.titleLarge!
                                    .copyWith(color: Renkler.beyaz),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.09),
                      width: context.dynamicWidth(0.37),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/money-bag.png",
                            height: context.dynamicHeight(0.04),
                          ),
                          Text(
                            "Earned Coins",
                            style: context.textTheme.titleLarge!
                                .copyWith(color: Renkler.beyaz),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.09),
                      width: context.dynamicWidth(0.37),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/transaction.png",
                            height: context.dynamicHeight(0.04),
                          ),
                          Text(
                            "Transactions",
                            style: context.textTheme.titleLarge!
                                .copyWith(color: Renkler.beyaz),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.09),
                      width: context.dynamicWidth(0.37),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/settings.png",
                            height: context.dynamicHeight(0.04),
                          ),
                          Text(
                            "Setting",
                            style: context.textTheme.titleLarge!
                                .copyWith(color: Renkler.beyaz),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Renkler.gradient2,
            ),
          ),
        )
      ],
    ));
  }
}
