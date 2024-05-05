import 'package:flutter/material.dart';

class LoginPa extends StatefulWidget {
  const LoginPa({Key? key});

  @override
  State<LoginPa> createState() => _LoginPaState();
}

class _LoginPaState extends State<LoginPa> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Added space above the "Let's Begin" text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Let\'s Begin',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20), // Added space below the "Let's Begin" text
            Text('Please provide your credentials to proceed'),
            SizedBox(height: 20), // Added space below the instruction text
            Padding(
              padding: const EdgeInsets.all(20), // Reduced padding around the text fields
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Your email'),
                  ),
                  SizedBox(height: 20), // Added space between the text fields
                  TextFormField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Create Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Added space between the text fields
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Referral code'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Added space below the text fields
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Added space below the button
          ],
        ),
      ),
    );
  }
}
