import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //pp
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  //name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        //under post
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.send_outlined),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        //likes
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'ali',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //caption
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' G.O.A.T.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
