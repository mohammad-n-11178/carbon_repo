import 'package:flutter/material.dart';
import 'package:carbon/services/applocalizations.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            "marten",
            style: TextStyle(color: Colors.amber),
          ),
          accountEmail: Text("rami.545@hotmail.com",
              style: TextStyle(color: Colors.amber)),
          currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
          decoration: BoxDecoration(
              color: Colors.black54,
              image: DecorationImage(
                image: AssetImage("photos/img.png"),
                fit: BoxFit.cover,
              )),
        ),
        ListTile(
          title: Text(AppLocalizations.of(context).translate("Home"),
              style: TextStyle(fontSize: 20, color: Colors.grey[900])),
          leading: Icon(Icons.home, color: Theme.of(context).primaryColor),
          // trailing: Icon(Icons.check_circle_outline),
          onTap: () {
            Navigator.of(context).pushNamed('homepage');
          },
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context).translate("Categories"),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[900],
            ),
          ),
          leading: Icon(Icons.category, color: Theme.of(context).primaryColor),
          onTap: () {
            Navigator.of(context).pushNamed('Categories');
          },
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        ),
        Divider(
          color: Colors.blue[100],
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context).translate("Setting"),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[900],
            ),
          ),
          leading: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
          onTap: () {},
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context).translate("About us"),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[900],
            ),
          ),
          leading: Icon(Icons.info, color: Theme.of(context).primaryColor),
          onTap: () {},
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context).translate("active code"),
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[900],
            ),
          ),
          leading: Icon(Icons.login, color: Theme.of(context).primaryColor),
          onTap: () {
            Navigator.of(context).pushNamed("Login");
          },
          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        )
      ],
    ));
  }
}
