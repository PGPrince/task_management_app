import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.menu_sharp, size: 35),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.account_circle, size: 35),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Hello Prashanta!',
                  style: TextStyle(fontSize: 40.17, fontFamily: 'poppins-bold'),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Have a nice day',
                  style: TextStyle(fontFamily: 'poppins-medium'),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffD0C6C6),
                      ),
                      child: Center(
                        child: Text(
                          'My tasks',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffD0C6C6),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'In-progress',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffD0C6C6),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Complete',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff9112BC),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/project-management.png',
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Project 1',
                                style: TextStyle(
                                  fontSize: 22.42,
                                  fontFamily: 'poppins-regular',
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Fond-End\nDevelopment',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'poppins-medium',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'October 20, 2025',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'poppins-regular',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff9112BC),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/project-management.png',
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Project 2',
                                style: TextStyle(
                                  fontSize: 22.42,
                                  fontFamily: 'poppins-regular',
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Back-End\nDevelopment',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'poppins-medium',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'October 20, 2025',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'poppins-regular',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Progress',
                  style: TextStyle(fontSize: 30, fontFamily: 'poppins-bold'),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff9112BC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/to-do-list.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Design Changes',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'poppins-bold',
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                '2 Days ago',
                                style: TextStyle(fontFamily: 'poppins-regular'),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffC9CDCF),
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff9112BC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/to-do-list.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Design Changes',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'poppins-bold',
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                '2 Days ago',
                                style: TextStyle(fontFamily: 'poppins-regular'),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffC9CDCF),
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
