import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://c4.wallpaperflare.com/wallpaper/33/389/133/tv-show-lucifer-lucifer-tv-show-tom-ellis-hd-wallpaper-preview.jpg";
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("kapil012002@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                accountName: Text(
                  "Kapil Kumar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.25,
                style: TextStyle(color: Colors.white),
              ),
            ),
           ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.25,
                style: TextStyle(color: Colors.white),
              ),
            ),
           ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "Mail me",
                textScaleFactor: 1.25,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
