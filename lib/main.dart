import 'package:flutter/material.dart';
import 'package:flutter_application_1/CoffeeMenu.dart';
// import 'package:flutter_application_1/LayoutSatu.dart';

void main() {
  runApp(LandingPageApp());
}

class LandingPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Landing Page'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/4856/4856718.png',
              width: 200,
              height: 200,
            ),
            Text(
              'Brew Day',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(240, 94, 28, 4),
              ),
            ),
            Text(
              'How do you like your coffee?',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 109, 53, 32)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CoffeeMenu(),
                  ),
                );
              },
              child: Text('Enter Shop'),
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Change the color here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
