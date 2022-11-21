// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sayfalar/send/para_miktari.dart';
import 'package:fgreen/widgets/custom_textField.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        height: context.height,
        width: context.width,
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: context.dynamicWidth(0.15),
                    child: Text("From :",
                        style: context.textTheme.titleLarge!
                            .copyWith(color: Renkler.beyaz)),
                  ),
                  SizedBox(
                      width: context.dynamicWidth(0.75),
                      child: const MyTextField(
                        hintText: "My Account",
                      ))
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Row(
                children: [
                  SizedBox(
                    width: context.dynamicWidth(0.15),
                    child: Text("To :",
                        style: context.textTheme.titleLarge!
                            .copyWith(color: Renkler.beyaz)),
                  ),
                  SizedBox(
                      width: context.dynamicWidth(0.75),
                      child: const MyTextField(
                        hintText: "My Account2",
                      ))
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Transfer between my accounts",
                    style: context.textTheme.titleLarge!
                        .copyWith(color: Colors.indigo),
                  )),
              const Divider(
                color: Colors.black,
              ),
              Text(
                "Recent transactions",
                style:
                    context.textTheme.bodyLarge!.copyWith(color: Renkler.beyaz),
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  const CircleAvatar(backgroundColor: Colors.green),
                  SizedBox(
                    width: context.dynamicWidth(0.03),
                  ),
                  Column(
                    children: [
                      Text("My account",
                          style: context.textTheme.bodyLarge!
                              .copyWith(color: Renkler.beyaz)),
                      Text("30 FGR",
                          style: context.textTheme.bodyLarge!
                              .copyWith(color: Renkler.beyaz))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.005),
              ),
              Row(
                children: [
                  const CircleAvatar(backgroundColor: Colors.green),
                  SizedBox(
                    width: context.dynamicWidth(0.03),
                  ),
                  Column(
                    children: [
                      Text("My account",
                          style: context.textTheme.bodyLarge!
                              .copyWith(color: Renkler.beyaz)),
                      Text("45 FGR",
                          style: context.textTheme.bodyLarge!
                              .copyWith(color: Renkler.beyaz))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.38),
              ),
              Center(
                child: MyButton(
                  text: "Next",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ParaMiktari()));
                  },
                  width: context.dynamicWidth(0.7),
                ),
              )
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

  AppBar appBar(BuildContext context) {
    return AppBar(
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style:
                  context.textTheme.bodyLarge!.copyWith(color: Renkler.beyaz),
            ))
      ],
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.chevron_left),
        iconSize: 45,
        color: Renkler.beyaz,
      ),
      elevation: 0,
      backgroundColor: Renkler.gradient1,
      title: const Text(
        "Send to",
      ),
      titleTextStyle:
          context.textTheme.headline5!.copyWith(color: Renkler.beyaz),
    );
  }
}
