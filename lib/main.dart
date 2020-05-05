import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy_15',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('click shopping cart');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('click search');
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('img/icon_1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('img/icon_2.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('img/icon_2.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('KTM'),
              accountEmail: Text('kwon@naver.com'),
              onDetailsPressed: () {
                print('click arrow');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.black,),
              title: Text('HOME'),
              onTap: () {
                print('click Home');
              },
              trailing: Icon(Icons.add,
                color: Colors.black,),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.black,),
              title: Text('Settings'),
              onTap: () {
                print('click Settings');
              },
              trailing: Icon(Icons.add,
                color: Colors.black,),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.black,),
              title: Text('Q&A'),
              onTap: () {
                print('click Q&A');
              },
              trailing: Icon(Icons.add,
                color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
