import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for news here...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {
                          // Add notification icon onPressed action here
                        },
                      ),
                    ),
                    onChanged: (value) {
                      // Implement search functionality here
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Latest News',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Assuming 5 news photos
                itemBuilder: (context, index) {
                  // Replace PlaceholderWidget with your news photo widget
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: PlaceholderWidget(),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add Healthy category onPressed action here
                    },
                    child: Text('Healthy'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add Technology category onPressed action here
                    },
                    child: Text('Technology'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add Finance category onPressed action here
                    },
                    child: Text('Finance'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add Arts category onPressed action here
                    },
                    child: Text('Arts'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add Sports category onPressed action here
                    },
                    child: Text('Sports'),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Assuming 10 news items
                itemBuilder: (context, index) {
                  // Replace PlaceholderWidget with your news item widget
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: PlaceholderWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// PlaceholderWidget is a temporary widget for demonstration purposes
class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Replace these placeholders with your news photo, title, writer name, and date
          Text('News Title', style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Writer Name'),
              Text('Day, Date'),
            ],
          ),
        ],
      ),
    );
  }
}
