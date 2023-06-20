import 'package:flutter/material.dart';
import 'package:job_t/core/config/resources/color_manager.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.onPressed,
    this.width,
    this.backgroundColor,
    this.foregroundColor,
    required this.title,
    this.isDisable = false,
    this.textStyle,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final Color? backgroundColor, foregroundColor;
  final String title;
  final bool isDisable;
  final double? width;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
            foregroundColor: onPressed != null
                ? MaterialStateProperty.all<Color>(
                    foregroundColor ?? AppColor.darkBackgroundColor)
                : MaterialStateProperty.all<Color>(
                    AppColor.lightBackgroundColor),
            backgroundColor: onPressed != null
                ? MaterialStateProperty.all<Color>(
                    backgroundColor ?? AppColor.lightPrimaryColor)
                : MaterialStateProperty.all<Color>(AppColor.lightGrey),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: textStyle,
            textAlign: TextAlign.center,
          )),
    );
  }
}
