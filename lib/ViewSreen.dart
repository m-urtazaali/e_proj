import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              )),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 10),
              Image.asset('assets/banner.jpg'),
              SizedBox(height: 10),
              Text('Size : 7UK', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
                    child: Text('6 UK'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
                    child: Text('7 UK'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
                    child: Text('8 UK'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
                    child: Text('9 UK'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
                    child: Text('10 UK'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Nile Sneakers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Nile Sneakers jbnbdvh  vsjhbvhdsbv'),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star, size: 15),
                  Icon(Icons.star, size: 15),
                  Icon(Icons.star, size: 15),
                  Icon(Icons.star, size: 15),
                  Icon(Icons.star, size: 15),
                  SizedBox(width: 10),
                  Text('56890')
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [Text('56890'), SizedBox(width: 10), Text('56890'), SizedBox(width: 10), Text('56890'), SizedBox(width: 10)],
              ),
              SizedBox(height: 5),
              Text('Product Details', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Expanded(
                  child: Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.')),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text('Nearest Store'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text('VIP'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text('Return Policy'),
                        ],
                      ))
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Go to Cart',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.grey)),
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.grey)),
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width * 1,
                color: Colors.purpleAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery in',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '1 within hour',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text('View Similer'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text('Add to Compair'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}