import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  const CommonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan 1"),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.access_alarm),
                Container(
                  child: Text("First Container"),
                ),
                Image.asset(
                  'images/MountainView.jpg',
                  width: 100,
                  height: 100,
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.access_alarm),
                Container(
                  child: Text("Second Container"),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.access_alarm),
                Container(
                  child: Text("Third Container"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
