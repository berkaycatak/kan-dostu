import 'package:flutter/material.dart';
import 'package:kandostu/components/edited_appbar.dart';
import 'package:kandostu/components/edited_card.dart';
import 'package:kandostu/components/post_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEF3),
      appBar: const EditedAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              EditedCard(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Berkay Çatak",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Icon(
                              Icons.phone,
                              size: 13,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "+90 (507) 720 96 17",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.bloodtype,
                              size: 13,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "A RH+",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.settings,
                        size: 20,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Post(
                hospital: 'Sakarya Eğitim ve Araştırma Hastanesi',
                bloodGroup: 'A RH+',
                description:
                    'Hasta şurada burada şöyle föyle böyle töyle işte ondan sonra şu olursa bu böyle olur.',
                owner: 1,
                id: 4,
              ),
              const Post(
                hospital: 'Maltepe Devlet Hastanesi',
                bloodGroup: 'A RH+',
                description:
                    'Çok acil kan gerekiyor lütfen en kısa sürede ulaşın',
                owner: 1,
                id: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
