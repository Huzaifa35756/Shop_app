import 'package:flutter/material.dart';
import 'slider/slider_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/compponents/horizontal_listview.dart';
import 'package:shop_app/compponents/Products.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final user=FirebaseAuth.instance.currentUser;

  signout()async{
    await FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("Shop App", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (()=>signout()),
          child: Icon(Icons.login_rounded),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // Header
            UserAccountsDrawerHeader(
              accountName: Text('M Huzaifa Shah'),
              accountEmail: Text('${user!.email}'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            // Body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Call SliderScreen here
            SliderScreen(), // Display the SliderScreen widget here
            // Other content below the carousel can go here
          Expanded(
              child:new ListView(
                children: [
                  new Padding(padding:EdgeInsets.all(8.0),
                  child: new Text('Categories'),
                ),
               HorizontalList(),

               new Padding(padding:EdgeInsets.all(8.0),
                   child: new Text('Recent Products'),),

                  Container(
                    height:320.0,
                    child: Products(),
                  )





             ]
              )
          )
          ],

        ),
      ),
    );
  }
}