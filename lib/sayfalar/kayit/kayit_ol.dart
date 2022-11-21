import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/sifre_unuttum/sifre_unuttum.dart';
import 'package:fgreen/widgets/custom_textField.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KayitOl extends StatelessWidget {
  const KayitOl({super.key});

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
                child: Text(
                  "FGREEN",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.1,
                child: Text(
                  "for a green future",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.w600),
                ),
              ),
              const MyTextField(
                hintText: "Phone Number or Email",
              ),
              SizedBox(
                height: deviceHeight * 0.011,
              ),
              const MyTextField(
                hintText: "Full Name",
              ),
              SizedBox(
                height: deviceHeight * 0.011,
              ),
              const MyTextField(
                hintText: "Username",
              ),
              SizedBox(
                height: deviceHeight * 0.011,
              ),
              const MyTextField(
                hintText: "Password",
              ),
              SizedBox(
                height: deviceHeight * 0.04,
              ),
              MyButton(
                width: deviceWidth * 0.8,
                text: "Sign Up",
              ),
              SizedBox(
                height: deviceHeight * 0.006,
              ),
              Padding(
                padding: context.horizontalPaddingHigh,
                child: Row(
                  children: [
                    Text(
                      "Have an account?",
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
                                builder: ((context) => const SifreUnuttum())));
                      }),
                      child: Text(
                        "Sign In",
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
              SizedBox(
                height: deviceHeight * 0.15,
              ),
              Text(
                "We need permission for the service you use",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF434d1a),
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Learn More",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF434d1a),
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
