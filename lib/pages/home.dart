// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/util/stories.dart';
import 'package:flutter_app2/util/post.dart';

class UserHome extends StatelessWidget {
  final List users = ['ali', 'veli', 'flutter', 'insta', 'clone', 'app'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 42,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/insta.png',
              fit: BoxFit.contain,
              height: 36,
            ),
            Row(children: [
              Icon(Icons.add_box_outlined),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.favorite_border_outlined),
              ),
              Icon(Icons.message_outlined),
            ])
          ],
        ),
      ),
      body: Column(
        children: [
          //STORY
          Container(
            height: 105,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Stories(text: users[index]);
                }),
          ),
          // POST
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: users[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
