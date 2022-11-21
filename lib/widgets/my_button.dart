import 'package:fgreen/sabit/renkler.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      this.onTap,
      this.height,
      this.width,
      this.color,
      this.text,
      this.onHighlightChanged,
      this.margin})
      : super(key: key);

  final void Function()? onTap;
  final double? height;
  final double? width;
  final Color? color;
  final String? text;
  final void Function(bool)? onHighlightChanged;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onHighlightChanged: onHighlightChanged,
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.all(4),
        height: height ?? context.dynamicHeight(0.04),
        width: width ?? context.dynamicWidth(0.25),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 5, color: Colors.black, offset: Offset(1, 3))
          ],
          color: color ?? Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text ?? 'Buton',
            style: TextStyle(
              color: Renkler.kahve,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
