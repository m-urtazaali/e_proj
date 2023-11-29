import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
      body: Container(
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
            Container(
              color: Colors.lightBlueAccent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/10,

              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 5),
                      child: Column(
                        children: [
                          Text("Deal Of the Day",style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                          ),),
                          Text("22h Remaining",style: TextStyle(
                              fontSize: 23,
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/6,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border:Border.all(color:Colors.white)
                        ),
                        child: Row(
                          children: [
                            Text("View All", style: TextStyle(
                             color: Colors.white,
                              fontSize: 25
                            )),
                            Icon(Icons.arrow_forward_rounded, color: Colors.white,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
              ,
            ),
            SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}
