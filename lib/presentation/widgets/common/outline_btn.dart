import 'package:flutter/material.dart';
import 'package:job_t/core/config/resources/color_manager.dart';
import 'package:job_t/core/config/resources/theme_manager.dart';
import 'package:job_t/presentation/widgets/common/custom_outline.dart';

class OutlineCCButton extends StatelessWidget {
  const OutlineCCButton({
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
    // theme
    var theme = Theme.of(context);

    return CustomOutline(
      strokeWidth: 3,
      radius: 5,
      padding: const EdgeInsets.all(2),
      width: 120,
      height: 40,
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.secondaryColor,
            theme.secondaryColor.withOpacity(0),
            theme.primaryColor.withOpacity(0.1),
            theme.primaryColor
          ],
          stops: const [
            0.2,
            0.4,
            0.6,
            1
          ]),
      child: SizedBox(
        width: 120,
        height: 40,
        child: ElevatedButton(
            style: ButtonStyle(
              foregroundColor: onPressed != null
                  ? MaterialStateProperty.all<Color>(
                      foregroundColor ?? AppColor.darkBackgroundColor)
                  : MaterialStateProperty.all<Color>(
                      AppColor.lightBackgroundColor),
              backgroundColor: onPressed != null
                  ? MaterialStateProperty.all<Color>(backgroundColor ??
                      AppColor.lightBackgroundColor.withOpacity(0.7))
                  : MaterialStateProperty.all<Color>(
                      AppColor.lightBackgroundColor),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: textStyle,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
