import 'package:flutter/material.dart';
import 'package:kandostu/components/edited_card.dart';
import 'package:kandostu/resources/images.dart';
import 'package:kandostu/resources/strings.dart';

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
              const SizedBox(height: 14),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                  child: Text(
                    Strings.postButton,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
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
