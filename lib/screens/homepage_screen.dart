import 'package:flutter/material.dart';
import 'package:kandostu/components/edited_card.dart';
import 'package:kandostu/resources/images.dart';
import 'package:kandostu/resources/strings.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EditedCard(
                  child: RichText(
                    text: TextSpan(
                      text: Strings.homePageWelcome("Berkay"),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: const [
                        TextSpan(
                          text: Strings.homePageWelcomeDetail,
                          style: TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SearchDonor(),
                const SizedBox(height: 10),
                const AddPost(),
                const SizedBox(height: 15),
                const Text(
                  Strings.postsTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 10),
                const Post(
                  hospital: 'Sakarya Eğitim ve Araştırma Hastanesi',
                  bloodGroup: 'A RH+',
                  description:
                      'Hasta şurada burada şöyle föyle böyle töyle işte ondan sonra şu olursa bu böyle olur.',
                ),
                const Post(
                  hospital: 'Maltepe Devlet Hastanesi',
                  bloodGroup: 'A RH+',
                  description:
                      'Çok acil kan gerekiyor lütfen en kısa sürede ulaşın',
                ),
                const Post(
                  hospital: 'Kızılay Hastanesi',
                  bloodGroup: 'A RH+',
                  description:
                      'Çok acil kan gerekiyor lütfen en kısa sürede ulaşın',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: EditedCard(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.surface),
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  Strings.donateNeeds,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SearchDonor extends StatelessWidget {
  const SearchDonor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: EditedCard(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.secondary),
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  Strings.searchDonor,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  final String bloodGroup, hospital, description;
  const Post(
      {Key? key,
      required this.bloodGroup,
      required this.hospital,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: GestureDetector(
        child: EditedCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.needingDonor,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              PostField(
                imagePath: Images.blood,
                title: Strings.postBloodGroup,
                value: bloodGroup,
              ),
              const SizedBox(height: 14),
              PostField(
                  imagePath: Images.hospital,
                  title: Strings.postHospital,
                  value: hospital),
              const SizedBox(height: 14),
              PostField(
                imagePath: Images.description,
                title: Strings.postHospital,
                value: description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostField extends StatelessWidget {
  final String imagePath, title, value;
  const PostField({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 26,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.30,
              child: Text(
                value,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        )
      ],
    );
  }
}
