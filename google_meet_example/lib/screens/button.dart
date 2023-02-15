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
                    clientId:
                        '513910323072-8k64rs335idb0r7takt6hrvsbr650n3k.apps.googleusercontent.com',
              serverClientId: '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'
            )
                .then((value) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ));
            });
          },
          child: const Text("click"),
        ),
      ),
    );
  }
}
