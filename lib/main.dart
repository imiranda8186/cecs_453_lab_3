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
        //Main body of the program is a ListView since that allows for the objects to be scrollable 
        //Chose vertical scrolling, seemed closest to the sample output
        body: ListView(
          padding: const EdgeInsets.all(16),
          //Children is a list of widgets
          children: <Widget>[
            //This is where all the images and captions will go
            Column(
              //.stretch used to make each child (image and caption) as wide as possible
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/lake1.jpg', height: 700, width: double.infinity, fit: BoxFit.cover),
                //Container used to make the text look more like a caption with the grey color instead of the text
                //not being attached to the image 
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("I am strong.", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )

              ]
            ), 
            
            //SizedBox for spacing
            SizedBox(height: 20),

            //Every Column after this is the same as the first one, just with a different image and text. 
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/lake2.jpg', height: 700, width: double.infinity, fit: BoxFit.cover),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.grey,
                  child: Text("I believe in myself.", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
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
                  child: Text("Tomorrow is another day.", textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
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
                  child: Text("It's better to try and fail than to never have tried at all.", 
                              textAlign: TextAlign.center, style: TextStyle(fontSize: 25))
                )
              ]
            ),

          ]
        )
      ),
    );
  }
}
