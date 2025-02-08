import 'package:flutter/material.dart';

void main() {
  runApp(FinancialPlannerApp());
}

class FinancialPlannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5C7F7),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Upper Nav Bar
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple[200],
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello", style: TextStyle(fontSize: 16, color: Colors.purple)),
                            Text("Rahul Sharma", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple[900])),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications, color: Colors.purple[900]),
                        SizedBox(width: 10),
                        Icon(Icons.settings, color: Colors.purple[900]),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Course Card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Become a Certified", style: TextStyle(fontSize: 16)),
                    Text("Financial Planner", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple[900])),
                    Text("Unlock Your Potential with Our Online Courses.", style: TextStyle(fontSize: 14)),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Why thinking? Start Learning.....", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildInfoBox("Status", "Ongoing", Icons.toggle_on, Colors.purple),
                        _buildInfoBox("Instructor", "James Adam", Icons.person, Colors.purple),
                        _buildInfoBox("Chapters", "10\n4 Quizzes", Icons.menu_book, Colors.purple),
                        _buildInfoBox("Language", "EN\nEnglish", Icons.language, Colors.purple),
                      ],
                    ),
                    Divider(height: 30, color: Colors.grey[300]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Course Overview", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.purple[900])),
                        Text("Study Resources", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "This course provides a comprehensive introduction to data structures. an    essential      foundation     for        computerscience and software development. It covers the fundamentals of   organizing,          managing, and storing data in a way that enables efficient access and modification.You will learn about various data structures, their use cases, and how to choose the most appropriate one for solving different problems.",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.purple[900]),
                        SizedBox(width: 5),
                        Text("25 Hours", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Enroll Now", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox(String title, String value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color),
        SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 12, color: Colors.black54)),
        Text(value, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.purple[900])),
      ],
    );
  }
}
