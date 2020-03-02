import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF075E54),
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.symmetric(vertical: 10),
                tabs: [
                  Text(
                    'CALLS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'CHATS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'CONTACTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              title: Text('WhatsApp'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: Colors.white),
                IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {},
                    color: Colors.white),
                IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    color: Colors.white),
              ],
            ),
            body: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Home(),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
