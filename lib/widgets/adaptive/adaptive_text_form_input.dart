import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class AdaptiveTextFormInput extends StatelessWidget {
  final bool enableSuggestions;
  final bool autoCorrect;
  final bool obscureText;
  final String? initial;
  final TextInputType keyboardType;
  final TextCapitalization capitalization;
  final TextInputAction? action;
  final InputDecoration? decoration;
  final Iterable<String>? autoFillHints;
  final bool validate;
  final int? maxLength;
  final bool maxLengthEnforced;
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final void Function(String)? onChanged;
  final FocusNode? focus;
  final FocusNode? next;

  const AdaptiveTextFormInput({
    Key? key,
    this.enableSuggestions = true,
    this.autoCorrect = true,
    this.obscureText = false,
    this.initial,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.decoration,
    this.autoFillHints,
    this.validate = false,
    this.controller,
    this.maxLength,
    this.maxLengthEnforced = false,
    this.hintText,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformBuilder(
      material: (_) => TextFormField(
        maxLines: 1,
        enableSuggestions: enableSuggestions,
        obscureText: obscureText,
        autocorrect: autoCorrect,
        initialValue: initial,
        maxLength: maxLength,
        maxLengthEnforcement: maxLengthEnforced
            ? MaxLengthEnforcement.enforced
            : MaxLengthEnforcement.none,
        controller: controller,
        cursorColor: Helpers.foldTheme(
          light: () => Theme.of(context).accentColor,
          dark: () => Helpers.computeLuminance(
            Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        keyboardType: keyboardType,
        textCapitalization: capitalization,
        textInputAction: next == null
            ? action ?? TextInputAction.done
            : action ?? TextInputAction.next,
        focusNode: focus,
        decoration: decoration ?? InputDecoration(hintText: hintText),
        autofillHints: autoFillHints,
        autovalidateMode:
            validate ? AutovalidateMode.always : AutovalidateMode.disabled,
        onChanged: onChanged,
        validator: (value) => errorText,
        onFieldSubmitted: (_) => next == null
            ? FocusScope.of(context).unfocus()
            : FocusScope.of(context).requestFocus(next),
      ),
    );
  }
}
