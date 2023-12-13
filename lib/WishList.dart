import 'package:e_proj/MainPage.dart';
import 'package:e_proj/ViewSreen.dart';
import 'package:e_proj/trending.dart';
import 'package:flutter/material.dart';

import 'Cart.dart';
import 'EditProfile.dart';
import 'login.dart';

class wishlist extends StatefulWidget {
  const wishlist({Key? key}) : super(key: key);

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the scaffold

      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: Divider.createBorderSide(context,
                        color: Colors.black, width: 2.0),
                  ),
                ),

                child: Image.asset("assets/logo.png")
            ),
            ListTile(
              leading: Icon(Icons.home_outlined,size: 30,color: Colors.white,),
              title: Text('Home',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.trending_up,size: 30,color: Colors.white,),
              title: Text('Trending',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => trending()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.add_shopping_cart,size: 30,color: Colors.white,),
              title: Text('Cart',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.favorite_outline,size: 30,color: Colors.white,),
              title: Text('WishList',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => wishlist()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.settings_outlined,color: Colors.white,size: 30,),
              title: Text('Settings',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.logout_outlined,color: Colors.white,size: 30,
              ),
              title: Text("Logout",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              )),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyLogin()));
              },
            )

          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState?.openDrawer()),

        elevation: 0,
        backgroundColor: Colors.transparent,
        // centerTitle: AssetImage(""),
        title: Image.asset("assets/logo.png"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text("Wishlist",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              decorationStyle: TextDecorationStyle.double,
                // color: Colors.redAccent
              ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline, color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),
              ListTile(
                leading: Image.asset("assets/banner2.jpg"),
                title: Text("Product 1"),
                subtitle: Text("Desc...."),
                titleAlignment: ListTileTitleAlignment.center,
                trailing: Icon(Icons.delete_outline,color: Colors.redAccent,),
                iconColor: Colors.black,
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                },
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        elevation: 10,
        shadowColor: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
              },
              icon: Icon(Icons.home_outlined),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => trending()));
              },
              icon: Icon(Icons.trending_up),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.add_shopping_cart),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => wishlist()));
              },
              icon: Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.redAccent,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));
              },
              icon: Icon(Icons.settings),
              iconSize: 30,
            )
          ],
        ),
      ),
    );
  }
}
