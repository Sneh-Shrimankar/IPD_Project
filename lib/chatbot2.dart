import 'package:flutter/material.dart';

void main() {
  runApp(FinBuddyApp());
}

class FinBuddyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF2D6EC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.purple),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text(
          "FinBuddy AI",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: SideNavigation(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                ChatBubble(text: "Hi, I am FinBuddy, your personalised financial assistant. How can I help you today?"),
              ],
            ),
          ),
          ChatInputField(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SideNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFF2D6EC),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            ListTile(
              title: Text("How to study the market?"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Investment precautions to be considered"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Basics of budgeting which you should follow"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  ChatBubble({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Color(0xFFF8B9EC),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                color: Color(0xFFF472A0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter the text",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFF472A0),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.purple.withOpacity(0.5),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: "Chatbot",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: "Library",
        ),
      ],
    );
  }
}
