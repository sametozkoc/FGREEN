// ignore_for_file: file_names, sort_child_properties_last, camel_case_types

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sayfalar/AnaSayfa/alici_mesaj.dart';
import 'package:fgreen/sayfalar/profil/profil.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    animation = Tween<double>(begin: 0, end: 100).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: context.paddingNormal,
            child: Column(
              children: [
                const _AppbarWidget(),
                SizedBox(
                  height: context.dynamicHeight(0.04),
                ),
                Text(
                  "% 45",
                  style: context.textTheme.headline4!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const _anaCircle(),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.07),
                ),
                linearMethod(context, "Plastic", 0.21, "%21"),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                linearMethod(context, "Oil", 0.12, "%12"),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                linearMethod(context, "Battery", 0.18, "%18"),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                linearMethod(context, "Glass", 0.22, "%22"),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                linearMethod(context, "Paper", 0.27, "%27"),
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
}

class _anaCircle extends StatelessWidget {
  const _anaCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularPercentIndicator(
      radius: 110,
      progressColor: Renkler.kahve,
      backgroundColor: Renkler.beyaz,
      circularStrokeCap: CircularStrokeCap.round,
      percent: 0.45,
      lineWidth: 30,
      animation: true,
      animationDuration: 1000,
      center: Image.asset(
        "assets/leaf.png",
        height: context.dynamicHeight(0.09),
      ),
    ));
  }
}

class _AppbarWidget extends StatelessWidget {
  const _AppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (() {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const AliciSayfasi();
            }));
          }),
          child: Image.asset(
            "assets/green-tea.png",
            height: context.dynamicHeight(0.055),
          ),
        ),
        Text(
          "FGREEN",
          style: context.textTheme.headline3!
              .copyWith(color: Renkler.beyaz, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Profil()));
          }),
          child: Image.asset(
            "assets/user.png",
            height: context.dynamicHeight(0.055),
          ),
        ),
      ],
    );
  }
}
