// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sayfalar/hakkimizda/hakkimizda.dart';
import 'package:fgreen/sayfalar/varligim.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.height,
        width: context.width,
        child: Padding(
          padding: context.paddingLow,
          child: Column(
            children: [
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              Image.asset(
                "assets/man.png",
                height: context.dynamicHeight(0.14),
              ),
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              Text(
                "fgreen2022@gmail.com",
                style: context.textTheme.titleLarge!.copyWith(
                    color: Renkler.beyaz, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: context.dynamicHeight(0.08),
              ),
              MyButton(
                margin: context.paddingNormal,
                text: "Change Password",
                width: context.dynamicWidth(0.75),
              ),
              MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Varligim();
                  }));
                },
                margin: context.paddingNormal,
                text: "My Wallet",
                width: context.dynamicWidth(0.75),
              ),
              MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Hakkimizda();
                  }));
                },
                margin: context.paddingNormal,
                text: "About us",
                width: context.dynamicWidth(0.75),
              ),
              MyButton(
                margin: context.paddingNormal,
                text: "Sign Out",
                width: context.dynamicWidth(0.75),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: const [0.7, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Renkler.gradient1, Renkler.gradient2])),
      ),
    );
  }
}
