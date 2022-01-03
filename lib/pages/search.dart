import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/util/explore.dart';

class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500]),
                Container(
                  child:
                      Text('Search', style: TextStyle(color: Colors.grey[500])),
                )
              ],
            ),
          ),
        ),
      ),
      body: Explore(),
    );
  }
}
