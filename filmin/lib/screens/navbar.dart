import 'package:filmin/screens/favorite_screen.dart';
import 'package:filmin/screens/home_screen.dart';
import 'package:filmin/screens/rate_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Chandra'), 
            accountEmail: Text('Saputra@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  '',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 19, 17, 17)
            ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Halaman Depan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen())
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rekomendasi Film'),
            onTap: () => RateScreen(),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorit'),
            onTap: () => FavoriteScreen(),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}