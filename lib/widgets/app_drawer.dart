import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/screens/home.dart';
import 'package:humming_sparrow_task/screens/profile.dart';
import 'package:humming_sparrow_task/screens/videos.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff1A322B),
            ),
            child: null,
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          Divider(
            indent: 10.0,
            endIndent: 10.0,
            color: Color(0xffCCCCCC),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text(
              'Videos',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Videos()));
            },
          ),
          Divider(
            indent: 10.0,
            endIndent: 10.0,
            color: Color(0xffCCCCCC),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50.0),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ],
      ),
    );
  }
}
