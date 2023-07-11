


import 'package:flutter/material.dart';
import 'package:slider_menu_app/screens/favorite_widget.dart';
import 'package:slider_menu_app/screens/notifications_widget.dart';
import 'package:slider_menu_app/screens/plagins_widget.dart';
import 'package:slider_menu_app/screens/updates_widget.dart';
import 'package:slider_menu_app/screens/user_widget.dart';
import 'package:slider_menu_app/screens/workflow_widget.dart';


class SliderMenuWidgetApp extends StatefulWidget {
  const SliderMenuWidgetApp({super.key});

  @override
  State<SliderMenuWidgetApp> createState() => _SliderMenuWidgetAppState();
}

class _SliderMenuWidgetAppState extends State<SliderMenuWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Slider menu"),
      ),
      drawer: _NavigationDrawer(),
    );
  }
}

class _NavigationDrawer extends StatefulWidget {
  const _NavigationDrawer({
    Key? key,
  }): super(key: key);

  @override
  State<_NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<_NavigationDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        children:
          <Widget>[
            buildHeader(context),
            buildMenuItems(context)
          ],    
      ),
    ),
  );
}
Widget buildHeader(BuildContext context) => Material(
  color: Colors.blue.shade700,
  child:   InkWell(
    onTap: (){
      Navigator.pop(context);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UserPage()));
    },
    child:   Container(
      height: 220,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      // padding: EdgeInsets.only(
      //   top: 25 +  MediaQuery.of(context).padding.top, bottom: 24,
      // ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/ava.png"),
            ),
            SizedBox(height: 10,),
            Text('User', style: TextStyle(
              fontSize: 29,
              color: Colors.white
            ),),
             Text('user@iCloud.com', style: TextStyle(
              fontSize: 16,
              color: Colors.white.withAlpha(200),
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    ), 
  ),
);


Widget buildMenuItems(BuildContext context) => Container(
  padding: EdgeInsets.all(20),
  child:   Wrap(
    runSpacing: 5, // vertical spacing
    children: [
  
      ListTile(
  
        leading: const Icon(Icons.home_outlined),
  
        title: Text("Home"),
  
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => SliderMenuWidgetApp()))
  
      ),
  
      ListTile(
  
        leading: const Icon(Icons.favorite_border),
  
        title: Text("Favorite"),
  
        onTap: (){
          Navigator.pop(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FavoritePage(),),
              );
        }
  
      ),
  
      ListTile(
  
        leading: const Icon(Icons.workspaces_outline),
  
        title: Text("Workflow"),
  
        onTap: (){
          Navigator.pop(context);
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WorkflowPage(),),
              );
        },
  
      ),
  
      ListTile(
  
        leading: const Icon(Icons.update),
  
        title: Text("Updates"),
  
        onTap: (){
          Navigator.pop(context);
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UpdatesPage(),),
              );
        },
  
      ),
  
      Divider(color: Colors.black,),
  
       ListTile(
  
        leading: const Icon(Icons.account_tree_outlined),
  
        title: Text("Plagins"),
  
        onTap: (){
          Navigator.pop(context);
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlaginsPage(),),
              );
        },
  
      ),
  
      ListTile(
  
        leading: const Icon(Icons.notification_add_outlined),
  
        title: Text("Notifications"),
  
        onTap: (){
          Navigator.pop(context);
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NotificationsPage(),),
              );
        },
      ),
  
    ],
  
  ),
);