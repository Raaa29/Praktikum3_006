import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> topMenuData = [
    {
      'name': 'GoRide',
      'iconUrl': 'https://iili.io/JW4KfhG.png',
    },
    {
      'name': 'GoCar',
      'iconUrl': 'https://iili.io/JW4zzmB.png',
    },
    {
      'name': 'GoFood',
      'iconUrl': 'https://iili.io/JW4zO74.png',
    },
    {
      'name': 'GoSend',
      'iconUrl': 'https://iili.io/JW4ARuR.png',
    },
  ];

  final List<Map<String, dynamic>> bottomMenuData = [
    {
      'name': 'GoMart',
      'iconUrl': 'https://iili.io/JW4RU0X.png',
    },
    {
      'name': 'GoPulsa',
      'iconUrl': 'https://iili.io/JW4RU0X.png',
    },
    {
      'name': 'Check In',
      'iconUrl': 'https://iili.io/JW4WyMu.png',
    },
    {
      'name': 'Lainnya',
      'iconUrl': 'https://iili.io/JW6l691.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Gojek',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Logic to handle when the "Edit" button is clicked
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.green),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(
                  'Edit',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: topMenuData.length,
                    childAspectRatio: 1,
                  ),
                  itemCount: topMenuData.length,
                  itemBuilder: (context, index) {
                    var item = topMenuData[index];
                    return GestureDetector(
                      onTap: () {
                        // Logic to handle when a top menu item is clicked
                      },
                      child: Column(
                        children: [
                          Image.network(
                            item['iconUrl'],
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['name'],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: bottomMenuData.length,
                    childAspectRatio: 1,
                  ),
                  itemCount: bottomMenuData.length,
                  itemBuilder: (context, index) {
                    var item = bottomMenuData[index];
                    return GestureDetector(
                      onTap: () {
                        // Logic to handle when a bottom menu item is clicked
                      },
                      child: Column(
                        children: [
                          Image.network(
                            item['iconUrl'],
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['name'],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}