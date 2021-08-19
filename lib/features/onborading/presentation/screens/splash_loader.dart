import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashPositionedLoader extends StatefulWidget {
  final Color? color;
  final Duration duration;
  final double size;

  const SplashPositionedLoader({
    Key? key,
    this.size = 34.0,
    this.color,
    this.duration = const Duration(milliseconds: 1100),
  }) : super(key: key);

  @override
  _SplashPositionedLoaderState createState() => _SplashPositionedLoaderState();
}

class _SplashPositionedLoaderState extends State<SplashPositionedLoader>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<SplashPositionedLoader> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SpinKitPouringHourglass(
      color: widget.color ?? Theme.of(context).colorScheme.secondary,
      size: widget.size,
      controller: AnimationController(
        vsync: this,
        duration: widget.duration,
      ),
    );
  }
}
