import 'package:flutter/material.dart';
import 'package:job_t/core/config/others/app_typography.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.left,
      overflow: TextOverflow.fade,
      style: style ?? AppText.l1!,
    );
  }
}
