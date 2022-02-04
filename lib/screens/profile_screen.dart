import 'package:flutter/material.dart';
import 'package:kandostu/components/edited_appbar.dart';
import 'package:kandostu/components/edited_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEF3),
      appBar: const EditedAppBar(),
      body: EditedCard(
        child: Column(
          children: const [
            Text("Berkay Çatak"),
            Text("+90 (507) 720 96 17"),
          ],
        ),
      ),
    );
  }
}
