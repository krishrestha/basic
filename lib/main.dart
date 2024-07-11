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
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text('Basic Information'), centerTitle: true,),
        body: Container(
          padding: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Welcome to Flutter app'),
              Column(
                children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/images/1.jpg',),radius: 38,),
                  Text('Github logo'),
                ],
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpg',),radius: 38,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chris Shrestha',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                        Text('Flutter Developer',style: TextStyle(color: Colors.white),),
                        Text('Welcome to my flutter journey',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
