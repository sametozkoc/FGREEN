// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.controller,
      this.onChanged,
      this.icon,
      this.hintText,
      this.fillColor,
      this.onTap})
      : super(key: key);
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final Widget? icon;
  final String? hintText;
  final Color? fillColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingMedium,
      child: TextField(
        onTap: onTap,
        controller: controller,
        autocorrect: false,
        cursorColor: Colors.black,
        cursorHeight: 20,
        cursorWidth: 2,
        onChanged: onChanged,
        decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? Colors.white70,
            isDense: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.indigo,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            hintText: hintText ?? "Hint Text",
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.grey),
            icon: icon),
      ),
    );
  }
}
