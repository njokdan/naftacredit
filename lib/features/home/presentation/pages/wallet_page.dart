import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render WalletPage.
class WalletPage extends StatelessWidget with AutoRouteWrapper {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('This will be the WALLET page')),
    );
  }
}
