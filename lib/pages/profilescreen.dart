import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'aboutus.dart';
import 'loginpage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final bool isLoggedIn = false; // Set to true if user is logged in
  bool _dailyReminder = false;
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: isLoggedIn
                ? Column(
                    children: [
                      Text(
                        'Welcome, User!',
                        style: GoogleFonts.kleeOne(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(''),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'User',
                        style: GoogleFonts.kleeOne(
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
                  ) // Show user info if logged in
                : Column(
                    children: [
                      Text(
                        'You are not logged in. Please',
                        style: GoogleFonts.kleeOne(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFCC33),
                        ),
                        onPressed: () {
                          // Show login screen if not logged in
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Login',style: GoogleFonts.kleeOne(
                          textStyle: TextStyle(),
                        ),),
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // const CircleAvatar(
                //   radius: 50,
                //   backgroundImage: AssetImage(''),
                // ),
                // const SizedBox(height: 16),
                // const Text(
                //   'User',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/coin.png',
                          height: 32,
                        ),
                        Text(
                          '0',
                          style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/point.png',
                          height: 32,
                        ),
                        Text(
                          '0',
                          style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                ListTile(
                  leading: Image.asset(
                    'assets/icons/coin.png',
                    height: 25,
                  ),
                  title: Text('Daily Reward',style: GoogleFonts.kleeOne(
                    textStyle: TextStyle(),
                  ),),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFCC33),
                    ),
                    child: Text('Claim', style: GoogleFonts.kleeOne(
                      textStyle: TextStyle(),),),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.notification_add_rounded),
                  title: Text('Daily Reminder',style: GoogleFonts.kleeOne(
                    textStyle: TextStyle(),),),
                  trailing: Switch(
                    activeColor: Color(0xFFFFCC33),
                    value: _dailyReminder,
                    onChanged: (value) {
                      setState(() {
                        _dailyReminder = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.dark_mode_rounded),
                  title: Text('Dark Mode',style: GoogleFonts.kleeOne(
                    textStyle: TextStyle(),),),
                  trailing: Switch(
                    activeColor: Color(0xFFFFCC33),
                    value: _darkMode,
                    onChanged: (value) {
                      setState(() {
                        _darkMode = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.share_rounded),
                  title: Text('Share App Link', style: GoogleFonts.kleeOne(
                    textStyle: TextStyle(),),),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.info_rounded),
                  title: Text('About Us', style: GoogleFonts.kleeOne(
                    textStyle: TextStyle(),),),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutUsScreen()),
                    );
                  },
                ),
                const Divider(),
                Center(
                    child: isLoggedIn
                        ? Column(
                            children: [
                              Text(
                                'Learn Proverbs for free. Forever.',
                                style: GoogleFonts.kleeOne(
                                  textStyle: TextStyle(color: Colors.grey),),
                              ),
                              ListTile(
                                leading: const Icon(Icons.exit_to_app),
                                title: Text('Logout',style: GoogleFonts.kleeOne(
                                  textStyle: TextStyle(),),),
                                onTap: () {
                                  // Logout functionality
                                },
                              ),
                            ],
                          )
                        : Text(
                            'Learn Proverbs for free. Forever.',
                      style: GoogleFonts.kleeOne(
                        textStyle: TextStyle(color: Colors.grey),),
                          )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
