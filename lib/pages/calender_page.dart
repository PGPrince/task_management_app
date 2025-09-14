import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Calendar Header
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    /// Month Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Oct, 2020",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "poppins-bold",
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            /// Navigate to Add Task Page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddTaskPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff9112BC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          icon: Icon(Icons.add, color: Colors.white),
                          label: Text(
                            "Add Task",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    /// Days Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildDay("Mo", "3"),
                        buildDay("Tu", "4", isSelected: true),
                        buildDay("We", "5"),
                        buildDay("Th", "6"),
                        buildDay("Fr", "7"),
                        buildDay("Sa", "8"),
                        buildDay("Su", "9"),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              /// Task Section
              Text(
                "Tasks",
                style: TextStyle(fontFamily: "poppins-bold", fontSize: 26),
              ),
              SizedBox(height: 20),

              TaskCard(
                title: "Design Changes",
                subtitle: "2 Days ago",
                iconPath: "assets/images/project-management.png",
              ),
              TaskCard(
                title: "UI Fix",
                subtitle: "1 Day ago",
                iconPath: "assets/images/project-management.png",
              ),
              TaskCard(
                title: "Database Update",
                subtitle: "Today",
                iconPath: "assets/images/project-management.png",
              ),
              TaskCard(
                title: "Code Review",
                subtitle: "3 Days ago",
                iconPath: "assets/images/project-management.png",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDay(String day, String date, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(fontFamily: "poppins-medium", color: Colors.grey),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff9112BC) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontFamily: "poppins-bold",
            ),
          ),
        ),
      ],
    );
  }
}

/// Reusable Task Card Widget
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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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
            SizedBox(width: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff9112BC),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(iconPath),
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontFamily: "poppins-bold"),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "poppins-medium",
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.more_vert, color: Colors.grey, size: 26),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

/// --------------------
/// Add Task Page
/// --------------------
class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Create a Task",
          style: TextStyle(color: Colors.black, fontFamily: "poppins-bold"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name", style: TextStyle(fontFamily: "poppins-medium")),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Design Changes",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            Text("Date", style: TextStyle(fontFamily: "poppins-medium")),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Oct 24, 2020",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Time",
                        style: TextStyle(fontFamily: "poppins-medium"),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "01:22 pm",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End Time",
                        style: TextStyle(fontFamily: "poppins-medium"),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "03:20 pm",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Text("Description", style: TextStyle(fontFamily: "poppins-medium")),
            SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Enter task details...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Spacer(),

            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff9112BC),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Create Task",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppins-bold",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
