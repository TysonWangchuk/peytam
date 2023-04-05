import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {



  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/leaderboardbg.PNG"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: null,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/point.png',
                          height: 60,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'LEADERBOARD',
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(2,2),
                                    blurRadius: 4,
                                  )
                                ]
                              )
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 500,
                            width: 300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      );
  }
}