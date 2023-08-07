import 'package:flutter/material.dart';
import 'package:flutter_application_1/ToDoList.dart';

class Coffee {
  final String name;
  final IconData icon;

  Coffee({required this.name, required this.icon});
}

class CoffeeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee List',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: CoffeeListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CoffeeListPage extends StatelessWidget {
  final List<Coffee> coffeeList = [
    Coffee(name: 'Long Black', icon: Icons.coffee),
    Coffee(name: 'Latte', icon: Icons.local_cafe),
    Coffee(name: 'Expresso', icon: Icons.coffee),
    Coffee(name: 'Iced Coffee', icon: Icons.local_cafe),
    // Add more coffee types here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How do you like your coffee?'),
      ),
      body: ListView.builder(
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          return CoffeeListItem(coffee: coffeeList[index]);
        },
      ),
    );
  }
}

class CoffeeListItem extends StatelessWidget {
  final Coffee coffee;

  CoffeeListItem({required this.coffee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(coffee.icon),
      title: Text(coffee.name),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ToDoList(),
            ),
          );
        },
      ),
    );
  }
}
