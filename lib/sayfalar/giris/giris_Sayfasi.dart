// ignore_for_file: file_names

import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sayfalar/AnaSayfa/ana_Sayfa.dart';
import 'package:fgreen/sayfalar/kayit/kayit_ol.dart';
import 'package:fgreen/sifre_unuttum/sifre_unuttum.dart';
import 'package:fgreen/widgets/custom_textField.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: const [0.7, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Renkler.gradient1, Renkler.gradient2])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceHeight * 0.15,
              ),
              SizedBox(
                height: deviceHeight * 0.25,
                child: Text(
                  "FGREEN",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.06,
              ),
              const MyTextField(
                hintText: "Phone Number,Username or Email",
              ),
              SizedBox(
                height: deviceHeight * 0.011,
              ),
              const MyTextField(
                hintText: "Password",
              ),
              SizedBox(
                height: deviceHeight * 0.06,
              ),
              MyButton(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AnaSayfa())));
                }),
                width: deviceWidth * 0.8,
                color: Colors.white70,
                text: "Log In",
              ),
              SizedBox(
                height: deviceHeight * 0.01,
              ),
              TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SifreUnuttum())));
                }),
                child: Text(
                  "forgot Password ?",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.1,
              ),
              Padding(
                padding: context.horizontalPaddingHigh,
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Renkler.beyaz, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.03,
                    ),
                    TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const KayitOl())));
                      }),
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Renkler.beyaz,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
