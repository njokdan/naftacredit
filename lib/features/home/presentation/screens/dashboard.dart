import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naftacredit/features/home/domain/entities/destination.dart';
import 'package:naftacredit/utils/utils.dart';

/// A stateful widget to render DashboardScreen.
class DashboardScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _DashboardScreenState extends State<DashboardScreen>
    with AutomaticKeepAliveClientMixin<DashboardScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AutoTabsRouter(
      routes: [
        const HomeRouter(),
        const LoansRouter(),
        const WalletRouter(),
      ],
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOutCubic,
      builder: (context, child, animation) {
        var active = context.tabsRouter.activeIndex;

        return Scaffold(
          body: FadeTransition(opacity: animation, child: child),
          bottomNavigationBar: BottomNavigationBar(
            onTap: context.tabsRouter.setActiveIndex,
            currentIndex: active,
            selectedItemColor: Helpers.foldTheme(
              light: () => Palette.accentColor,
              dark: () => Palette.accentColor.shade100,
            ),
            unselectedItemColor: Colors.grey,
            items: Destination.list
                .map(
                  (i) => BottomNavigationBarItem(
                    label: i.title,
                    icon: SvgPicture.asset(
                      i.icon,
                      height: active == i.id ? 30 : 25,
                      width: active == i.id ? 30 : 25,
                      fit: BoxFit.contain,
                      color: active == i.id
                          ? Helpers.foldTheme(
                              light: () => Palette.accentColor,
                              dark: () => Palette.accentColor.shade100,
                            )
                          : Colors.grey,
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
