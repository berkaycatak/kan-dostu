import 'package:flutter/material.dart';
import 'package:kandostu/resources/strings.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/landing_top.png',
                    height: 350,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  Strings.welcomeMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  Strings.welcomeMessageDetail,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                const LandingActionButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LandingActionButtons extends StatelessWidget {
  const LandingActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFF2F2F2),
      ),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/register'),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 35, right: 35),
              child: const Text(
                Strings.registerButton,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/homepage'),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 15),
              child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  Strings.loginButton,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
