import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LeaderboardScreen(),
    );
  }
}

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.account_circle, color: Colors.purple, size: 30),
                        Row(
                          children: [
                            Icon(Icons.notifications, color: Colors.purple, size: 26),
                            SizedBox(width: 10),
                            Icon(Icons.settings, color: Colors.purple, size: 26),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Today', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple, fontSize: 18)),
                      SizedBox(width: 20),
                      Text('Month', style: TextStyle(color: Colors.black54, fontSize: 18)),
                      SizedBox(width: 20),
                      Text('All Times', style: TextStyle(color: Colors.black54, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildPodium('2', '442pt', Colors.purple.shade200),
                          SizedBox(width: 10),
                          _buildPodium('1', '453pt', Colors.purple),
                          SizedBox(width: 10),
                          _buildPodium('3', '433pt', Colors.purple.shade200),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFFF8D7FA),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    _buildLeaderboardRow('04', 'Ishaani', '223pt'),
                    _buildLeaderboardRow('05', 'Esha', '160pt'),
                    _buildLeaderboardRow('06', 'Kaosar', '140pt'),
                    _buildLeaderboardRow('07', 'Sam', '130pt'),
                    _buildLeaderboardRow('18', 'Jon', '120pt'),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('<- Back', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
                          Text('Next ->', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    BottomNavigationBar(
                      selectedItemColor: Colors.purple,
                      unselectedItemColor: Colors.grey,
                      items: [
                        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
                        BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
                        BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Trivia'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPodium(String rank, String score, Color color) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 120,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(rank, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(score, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaderboardRow(String position, String name, String score) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(position, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.grey, radius: 16),
              SizedBox(width: 10),
              Text(name, style: TextStyle(fontSize: 16)),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(score, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
