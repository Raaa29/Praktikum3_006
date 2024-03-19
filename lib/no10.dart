import 'package:flutter/material.dart';

void main() {
  runApp(MyTabbedPage());
}

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fakultas'),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.directions_bike), text: "For You"),
              Tab(icon: Icon(Icons.directions_boat), text: "Following"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: ListView.builder(
                itemCount: dataForYou.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.all(14),
                    child: Row(
                      children: [
                        FlutterLogo(), // Menggunakan FlutterLogo() sebagai ikon default
                        SizedBox(width: 10), // Spacer
                        Text(dataForYou[index]),
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 3 gambar per baris
                  childAspectRatio: 1, // Rasio lebar-tinggi item
                ),
                itemCount: dataFollowing.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(70), // Padding
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMGJgRhqc3edMy0VYHUQUSrPdr-008KeGNlhQP7IZsUlPQ3LE6GTZjiCreBg&s', // Ganti dengan URL gambar Anda
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

List<String> dataForYou = [
  "Data ke 1",
  "Data ke 2",
  "Data ke 3",
  "Data ke 4",
  "Data ke 5",
  "Data ke 6",
];

List<String> dataFollowing = [
  "gambar 1",
  "gambar 2",
  "gambar 3",
  "gambar 4",
  "gambar 5",
  "gambar 5",
];
