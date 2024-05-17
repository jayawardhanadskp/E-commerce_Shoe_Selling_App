import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '1st Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade50,
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 50,
              color: Colors.pink,
            )),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
            )
          ],
        ),
      ),
    );
  }
}
