library popup_dialog.dart;

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:naftacredit/utils/utils.dart';

part 'popup_factory.dart';

enum _PopupDialogType { confirmation, input, bottomSheet, flushbar, none }

enum PopupDialogStyle { floating, grounded }

enum PopupDialogPosition { top, bottom }

enum PopupDialogDismissDirection { vertical, horizontal }

enum PopupDialogStatus { showing, isAppearing, isHiding, dimissed }

class _$PopupDialog {
  final String? title;
  final Widget? titleWidget;
  final String? message;
  final Widget? messageWidget;
  final Icon? popupIcon;
  final Color? popupIconColor;
  final String? postiveButtonText;
  final String? negativeButtonText;
  final bool? negativeButtonVisible;
  final bool? positiveButtonVisible;
  final Color? positiveButtonColor;
  final Color? negativeButtonColor;
  final Icon? positiveButtonIcon;
  final Icon? negativeButtonIcon;
  final VoidCallback? onPositiveButtonPressed;
  final VoidCallback? onNegativeButtonPressed;
  final Duration? duration;
  final bool? isDismissible;
  final bool? autoDismiss;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final bool? blockBackgroundTouch;
  final Color? backgroundColor;

  // Flushbar
  final TextStyle? titleStyle;
  final TextStyle? messageStyle;
  final bool? shouldIconPulse;
  final double? maxWidth;
  final Widget? mainButton;
  final void Function(dynamic)? onTap;
  final Color? overlayColor;
  final double? overlayBlur;
  final double? overlayOpacity;
  final Color? leftBarIndicatorColor;
  final Function(dynamic)? callbackOnShow;
  final void Function(dynamic)? callback;
  final void Function(PopupDialogStatus?)? flushbarListener;

  // wrappers
  final _PopupDialogType? _type;
  final PopupDialogStyle? alertStyle;
  final PopupDialogPosition? position;
  final PopupDialogDismissDirection? dismissDirection;

  const _$PopupDialog({
    this.title,
    this.message,
    this.titleWidget,
    this.messageWidget,
    this.popupIcon,
    this.popupIconColor,
    this.postiveButtonText = 'OK',
    this.negativeButtonText = 'Cancel',
    bool? negativeButtonVisible,
    bool? positiveButtonVisible,
    this.positiveButtonColor,
    this.negativeButtonColor,
    this.positiveButtonIcon,
    this.negativeButtonIcon,
    this.onPositiveButtonPressed,
    this.onNegativeButtonPressed,
    Duration? duration,
    bool? isDismissible,
    bool? autoDismiss,
    EdgeInsets? margin,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    bool? blockBackgroundTouch,
    this.backgroundColor,
    this.titleStyle,
    this.messageStyle,
    bool? shouldIconPulse,
    this.maxWidth,
    this.mainButton,
    this.onTap,
    this.callback,
    this.callbackOnShow,
    this.overlayColor,
    double? overlayBlur,
    this.overlayOpacity,
    this.leftBarIndicatorColor,
    _PopupDialogType? type,
    PopupDialogStyle? alertStyle,
    this.position,
    this.flushbarListener,
    PopupDialogDismissDirection? dismissDirection,
  })  : _type = type,
        duration = duration ?? const Duration(seconds: 12),
        margin = margin ?? const EdgeInsets.all(8.0),
        padding = padding ?? const EdgeInsets.all(16.0),
        borderRadius =
            borderRadius ?? const BorderRadius.all(Radius.circular(10.0)),
        negativeButtonVisible = negativeButtonVisible ?? true,
        positiveButtonVisible = positiveButtonVisible ?? true,
        isDismissible = isDismissible ?? true,
        autoDismiss = autoDismiss ?? true,
        blockBackgroundTouch = blockBackgroundTouch ?? true,
        shouldIconPulse = shouldIconPulse ?? true,
        overlayBlur = overlayBlur ?? 0.7,
        alertStyle = alertStyle ?? PopupDialogStyle.floating,
        dismissDirection =
            dismissDirection ?? PopupDialogDismissDirection.horizontal;

  Future<dynamic> render(BuildContext context) async {
    return await Theme.of(context).platform.fold(
          material: () async => _type?.fold(
            flushbar: () async {
              final _bar = Flushbar(
                titleText: title != null && title!.isNotEmpty
                    ? AutoSizeText(
                        title!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.merge(titleStyle),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      )
                    : titleWidget,
                messageText: message != null && message!.isNotEmpty
                    ? AutoSizeText(
                        message!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.merge(messageStyle),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      )
                    : messageWidget,
                duration: duration,
                icon: popupIcon,
                isDismissible: isDismissible!,
                shouldIconPulse: shouldIconPulse!,
                leftBarIndicatorColor: leftBarIndicatorColor,
                blockBackgroundInteraction: blockBackgroundTouch!,
                backgroundColor:
                    backgroundColor ?? Theme.of(context).colorScheme.primary,
                dismissDirection: dismissDirection!.direction,
                mainButton: mainButton,
                margin: margin!,
                padding: padding!,
                onTap: onTap,
                maxWidth: maxWidth,
                routeBlur: overlayBlur,
                onStatusChanged: (status) =>
                    flushbarListener?.call(status?.mapped),
                routeColor: overlayColor?.withOpacity(overlayOpacity!),
                borderRadius: borderRadius,
                flushbarPosition: position?.fold(
                      top: FlushbarPosition.TOP,
                      bottom: FlushbarPosition.BOTTOM,
                    ) ??
                    (MediaQuery.of(context).viewInsets.bottom == 0
                        ? FlushbarPosition.BOTTOM
                        : FlushbarPosition.TOP),
                flushbarStyle: alertStyle!.fold(
                  floating: FlushbarStyle.FLOATING,
                  grounded: FlushbarStyle.GROUNDED,
                ),
              );

              if (callbackOnShow != null)
                return _bar.show(context).then((_) => callback?.call(_));
              else {
                callback?.call(null);
                return _bar.show(context);
              }
            },
          ),
        );
  }
}

extension on _PopupDialogType {
  T? fold<T>({
    T Function()? flushbar,
    T? confirmation,
    T? bottomSheet,
    T? input,
  }) {
    switch (this) {
      case _PopupDialogType.flushbar:
        return flushbar?.call();
      case _PopupDialogType.confirmation:
        return confirmation;
      case _PopupDialogType.bottomSheet:
        return bottomSheet;
      case _PopupDialogType.input:
        return input;
      case _PopupDialogType.none:
      default:
      // return f;
    }
  }
}

extension on PopupDialogStyle {
  T fold<T>({
    required T floating,
    T? grounded,
  }) {
    switch (this) {
      case PopupDialogStyle.grounded:
        return grounded ?? floating!;
      case PopupDialogStyle.floating:
      default:
        return floating!;
    }
  }
}

extension on PopupDialogDismissDirection {
  FlushbarDismissDirection get direction {
    switch (this) {
      case PopupDialogDismissDirection.horizontal:
        return FlushbarDismissDirection.HORIZONTAL;
      case PopupDialogDismissDirection.vertical:
      default:
        return FlushbarDismissDirection.VERTICAL;
    }
  }
}

extension on PopupDialogPosition {
  T fold<T>({
    T? top,
    required T bottom,
  }) {
    switch (this) {
      case PopupDialogPosition.top:
        return top ?? bottom;
      case PopupDialogPosition.bottom:
      default:
        return bottom;
    }
  }
}

extension XPopupDialogStatus on PopupDialogStatus {
  T? fold<T>({
    T? Function()? showing,
    T? Function()? appearing,
    T? Function()? hiding,
    T? Function()? dismissed,
  }) {
    switch (this) {
      case PopupDialogStatus.showing:
        return showing?.call();
      case PopupDialogStatus.isAppearing:
        return appearing?.call();
      case PopupDialogStatus.isHiding:
        return hiding?.call();
      case PopupDialogStatus.dimissed:
        return dismissed?.call();
    }
  }
}

extension on FlushbarStatus {
  PopupDialogStatus? get mapped {
    switch (this) {
      case FlushbarStatus.SHOWING:
        return PopupDialogStatus.showing;
      case FlushbarStatus.IS_APPEARING:
        return PopupDialogStatus.isAppearing;
      case FlushbarStatus.IS_HIDING:
        return PopupDialogStatus.isHiding;
      case FlushbarStatus.DISMISSED:
        return PopupDialogStatus.dimissed;
    }
  }
}
