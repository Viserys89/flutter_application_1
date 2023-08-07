import 'package:flutter/material.dart';
import 'package:flutter_application_1/LayoutSatu.dart';
import 'package:flutter_application_1/common.layout.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CommonLayout(),
                    ),
                  );
                },
                child: Text("Common Layout")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LayoutSatu(),
                    ),
                  );
                },
                child: Text("Latihan Satu"))
          ],
        ),
      ),
    );
  }
}
