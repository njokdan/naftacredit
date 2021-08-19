import 'package:naftacredit/utils/utils.dart';

class Destination {
  final int id;
  final String icon;
  final String title;

  const Destination({
    required this.id,
    required this.title,
    required this.icon,
  });

  static List<Destination> get list => [
        const Destination(id: 0, title: 'Home', icon: AppAssets.homeOutlined),
        //
        const Destination(id: 1, title: 'Loans', icon: AppAssets.sendOutlined),
        //
        const Destination(
          id: 2,
          title: 'My Wallet',
          icon: AppAssets.walletOutlined,
        ),
      ];
}
