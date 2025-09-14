import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: _buildMainAppBar(title: "Create a Task"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Name
            Text(
              "Name",
              style: TextStyle(fontFamily: "poppins-bold", fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Design Changes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Date
            Text(
              "Date",
              style: TextStyle(fontFamily: "poppins-bold", fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Oct 24, 2020",
                suffixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Start & End Time
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Time",
                        style: TextStyle(
                          fontFamily: "poppins-bold",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "01:22 pm",
                          suffixIcon: Icon(Icons.access_time),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End Time",
                        style: TextStyle(
                          fontFamily: "poppins-bold",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "03:20 pm",
                          suffixIcon: Icon(Icons.access_time),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            /// Description
            Text(
              "Description",
              style: TextStyle(fontFamily: "poppins-bold", fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Enter task details...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Category
            Text(
              "Category",
              style: TextStyle(fontFamily: "poppins-bold", fontSize: 16),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                buildCategoryChip("Design", isSelected: true),
                buildCategoryChip("Meeting"),
                buildCategoryChip("Coding"),
                buildCategoryChip("Test"),
                buildCategoryChip("Quick call"),
              ],
            ),
            SizedBox(height: 30),

            /// Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Handle save
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff9112BC),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Create Task",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Local AppBar builder (no extra file needed)
  PreferredSizeWidget _buildMainAppBar({required String title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: BackButton(color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontFamily: "poppins-bold"),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    );
  }

  /// Category chip widget
  Widget buildCategoryChip(String label, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff9112BC) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontFamily: "poppins-medium",
        ),
      ),
    );
  }
}
