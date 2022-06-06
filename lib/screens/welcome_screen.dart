import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../themes/theme_of_app.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = "/welcome_screen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                width: 200,
                height: 200,
                child: Lottie.asset(
                  "assets/lotties/lottie.json",
                  repeat: true,
                  reverse: false,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // #Welcome to Uno To Do
                  Container(
                    width: 200,
                    height: 90,
                    child: Text(
                      "Welcome to\nUno To Do",
                      style: Themes.textStyle1(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // #Start using the best To Do app
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    width: 240,
                    height: 20,
                    child: const Text(
                      "Start using the best To Do app",
                      style: TextStyle(color: Color(0xFF5835E5), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // #Get started
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width - 60,
                    height: 50,
                    onPressed: () {},
                    shape: const StadiumBorder(),
                    color: const Color(0xFF5835E5),
                    child: const Text(
                      "Get started",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
