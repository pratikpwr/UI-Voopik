import 'package:flutter/material.dart';
import './book_info_tile.dart';

class BookInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size.height);
    return Container(
        // margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        //color: Colors.blue,
        child: ListView(
      children: [
        BookInfoTile(
          title: 'Harry Potter and the Cursed Child',
          imageUrl: 'assets/Harry potter one@2x.png',
          language: 'English',
        ),
        BookInfoTile(
          title: 'The Ultimate Self Book',
          imageUrl: 'assets/Self@2x.png',
          language: 'English',
        ),
        BookInfoTile(
          title: 'EveryOne has a Story',
          imageUrl: 'assets/Everyone has a story@2x.png',
          language: 'English',
        )
      ],
    ));
  }
}
