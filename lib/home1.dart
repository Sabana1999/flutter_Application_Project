import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/login2.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80, // Adjusted height for the image
                child: Image.asset(
                  'asset/WhatsApp Image 2024-05-05 at 16.05.23_4dfa6bb2.jpg',
                  // Replace 'assets/your_image.png' with your image path
                ),
              ),
              SizedBox(height: 20), // Added spacing below the image
              Container(
                width: 200, // Make the Container fill the width
                height: 50,
                // Adjusted height for the TabBar
                child: Center(
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelPadding: EdgeInsets.symmetric(
                        horizontal: 0), // Adjusted padding for the tab buttons
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: SizedBox(
                          height: 50, // Adjusted height for the tab button
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('password'),
                          ),
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          height: 50, // Adjusted height for the tab button
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('email'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    LoginForm(),
                    LoginPa(),
                    // Add another TabBarView child if needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
