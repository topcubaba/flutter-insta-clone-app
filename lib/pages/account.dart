import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app2/util/acc_tab1.dart';
import 'package:flutter_app2/util/acc_tab2.dart';
import 'package:flutter_app2/util/acc_tab3.dart';
import 'package:flutter_app2/util/stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              Text(
                'mtopcu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Row(children: [
                Icon(Icons.add_box_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Icon(Icons.menu),
                ),
              ])
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //pp
                    Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),

                    //followers, posts etc.
                    Padding(
                      padding: const EdgeInsets.only(left: 36.0),
                      child: Column(
                        children: [
                          Text('24',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Posts')
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text('454',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('Followers')
                      ],
                    ),
                    Column(
                      children: [
                        Text('534',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('Following')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'mtopcu',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Flutter instagram clone',
                        ),
                        Text(
                          'linkedin.com/in/topcumustafa',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: Container(
                        child: Container(
                          width: 305,
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Edit Profile',
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20.0, left: 8.0, top: 8),
                    child: Expanded(
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(4.5),
                          child: Icon(Icons.arrow_drop_down),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Stories(text: 'story'),
                    Stories(text: 'story'),
                    Stories(text: 'story'),
                    Stories(text: 'story'),
                  ],
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on),
                  ),
                  Tab(
                    icon: Icon(Icons.play_circle_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline_outlined),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  AccTab1(),
                  AccTab2(),
                  AccTab3(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
