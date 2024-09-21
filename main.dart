import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.purple,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Picture and Name Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Your image path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hi, Precious',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'Joined Aug, 2022',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"The time we spend awake is precious, but so is the time we spend asleep."',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '- LEBRON JAMES',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            
            // Stats Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  // Zen Master Progress Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ZEN MASTER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('220/300', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: 220 / 300,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                  ),
                  SizedBox(height: 10),
                  
                  // Stats Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('STATS')),
                      ElevatedButton(onPressed: () {}, child: Text('HISTORY')),
                      ElevatedButton(onPressed: () {}, child: Text('EDIT')),
                    ],
                  ),
                ],
              ),
            ),
            
            // Stats Overview
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatCard('23', 'Completed\nSessions'),
                  StatCard('94', 'Minutes\nSpent'),
                  StatCard('15 days', 'Longest\nStreak'),
                ],
              ),
            ),
            
            // Bottom Navigation Options
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('My Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text('My Orders'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.refresh),
                    title: Text('Refund'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Change Password'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Change Language'),
                    onTap: () {},
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

// Custom Widget for Stat Cards
class StatCard extends StatelessWidget {
  final String stat;
  final String description;

  StatCard(this.stat, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          stat,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
