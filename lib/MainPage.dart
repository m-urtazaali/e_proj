import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_proj/EditProfile.dart';
import 'package:flutter/material.dart';

import 'Widgets/CircularIcon.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list_outlined,size: 30,color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        // centerTitle: AssetImage(""),
        title: Image.asset("assets/logo.png"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CarouselSlider(items: [
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
              )
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(


                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Deal Of the Day",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),),
                            // Text("(22h Remaining)",style: TextStyle(
                            //     fontSize: 18,
                            //     color: Colors.redAccent
                            // )
                            // )
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontSize: 1,
                                ),
                                children: [

                                  WidgetSpan(
                                    child: Icon(Icons.alarm,size: 17,color: Colors.white,),
                                  ),

                                  TextSpan(
                                    text: '22h Remaining',style: TextStyle(
                                     fontSize: 13,
                                     color: Colors.white
                                    )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/4,
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:Border.all(color:Colors.white,)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("View All", style: TextStyle(
                               color: Colors.white,
                                fontSize: 15,

                              )),
                              Icon(Icons.arrow_forward_rounded, color: Colors.white,size: 15,)
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                  ,
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 180,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFFf2f2f2)
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 180,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xFFf2f2f2)
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                                  child: Image(
                                    image: AssetImage("assets/banner.jpg"),)),
                              Positioned(
                                top: 12,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8.3,vertical: 4),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(253, 232, 232, 0.8)
                                      ),
                                      child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
                                    )
                                ),
                              ),
                              Positioned(
                                top: 0,
                                  right: 0,
                                  child: CircularIcon())
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              )

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
            IconButton(onPressed: () {  },
            icon: Icon(Icons.home_outlined),iconSize: 30,color: Colors.redAccent,),
            IconButton(onPressed: () {  },
              icon: Icon(Icons.trending_up),iconSize: 30,),
            IconButton(onPressed: () {  },
              icon: Icon(Icons.add_shopping_cart),iconSize: 30,),
            IconButton(onPressed: () {  },
              icon: Icon(Icons.favorite_border),iconSize: 30,),
            IconButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        EditProfile())); },
              icon: Icon(Icons.settings),iconSize: 30,)
          ],
        ),
      ),
    );
  }
}


