import 'package:flutter/material.dart';
import 'package:kandostu/resources/images.dart';

class EditedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const EditedAppBar({Key? key}) : super(key: key);

  @override
  State<EditedAppBar> createState() => _EditedAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _EditedAppBarState extends State<EditedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      actions: const [SizedBox(width: 85)],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.blood),
          const SizedBox(width: 10),
          const Text("Kan Dostu"),
        ],
      ),
      centerTitle: true,
    );
  }
}
