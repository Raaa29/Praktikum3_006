import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context)
              .size
              .width, // Set lebar Container sesuai dengan lebar layar
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Container(
                width: double
                    .infinity, // Maksimalkan lebar Container ke kanan kiri
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                      16.0), // Tambahkan melengkung di luar
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.2), // Warna dan kekaburan bayangan
                      blurRadius: 4.0, // Jarak bayangan dari header
                      offset: Offset(
                          0, 2), // Posisi bayangan relatif terhadap header
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Entering a public space?',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .white, // Ubah warna tulisan menjadi putih
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Stay alert to stay safe.',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                                color: Colors
                                    .white, // Ubah warna tulisan menjadi putih
                              ),
                            ),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(color: Colors.blue),
                              ),
                              child: Text('Scan QR Code'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0), // Spasi antara gambar dan teks
                      Align(
                        alignment: Alignment
                            .topRight, // Posisikan gambar di pojok kanan
                        child: Image.network(
                          'https://iili.io/JXflqCP.png', // URL gambar
                          width: 120.0, // Lebar gambar
                          height: 120.0, // Tinggi gambar
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                '',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfulVa.jpg',
                      appName: 'Vaccine'),
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfu5AP.jpg',
                      appName: 'Test Result'),
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfucog.jpg', appName: 'EHAC'),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfuRHB.jpg',
                      appName: 'Travel Reg'),
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfuYDF.jpg',
                      appName: 'Telemedicine'),
                  AppIcon(
                      iconUrl: 'https://iili.io/JXfu7N1.jpg',
                      appName: 'Healthcare'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final String iconUrl;
  final String appName;

  const AppIcon({required this.iconUrl, required this.appName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          iconUrl,
          width: 60.0,
          height: 60.0,
        ),
        SizedBox(height: 8.0),
        Text(
          appName,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
