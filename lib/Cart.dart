import 'package:checkout_screen_ui/checkout_page.dart';
import 'package:e_proj/MainPage.dart';
import 'package:e_proj/trending.dart';
import 'package:flutter/material.dart';

import 'EditProfile.dart';
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add your action for Home here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add your action for Settings here
              },
            ),
            // Add more ListTile widgets with icons for additional items in the drawer
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
              onPressed: () {},
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
