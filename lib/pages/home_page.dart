import 'package:emcomerce_app/components/bottom_nav_bar.dart';
import 'package:emcomerce_app/pages/cart_page.dart';
import 'package:emcomerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to to control the bottom nav bar
  int _selectedIndex = 0;

  // pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  //this is method will update our selected index
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                )),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                ),
                //menu items
                //home
                const ListTile(
                  contentPadding: const EdgeInsets.only(left: 24, right: 24),
                  leading: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const ListTile(
                  contentPadding: const EdgeInsets.only(left: 24, right: 24),
                  leading: const Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const ListTile(
              contentPadding: const EdgeInsets.all(24),
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
