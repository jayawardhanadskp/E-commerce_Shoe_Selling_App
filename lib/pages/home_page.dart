import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottmo_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // select the index
  int _selectedIndex = 0;

  // use tap on the navigation bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page list
  final List _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
        child: Column(
          children: [
            DrawerHeader(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
              'assets/logo.png',
            ))),

            const SizedBox(height: 20,),

            // other pages
            const ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text('H O M E', style: TextStyle(color: Colors.white),),
            ),

            const ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.white,),
              title: Text('B O O K I N G S', style: TextStyle(color: Colors.white),),
            ),

            const ListTile(
              leading: Icon(Icons.info, color: Colors.white,),
              title: Text('A B O U T', style: TextStyle(color: Colors.white),),
            ),

            const ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('L O G   O U T', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
