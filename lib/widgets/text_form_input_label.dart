import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/utils/utils.dart';

class TextFormInputLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final Color? textColor;
  final int? maxLines;
  final TextAlign? textAlign;
  final VoidCallback? onPressed;

  const TextFormInputLabel({
    Key? key,
    required this.text,
    this.style,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
    this.decoration,
    this.textColor,
    this.maxLines,
    this.textAlign,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: AutoSizeText(
          text,
          style: style ??
              Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: textColor,
                    decoration: decoration,
                    fontSize: fontSize,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    letterSpacing: letterSpacing ?? Helpers.labelLetterSpacing,
                  ),
          maxLines: maxLines,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
