import 'package:fgreen/sabit/renkler.dart';
import 'package:fgreen/widgets/custom_textField.dart';
import 'package:fgreen/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SifreUnuttum extends StatelessWidget {
  const SifreUnuttum({super.key});

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
                height: deviceHeight * 0.05,
              ),
              SizedBox(
                height: deviceHeight * 0.18,
                child: Text(
                  "FGREEN",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                "assets/padlock.png",
                height: context.dynamicHeight(0.14),
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              SizedBox(
                width: context.dynamicWidth(0.63),
                child: Text(
                  textAlign: TextAlign.center,
                  "Enter your email,phone,or username and we'll send you a link to change a new password",
                  style: context.textTheme.bodyMedium!.copyWith(
                      color: Renkler.beyaz, fontWeight: FontWeight.w700),
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
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              MyButton(
                width: deviceWidth * 0.8,
                color: Colors.white70,
                text: "Forgot Password",
              ),
              SizedBox(
                height: deviceHeight * 0.2,
              ),
              Padding(
                padding: context.horizontalPaddingHigh,
                child: Row(
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.08,
                      child: Text(
                        "Don't have an account?",
                        style: context.textTheme.bodyLarge!.copyWith(
                            color: Renkler.beyaz, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.05,
                    ),
                    SizedBox(
                      height: deviceHeight * 0.08,
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Renkler.beyaz, fontWeight: FontWeight.bold),
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
