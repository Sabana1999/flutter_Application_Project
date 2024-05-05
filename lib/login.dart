import 'package:flutter/material.dart';
import 'package:flutter_application_2/otp.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Text(
              'Glad to see you',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text('please provide your phone number'),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'number'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OTPScreen()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: Size(200, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
