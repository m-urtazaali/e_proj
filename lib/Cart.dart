import 'package:checkout_screen_ui/checkout_page.dart';
import 'package:e_proj/MainPage.dart';
import 'package:e_proj/WishList.dart';
import 'package:e_proj/trending.dart';
import 'package:flutter/material.dart';

import 'EditProfile.dart';
import 'login.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<PriceItem> _priceItems = [
    PriceItem(name: 'Product A', quantity: 1, totalPriceCents: 5200),
    PriceItem(name: 'Product B', quantity: 2, totalPriceCents: 8599),
    PriceItem(name: 'Product C', quantity: 1, totalPriceCents: 2499),
    PriceItem(name: 'Delivery Charge', quantity: 1, totalPriceCents: 1599),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: CheckoutPage(
        priceItems: _priceItems,
        payToName: 'Vendor Name Here',
        displayNativePay: true,
        onNativePay: () => print('Native Pay Clicked'),
        // isApple: Platform.isIOS,
        onCardPay: (results) => print( 'Credit card form submitted with results: $results'),
        // onBack: ()=> Navigator.of(context).pop(),
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
              onPressed: () {},
              icon: Icon(Icons.add_shopping_cart),
              iconSize: 30,
              color: Colors.redAccent,
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
    );
  }
}
