import 'package:ecommerce_app/home_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
              onTap:() {Navigator.pushNamed(context, '/homepage');}
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),
      ),
    );
  }
}
