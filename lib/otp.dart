import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late Timer _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: Image.asset(
                  'asset/WhatsApp Image 2024-05-05 at 16.55.14_f6ea8b21.jpg'), // Replace with your image path
            ),
            SizedBox(height: 20),
            Text(
              'OTP Verification',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We have sent a unique code to your phone number.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 38),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '-',
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '$_start seconds left to resend OTP',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      _start = 60; // Reset timer
                    });
                    _startTimer(); // Start timer again
                  },
                  child: Text(
                    'Send Again',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNav()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: Size(400, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              'verify',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
