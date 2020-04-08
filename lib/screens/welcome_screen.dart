import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 300.0,
                ),
                TyperAnimatedTextKit(
                  text: ['Noruuu'],
                  textStyle: TextStyle(
                    fontSize: 65.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.red[400],
                  ),
                  duration: Duration(seconds: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: RoundedButton(
              buttonColor: Colors.red[400],
              buttonText: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: RoundedButton(
              buttonColor: Colors.blueAccent,
              buttonText: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ),
          Expanded(
            child: Container(
              child: FlareActor(
                'assets/animations/Taxi.flr',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.contain,
                animation: "driveLoop",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
