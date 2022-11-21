// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sabit/renkler.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Hakkimizda extends StatelessWidget {
  const Hakkimizda({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: context.height,
          width: context.width,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.chevron_left),
                    iconSize: 40,
                    color: Renkler.beyaz,
                  ),
                  Text(
                    "About Us",
                    style: context.textTheme.headline4!
                        .copyWith(color: Renkler.beyaz),
                  )
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.06),
              ),
              Image.asset(
                "assets/derya png.png",
                height: context.dynamicHeight(0.29),
                fit: BoxFit.fill,
              ),
              Padding(
                padding: context.paddingNormal,
                child: Text(
                  "Vision:A more sustaninable future with less waste and more recycling",
                  style: context.textTheme.titleLarge!
                      .copyWith(color: Renkler.beyaz),
                ),
              ),
              Padding(
                padding: context.paddingNormal,
                child: Text(
                  "Mission:Stepping into a more sustainable world by providing the most satisfying transformation experience with collected waste",
                  style: context.textTheme.titleLarge!
                      .copyWith(color: Renkler.beyaz),
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              Container(
                width: context.dynamicWidth(0.9),
                height: context.dynamicHeight(0.2),
                decoration: BoxDecoration(
                    color: Renkler.beyaz,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: context.paddingLow,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "for your comments and suggestions",
                            style: context.textTheme.titleMedium!
                                .copyWith(color: Renkler.kahve),
                          ),
                          Text(
                            "fgreen2022@gmail.com",
                            style: context.textTheme.titleMedium!
                                .copyWith(color: Renkler.kahve),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.dynamicWidth(0.09),
                      ),
                      const Icon(Icons.email)
                    ],
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: const [0.7, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Renkler.gradient1, Renkler.gradient2])),
        ),
      ),
    );
  }
}
