import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scrollable List"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            //This is where all the images and captions will go
            Column(
              children: [

                Text("Text 1")
              ]
            ), 
            
            SizedBox(height: 20),

            Column(
              children: [
                Text("Text 2")
              ]
            ), 

            SizedBox(height: 20), 

            Column(
              children: [
                Text("Text 3")
              ]

            ), 
          ]
        )
      ),
    );
  }
}
