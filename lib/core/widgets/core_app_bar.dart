import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helper/extention.dart';
import 'package:flutter_advance/core/theming/text_style.dart';

class CoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoreAppBar({super.key, this.appBartext});
  final String? appBartext;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new)),
      centerTitle: true,
      title: Text(
        appBartext ?? "AppBar",
        style: TextStyles.font18DarkBlueSemiBold,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
