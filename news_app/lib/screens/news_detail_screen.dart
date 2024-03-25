import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200, // Adjust the height as needed
            color: Colors.grey[300], // Placeholder color
            child: Center(
              child: Text(
                'News Photo',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'News Detail Text',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add onPressed action here
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.favorite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'News Date',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'News Title',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Publisher Name',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
