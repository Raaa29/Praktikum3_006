import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sans-serif',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('images/banner_upn.jpg'), // Header image file
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    left: 16,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                      onPressed: () {
                        // Add your back button functionality here
                      },
                    ),
                  ),
                  Positioned(
                    top: 24,
                    right: 16,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.black,
                          onPressed: () {
                            // Add your search button functionality here
                          },
                        ),
                        SizedBox(width: 12),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          color: Colors.black,
                          onPressed: () {
                            // Add your menu button functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Transform.translate(
                    offset: Offset(0.0, -100.0), // Geser ke atas sekitar 10 cm
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: 0.3, // Lebar gambar 30% dari lebar layar
                        child: ClipOval(
                          child: Image.asset(
                            'images/logo_upn.jpg', // Profile picture file
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Transform.translate(
                    offset: Offset(0.0,
                        -100.0), // Geser keterangan dan username ke atas sekitar 10 cm
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UPN VETERAN JAWA TIMUR', // Keterangan UPN VETERAN JAWA TIMUR
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '@upnvjt', // Keterangan username
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'AKUN RESMI UPNVJT dikelola oleh Humas UPNVJT', // Tulisan tambahan
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Transform.translate(
                    offset: Offset(0.0,
                        -300.0), // Geser tombol follow ke atas sekitar 27 cm
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your follow button functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 16),
                        ),
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
