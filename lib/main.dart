import 'package:flutter/material.dart';
import 'pages/calender_page.dart';
import 'pages/notifications_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CalenderPage(),
    NotificationsPage(),
    Center(child: Text("Search Page")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.menu_sharp, size: 30, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.account_circle, size: 30, color: Colors.black),
          ),
        ],
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Hello Prashanta!',
                style: TextStyle(fontSize: 32, fontFamily: 'poppins-bold'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Have a nice day',
                style: TextStyle(fontFamily: 'poppins-medium'),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildChip("My tasks"),
                SizedBox(width: 10),
                buildChip("In-progress"),
                SizedBox(width: 10),
                buildChip("Complete"),
              ],
            ),

            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  buildProjectCard(
                    "Project 1",
                    "Front-End\nDevelopment",
                    "October 20, 2025",
                  ),
                  SizedBox(width: 20),
                  buildProjectCard(
                    "Project 2",
                    "Back-End\nDevelopment",
                    "October 20, 2025",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Progress',
                style: TextStyle(fontSize: 24, fontFamily: 'poppins-bold'),
              ),
            ),

            SizedBox(height: 10),

            TaskCard(
              title: "Design Changes",
              subtitle: "2 Days ago",
              iconPath: "assets/images/to-do-list.png",
            ),
            TaskCard(
              title: "UI Update",
              subtitle: "1 Day ago",
              iconPath: "assets/images/to-do-list.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChip(String text) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffD0C6C6),
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildProjectCard(String title, String desc, String date) {
    return Container(
      height: 250,
      width: 250,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff9112BC),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/project-management.png', height: 24),
              SizedBox(width: 10),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          Spacer(),
          Text(
            desc,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'poppins-medium',
            ),
          ),
          SizedBox(height: 10),
          Text(date, style: TextStyle(color: Colors.white70, fontSize: 16)),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;

  const TaskCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Color(0xff9112BC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(iconPath),
            ),
            SizedBox(width: 20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontFamily: 'poppins-bold'),
                ),
                SizedBox(height: 5),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
              ],
            ),
            Spacer(),
            Icon(Icons.more_vert, color: Color(0xffC9CDCF), size: 28),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
