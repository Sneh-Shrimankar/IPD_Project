import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizResultScreen(),
    );
  }
}

class QuizResultScreen extends StatelessWidget {
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
                  Text(
                    'QUIZ TIME!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 140,
                        height: 140,
                        child: CircularProgressIndicator(
                          value: 1.0,
                          strokeWidth: 12,
                          backgroundColor: Colors.pink.shade200,
                          color: Colors.pink,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'your score',
                            style: TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          Text(
                            '100 pt',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('100%', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                              Text('20 Total Questions', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('✔ 13 Correct', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                              Text('❌ 07 Wrong', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.refresh, color: Colors.blue, size: 40),
                            Text('Play Again'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.remove_red_eye, color: Colors.brown, size: 40),
                            Text('Review Answer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.share, color: Colors.pink, size: 40),
                            Text('Share Score'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(8),
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(color: Colors.green, value: 65, title: '✔'),
                            PieChartSectionData(color: Colors.red, value: 35, title: '❌'),
                          ],
                        ),
                      ),
                    ),
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
}
