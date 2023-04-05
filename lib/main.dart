import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:peytam/pages/favorites.dart';
import 'package:peytam/pages/home.dart';
import 'package:peytam/pages/leaderboard.dart';
import 'package:peytam/pages/level.dart';
import 'package:peytam/pages/profilescreen.dart';
import 'package:peytam/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Druk Peytam',
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.orange,
      // ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.system,
      home: Splashscreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Level(),
    Leaderboard(),
    Favorites(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.orange,
      // ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            title: Row(
              children: [
                Image.asset(
                  'assets/images/peytamlogo.PNG',
                  height: 32,
                ),
                Text(
                  'DrukPeytam',
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                  icon: Icon(
                    Icons.menu_rounded,
                    color: Colors.grey.shade700,
                  )),
            ]),
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(40),
              //   topRight: Radius.circular(40),
              // ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 1)
              ]),
          // color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12),
            child: GNav(
              selectedIndex: _selectedIndex,
              // backgroundColor: Colors.white,
              color: Colors.grey.shade700,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFFFFCC33),
              gap: 8,
              onTabChange: _navigateBottomBar,
              padding: const EdgeInsets.all(5),
              tabs: const [
                GButton(
                  icon: Icons.home_filled,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.area_chart_rounded,
                  text: "Level",
                ),
                GButton(
                  icon: Icons.leaderboard_rounded,
                  text: "Leaderboard",
                ),
                GButton(
                  icon: Icons.favorite_rounded,
                  text: "Favorites",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
