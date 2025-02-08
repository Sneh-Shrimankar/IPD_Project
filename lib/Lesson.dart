import 'package:flutter/material.dart';

void main() {
  runApp(FinancialPlannerApp());
}

class FinancialPlannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FinancialPlannerScreen(),
    );
  }
}

class FinancialPlannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9D7F5),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              _buildHeader(),
              SizedBox(height: 20),
              _buildTabs(),
              SizedBox(height: 15),
              Text("10 Lessons  •  25 Hours", style: TextStyle(color: Colors.black54)),
              SizedBox(height: 15),
              _buildLessons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
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
    );
  }

  Widget _buildTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTabItem("Self Learning", true),
        _buildTabItem("Certificate", false),
        _buildTabItem("Upgrade", false),
      ],
    );
  }

  Widget _buildTabItem(String title, bool isSelected) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.purple : Colors.black54,
          ),
        ),
        if (isSelected)
          Container(
            width: 60,
            height: 3,
            color: Colors.purple,
            margin: EdgeInsets.only(top: 4),
          ),
      ],
    );
  }

  Widget _buildLessons() {
    return Column(
      children: [
        _buildLessonTile("Lesson 1", "Introduction", ["1.1 Introduction to Finance"]),
        _buildLessonTile("Lesson 2", "Financial Fundamentals", []),
        _buildLessonTile("Lesson 3", "Financial Planning Flow", []),
        _buildLessonTile("Lesson 4", "Tax Planning", []),
        _buildLessonTile("Lesson 5", "Investment Planning", []),
        _buildLessonTile("Lesson 6", "Money Calculations", []),
      ],
    );
  }

  Widget _buildLessonTile(String lessonNumber, String title, List<String> subLessons) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lessonNumber,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.purple[900]),
              ),
              Icon(Icons.expand_more, color: Colors.purple[900]),
            ],
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple[900]),
          ),
          if (subLessons.isNotEmpty) ...subLessons.map((sub) => _buildSubLesson(sub)).toList(),
        ],
      ),
    );
  }

  Widget _buildSubLesson(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          Icon(Icons.play_circle_fill, color: Colors.black54, size: 20),
          SizedBox(width: 5),
          Text(title, style: TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }
}
