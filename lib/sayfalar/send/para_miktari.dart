// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ParaMiktari extends StatelessWidget {
  const ParaMiktari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Renkler.beyaz,
                        borderRadius: BorderRadius.circular(25)),
                    height: context.dynamicHeight(0.05),
                    width: context.dynamicWidth(0.3),
                    child: Center(
                      child: Text(
                        "FGR",
                        style: context.textTheme.bodyLarge!
                            .copyWith(color: Renkler.kahve),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.dynamicWidth(0.04),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Use the Maximum"))
                ],
              ),
              SizedBox(
                  width: context.dynamicWidth(0.15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "  0",
                        hintStyle: context.textTheme.headline4!
                            .copyWith(color: Renkler.beyaz)),
                  )),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Balance :",
                    style: context.textTheme.titleLarge!
                        .copyWith(color: Renkler.beyaz),
                  ),
                  Text(
                    "48 FGR",
                    style: context.textTheme.titleLarge!
                        .copyWith(color: Renkler.beyaz),
                  ),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.55),
              ),
              MyButton(
                text: "Next",
                width: context.dynamicWidth(0.60),
              )
            ],
          ),
        ),
        height: context.height,
        width: context.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: const [0.7, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Renkler.gradient1, Renkler.gradient2])),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Amount",
        style: context.textTheme.headline4!.copyWith(color: Renkler.beyaz),
      ),
      backgroundColor: Renkler.gradient1,
      actions: [
        TextButton(
            onPressed: () {},
            child: Text("Cancel",
                style: context.textTheme.bodyLarge!
                    .copyWith(color: Renkler.beyaz))),
      ],
      leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back",
              style:
                  context.textTheme.bodyLarge!.copyWith(color: Renkler.beyaz))),
    );
  }
}
