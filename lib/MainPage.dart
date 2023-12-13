import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_proj/Cart.dart';
import 'package:e_proj/EditProfile.dart';
import 'package:e_proj/WishList.dart';
import 'package:e_proj/trending.dart';
import 'package:flutter/material.dart';

import 'ViewSreen.dart';
import 'login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
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
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/banner.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/banner2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/banner3.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        )),
                    SizedBox(height: 20),
                    Container(
                        padding: EdgeInsets.all(8),
                        width: size.width,
                        decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Deal Of the Day", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.alarm, size: 18, color: Colors.white),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('22h 55m 20S Remaning', style: TextStyle(color: Colors.white)),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white,
                                    )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("View All",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        )),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(height: 10),
                    Container(
                        height: size.height * 0.18,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewScreen()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                                          child: Image(
                                            image: AssetImage("assets/banner.jpg"),
                                            height: 100,
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Product 1",
                                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
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
                              );
                            })),
                    Container(
                        padding: EdgeInsets.all(8),
                        width: size.width,
                        decoration: BoxDecoration(color: Color.fromRGBO(254, 138, 138, 1), borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Row(
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Text(
                                  "Trending Products",
                                  style: TextStyle(fontSize: 20, color: Colors.white),
                                ),
                                Text.rich(TextSpan(
                                    style: TextStyle(
                                      fontSize: 1,
                                    ),
                                    children: [
                                      WidgetSpan(child: Icon(Icons.calendar_month, size: 17, color: Colors.white)),
                                      TextSpan(text: 'Today Special', style: TextStyle(fontSize: 13, color: Colors.white))
                                    ]))
                              ])
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("View All",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          )
                        ])),
                    SizedBox(height: 30),
                    Container(
                        height: 120,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                                        child: Image(
                                          image: AssetImage("assets/banner.jpg"),
                                          height: 70,
                                        )),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Product 1",
                                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
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
                              );
                            })),
                    Image.asset('assets/banner2.jpg'),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Container(
                          child: Text('New Arrivals', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28))
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
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
                ))),
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
                color: Colors.redAccent,
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
      ),
    );
  }
}
