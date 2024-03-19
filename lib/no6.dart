import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String?>> data = [
    {
      'name': 'John Doe',
      'hobby': 'Playing guitar',
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgbihFQeOfyFBsjveLCjUYtHZmEb0pogS07Q&usqp=CAU',
    },
    {
      'name': 'Jane Smith',
      'hobby': 'Reading books',
      'imagePath':
          'https://img.lovepik.com/free-png/20210923/lovepik-cartoon-creative-boy-reading-book-by-books-png-image_401272853_wh1200.png',
    },
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of People'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Image.network(data[index]
                    ['imagePath']!), // Add "!" to assert that it's not null
                title: Text(data[index]['name']!),
                subtitle: Text(data[index]['hobby']!),
              ),
            );
          },
        ),
      ),
    );
  }
}