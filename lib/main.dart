import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/lake1.jpg', height: 700, width: double.infinity, fit: BoxFit.cover),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("Positive Affirmation Text Goes Here", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )

              ]
            ), 
            
            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/lake2.jpg', height: 700, width: double.infinity, fit: BoxFit.cover),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("Positive Affirmation Text Goes Here", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )
              ]
            ), 

            SizedBox(height: 20), 

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/lake3.jpeg', height: 700, width: double.infinity, fit: BoxFit.cover),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("Positive Affirmation Text Goes Here", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )
              ]
            ), 

            SizedBox(height: 20),

            
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/beachsunset.jpg', height: 700, width: double.infinity, fit: BoxFit.cover),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("Positive Affirmation Text Goes Here", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )
              ]
            ),

          ]
        )
      ),
    );
  }
}
