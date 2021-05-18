import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/widgets/app_drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A322B),
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color(0xffF3F3F3),
            child: Column(
              children: [
                SizedBox(height: 25),
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/profile image.jpg'),
                    radius: 68,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
                  child: Text(
                    'Dinesh Yaduvanshi',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(40),
            child: ListView(
              children: [
                ProfileField(
                    title: 'Location',
                    entry:
                        'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
                Divider(
                  color: Colors.grey.shade500,
                ),
                ProfileField(title: 'Pincode', entry: 'XXXXXX'),
                Divider(
                  color: Colors.grey.shade500,
                ),
                ProfileField(title: 'Date of Birth', entry: 'dd-mm-yy'),
                Divider(
                  color: Colors.grey.shade500,
                ),
                ProfileField(title: 'Gender', entry: 'Male'),
                Divider(
                  color: Colors.grey.shade500,
                ),
                ProfileField(title: 'Whatsapp', entry: '+91 - XXXXXXXXXX'),
                Divider(
                  color: Colors.grey.shade500,
                ),
                ProfileField(title: 'Email', entry: 'XXXXXXXXXX@gmail.com'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String title;
  final String entry;

  ProfileField({@required this.title, @required this.entry});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
              ),
            ),
          ),
          Text(
            entry,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
