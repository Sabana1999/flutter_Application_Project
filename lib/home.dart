import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myItems = [
    Image.asset('asset/Free PSD _ Black friday super sale social media banner template.jpeg'),
    Image.asset('asset/Copy of Products Promotion - Shop Post - Sale Social.jpeg'),
    Image.asset('asset/5S Phone Mock-up.jpeg'),
  ];

  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 15, top: 10),
                child: TextField(
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search here...',
                      suffixIcon: const Icon(Icons.search)),
                  onChanged: (value) {
                    // Perform search operation with value
                  },
                ),
              ),
            ),
            const Icon(
              Icons.notifications_none_sharp,
              size: 30,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10.0),
            child: Container(
              height: 2.0,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                margin: const EdgeInsets.all(10),
                child: CarouselSlider(
                  items: myItems,
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10), // Set border radius here
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'KYC pending',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Text(
                      'you need to provide required ',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'document for your account activation',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),SizedBox(height: 20,),
                    
                    Text('Click Here',
                    
                    
                    style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white),
                    )
                    
                  ],
                ),
              ),
                                  SizedBox(height: 10),
Container(
  width: 350,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RoundIconButton(icon: Icons.camera_alt),
                          RoundIconButton(icon: Icons.file_upload),
                          RoundIconButton(icon: Icons.cloud_upload),
                          RoundIconButton(icon: Icons.folder),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  const RoundIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.blue, // Set icon color to blue
        onPressed: () {
          // Add your onPressed functionality here
        },
      ),
    );
  }
}
