import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'levels/level1.dart';

class Level extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      children: <Widget>[
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_open_rounded),
            title: Text('Level 1',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Level1())
              );
            },
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 2',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 3',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 4',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 5',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 6',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 7',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 8',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 9',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(Icons.lock_outline_rounded),
            title: Text('Level 10',style: GoogleFonts.kleeOne(
              textStyle: TextStyle(),),),
            onTap: (){},
          ),
        ),

      ],
    );

  }
}
