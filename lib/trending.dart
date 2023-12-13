import 'package:e_proj/Cart.dart';
import 'package:e_proj/MainPage.dart';
import 'package:e_proj/WishList.dart';
import 'package:flutter/material.dart';

import 'EditProfile.dart';
import 'ViewSreen.dart';
import 'login.dart';

class trending extends StatefulWidget {
  const trending({Key? key}) : super(key: key);

  @override
  State<trending> createState() => _trendingState();
}

class _trendingState extends State<trending> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
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
                Center(
                    child: Container(
                  child: Text("Trending Products",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(3),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),
                                    height: 100,
                                  )),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Product 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Desc",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => home()));
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
                color: Colors.redAccent,
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
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                icon: Icon(Icons.settings),
                iconSize: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
