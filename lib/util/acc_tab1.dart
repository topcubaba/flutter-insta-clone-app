import 'package:flutter/material.dart';

class AccTab1 extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            color: Colors.grey[300],
          ),
        );
      },
    );
  }
}
