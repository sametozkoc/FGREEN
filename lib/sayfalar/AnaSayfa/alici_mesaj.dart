// ignore_for_file: sort_child_properties_last

import 'package:fgreen/sayfalar/AnaSayfa/form_sayfasi.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../sabit/renkler.dart';

class AliciSayfasi extends StatelessWidget {
  const AliciSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Renkler.gradient1,
        title: Text("The product you collect",
            style: context.textTheme.headline5!.copyWith(
              color: Renkler.beyaz,
            )),
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
      ),
      body: Container(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              CirclePercentIndicator(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              linearMethod(context, "Plastic", 0.27, "%27"),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              linearMethod(context, "Oil", 0.0, "%0"),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              linearMethod(context, "Battery", 0.18, "%18"),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              linearMethod(context, "Glass", 0.16, "%16"),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              linearMethod(context, "Paper", 0.39, "%39"),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Text(
                "In order for the courier to arrive, there must be at least 30 kilos of waste. In addition, it should not exceed 100 kilograms.",
                style: context.textTheme.titleMedium!
                    .copyWith(color: Renkler.beyaz),
              ),
              SizedBox(
                height: context.dynamicHeight(0.04),
              ),
              MyButton(
                color: Renkler.beyaz,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const FormSayfasi();
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

  LinearPercentIndicator linearMethod(
      BuildContext context, String text, double percent, String percentText) {
    return LinearPercentIndicator(
      barRadius: const Radius.circular(12),
      trailing: SizedBox(
        width: context.dynamicWidth(0.11),
        child: Text(
          percentText,
          style: context.textTheme.headline6!
              .copyWith(color: Renkler.beyaz, fontWeight: FontWeight.w700),
        ),
      ),
      leading: SizedBox(
        width: context.dynamicWidth(0.21),
        child: Text(
          text,
          style: context.textTheme.headline6!
              .copyWith(color: Renkler.beyaz, fontWeight: FontWeight.w800),
        ),
      ),
      animation: true,
      animationDuration: 1000,
      lineHeight: 35,
      progressColor: Renkler.kahve,
      backgroundColor: Renkler.beyaz,
      percent: percent,
    );
  }

  // ignore: non_constant_identifier_names
  CirclePercentIndicator(
    BuildContext context,
  ) {
    return Center(
        child: CircularPercentIndicator(
      radius: 90,
      progressColor: Renkler.kahve,
      backgroundColor: Renkler.beyaz,
      circularStrokeCap: CircularStrokeCap.round,
      percent: 0.85,
      lineWidth: 30,
      animation: true,
      animationDuration: 1000,
      center: Text(
        "%85",
        style: context.textTheme.headline4!.copyWith(color: Renkler.beyaz),
      ),
    ));
  }
}
