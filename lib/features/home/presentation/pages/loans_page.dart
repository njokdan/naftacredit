import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render LoansPage.
class LoansPage extends StatelessWidget with AutoRouteWrapper {
  const LoansPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('Welcome to LOANS.')),
    );
  }
}
