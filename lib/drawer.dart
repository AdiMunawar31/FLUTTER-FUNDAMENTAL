import 'package:flutter/material.dart';
import 'package:flutter_fundamental/tutorial/counter.dart';
import 'package:flutter_fundamental/tutorial/custom_widget.dart';
import 'package:flutter_fundamental/tutorial/gesture_detector.dart';
import 'package:flutter_fundamental/tutorial/learning_path_list.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              text: 'Calculator (Custom Widget)',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Calculator();
                    }))
                  }),
          _drawerItem(
              text: 'Gesture Detection',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GestureDetect();
                    }))
                  }),
          _drawerItem(
              text: 'Learning Path Page (Sliver)',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LearningPathPage();
                    }))
                  }),
          _drawerItem(
              text: 'Shared Preferences',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Counter();
                    }))
                  }),

          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          // _drawerItem(
          //     icon: Icons.bookmark,
          //     text: 'Family',
          //     onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child:
          Image.network('https://avatars.githubusercontent.com/u/57015700?v=4'),
    ),
    accountName: Text('Belajar Flutter'),
    accountEmail: Text('adi.munawar@belajarflutter.com'),
  );
}

Widget _drawerItem({String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    onTap: onTap,
  );
}
