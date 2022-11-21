// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sayfalar/AnaSayfa/ana_Sayfa.dart';
import 'package:fgreen/widgets/custom_textField.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../sabit/renkler.dart';

class FormSayfasi extends StatelessWidget {
  const FormSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              SizedBox(
                height: context.dynamicHeight(0.1),
              ),
              const MyTextField(
                hintText: "Name",
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const MyTextField(
                hintText: "Surname",
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const MyTextField(
                hintText: "İD",
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const MyTextField(
                hintText: "Location",
              ),
              SizedBox(
                height: context.dynamicHeight(0.35),
              ),
              MyButton(
                color: Renkler.beyaz,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          backgroundColor: Renkler.gradient1,
                          actions: [
                            MyButton(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const AnaSayfa();
                                }));
                              },
                              color: Renkler.beyaz,
                              text: "OK",
                              width: context.dynamicWidth(0.2),
                            ),
                          ],
                          content: Text("Your request has been submitted.",
                              style: context.textTheme.headline5!.copyWith(
                                color: Renkler.beyaz,
                              )),
                        );
                      }));
                },
                text: "Next",
                width: context.dynamicWidth(0.65),
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
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Form Page",
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
