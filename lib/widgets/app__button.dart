import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/widgets/widgets.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/utils/extensions/button_type_extension.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Widget? child;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? wordSpacing;
  final Alignment textAlignment;
  final Color? textColor;
  final double? width;
  final double height;
  //
  final bool autofocus;
  final bool disabled;
  final double opacity;
  final Clip clipBehavior;
  final Function()? onLongPress;
  final VoidCallback? onPressed;
  //
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderRadius borderRadius;
  final OutlinedBorder? shape;
  final MaterialTapTargetSize? tapTargetSize;
  final TextStyle? textStyle;

  // Cupertino
  final Color disabledColor;
  final AlignmentGeometry alignment;
  final double minSize;
  final double pressedOpacity;
  final ButtonType type;

  AppButton({
    Key? key,
    this.text,
    this.fontSize = 16.0,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    this.textColor,
    this.width,
    this.height = 48.0,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    this.backgroundColor,
    this.elevation,
    this.padding,
    BorderRadius? borderRadius,
    OutlinedBorder? shape,
    this.tapTargetSize,
    this.textStyle,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
  })  : assert(text != null || child != null),
        type = disabled && (Platform.isIOS || Platform.isMacOS)
            ? ButtonType.elevated
            : ButtonType.flat,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Helpers.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        shape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Helpers.buttonRadius),
              ),
            ),
        super(key: key);

  AppButton.filled({
    Key? key,
    this.text,
    this.fontSize = 16.0,
    this.fontWeight,
    this.fontFamily,
    this.wordSpacing,
    this.textAlignment = Alignment.center,
    this.alignment = Alignment.center,
    this.textColor,
    this.width,
    this.height = 48.0,
    this.autofocus = false,
    this.disabled = false,
    double? opacity,
    this.clipBehavior = Clip.antiAlias,
    this.onLongPress,
    this.backgroundColor,
    this.elevation,
    this.padding,
    BorderRadius? borderRadius,
    OutlinedBorder? shape,
    this.tapTargetSize,
    this.textStyle,
    this.child,
    Color? disabledColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.onPressed,
  })  : assert(text != null || child != null),
        type = ButtonType.elevated,
        opacity = disabled ? 0.6 : opacity ?? 1.0,
        borderRadius =
            borderRadius ?? BorderRadius.circular(Helpers.buttonRadius),
        disabledColor = disabled
            ? CupertinoColors.inactiveGray
            : CupertinoColors.quaternarySystemFill,
        shape = shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Helpers.buttonRadius),
              ),
            ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformBuilder(
      cupertino: (context) => type.fold(
        elevated: () => CupertinoButton.filled(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          disabledColor: disabledColor,
          padding: padding,
          onPressed: onPressed,
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: AutoSizeText(
              text ?? '',
              style: textStyle ??
                  TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily,
                    wordSpacing: wordSpacing,
                    color: textColor ?? App.theme.accentColor,
                  ),
            ),
          ),
        ),
        flat: () => CupertinoButton(
          key: key,
          alignment: alignment,
          borderRadius: borderRadius,
          pressedOpacity: pressedOpacity,
          minSize: minSize,
          // color: backgroundColor,
          disabledColor: disabledColor,
          padding: padding,
          onPressed: onPressed,
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: AutoSizeText(
              text ?? '',
              style: textStyle ??
                  TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    fontFamily: fontFamily,
                    wordSpacing: wordSpacing,
                    color: textColor ?? App.theme.accentColor,
                  ),
            ),
          ),
        ),
      ),
      material: (context) => type.fold(
        elevated: () => TextButton(
          key: key,
          onPressed: onPressed,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          onLongPress: onLongPress,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            alignment: alignment,
            elevation: MaterialStateProperty.all(elevation),
            padding: MaterialStateProperty.all(padding),
            shape: MaterialStateProperty.all(
              shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
            ),
            tapTargetSize: tapTargetSize,
            textStyle: MaterialStateProperty.all(textStyle),
          ),
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: FractionallySizedBox(
              child: SizedBox(
                width: width,
                height: height,
                child: Align(
                  alignment: textAlignment,
                  child: AutoSizeText(
                    text ?? '',
                    style: textStyle ??
                        TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          fontFamily: fontFamily,
                          wordSpacing: wordSpacing,
                          color: textColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
        flat: () => ElevatedButton(
          key: key,
          onPressed: onPressed,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          onLongPress: onLongPress,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            alignment: alignment,
            elevation: MaterialStateProperty.all(elevation),
            padding: MaterialStateProperty.all(padding),
            shape: MaterialStateProperty.all(
              shape ?? RoundedRectangleBorder(borderRadius: borderRadius),
            ),
            tapTargetSize: tapTargetSize,
            textStyle: MaterialStateProperty.all(textStyle),
          ),
          child: Visibility(
            visible: text != null && !text!.isBlank,
            replacement: child ?? const SizedBox(),
            child: FractionallySizedBox(
              child: SizedBox(
                width: width,
                height: height,
                child: Align(
                  alignment: textAlignment,
                  child: AutoSizeText(
                    text ?? '',
                    style: textStyle ??
                        TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          fontFamily: fontFamily,
                          wordSpacing: wordSpacing,
                          color: textColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
