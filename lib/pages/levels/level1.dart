import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peytam/pages/levels/quiz/quiz1.dart';

class Level1 extends StatelessWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          'Level 1',
          style: GoogleFonts.kleeOne(
            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
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
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Quiz1()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFCC33),
            ),
            child: Text('Attempt Quiz',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
          ),
        ],
      ),
    );
  }
}
