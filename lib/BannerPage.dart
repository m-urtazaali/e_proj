import 'package:e_proj/MainPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/bannermob.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(3,440,3,30),
          child: Column(
            children: [
              Text("You want",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none
              ),),
              Text("Authentic? Here",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  decoration: TextDecoration.none
              ),),
              Text("you go!",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none
              ),)
            ],
          ),
        ),
        Text("Find it here, buy it now!",style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.normal,
          decoration: TextDecoration.none
        )
        ),
        SizedBox(height: 50,),
        Container(
            width: MediaQuery.of(context).size.width/1.3,
            height: MediaQuery.of(context).size.height / 14,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => home()));
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.white, fontSize: 30),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )),

      ],
      ),
    );
  }
}
