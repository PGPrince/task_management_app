import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Tasks',
            style: TextStyle(fontFamily: 'poppins-bold', fontSize: 30),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff9112BC),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image(
                  image: AssetImage('assets/images/project-management.png'),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Design Changes',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'poppins-medium',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2 Days ago',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'poppins-medium',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
