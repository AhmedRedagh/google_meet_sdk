import 'package:flutter/material.dart';
import 'package:google_meet_example/screens/dashboard_screen.dart';
import 'package:google_meet_sdk/google_meet_sdk.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          key: UniqueKey(),
          onPressed: () {
            GoogleAuthentication.signInWithGoogle(
                    context: context,
                    clientId: '927468012811-ig3g2ct9434ktp3cs8ufih8fvijd1sg7.apps.googleusercontent.com')
                .then((value) {
              if (value != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ));
              } else {
                debugPrint('something went wrong while login...');
              }
            });
          },
          child: const Text("click"),
        ),
      ),
    );
  }
}
