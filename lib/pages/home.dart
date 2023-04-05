import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dzongkha1',
                                style: GoogleFonts.kleeOne(
                                  textStyle: TextStyle(),),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'English1',
                                style: GoogleFonts.kleeOne(
                                  textStyle: TextStyle(),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_up_rounded,
                              size: 35,
                              color: Colors.grey.shade700,
                            ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.grey.shade700,
                            ))),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_rounded,
                              color: Colors.grey.shade700,
                            )))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
