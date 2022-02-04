import 'package:flutter/material.dart';
import 'package:kandostu/components/edited_appbar.dart';
import 'package:kandostu/components/edited_card.dart';
import 'package:kandostu/resources/strings.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEF3),
      appBar: const EditedAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              SearchDonor(),
              SizedBox(height: 15),
              NeededDonate(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchDonor extends StatefulWidget {
  const SearchDonor({Key? key}) : super(key: key);

  @override
  _SearchDonorState createState() => _SearchDonorState();
}

class _SearchDonorState extends State<SearchDonor> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return EditedCard(
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              style: const TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              isExpanded: true,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: const Text(
                "İl seçin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _chosenValue = value!;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              style: const TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              isExpanded: true,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: const Text(
                "Kan grubu seçin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _chosenValue = value!;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
              child: Text(
                Strings.searchDonor,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NeededDonate extends StatefulWidget {
  const NeededDonate({Key? key}) : super(key: key);

  @override
  _NeededDonateState createState() => _NeededDonateState();
}

class _NeededDonateState extends State<NeededDonate> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return EditedCard(
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              style: const TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              isExpanded: true,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: const Text(
                "İl seçin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _chosenValue = value!;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              style: const TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              isExpanded: true,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: const Text(
                "Kan grubu seçin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _chosenValue = value!;
                });
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
              child: Text(
                Strings.searchDonor,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
