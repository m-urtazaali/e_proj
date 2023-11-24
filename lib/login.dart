
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Widgets/CircleButton.dart';
// import 'home.dart';
// import 'package:loginuicolors/home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  late Box box1;

  @override
  void initState() {
    //
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('logininfo');
    getdata();
  }

  void getdata() async {
    if (box1.get('email') != null) {
      email.text = box1.get('email');
      isChecked = true;
      setState(() {

      });
    }
    if (box1.get('password') != null) {
      password.text = box1.get('password');
      isChecked = true;
      setState(() {

      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(),
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Welcome \nBack!',
                  style: TextStyle(color: Colors.black,
                      fontSize: 55,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: email,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  prefixIcon: Icon(Icons.person),
                                  // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                                  hintText: "Username Or Email",

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )

                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: password,
                              style: TextStyle(),
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock),
                                  // enabledBorder: OutlineInputBorder(
                                  //
                                  // ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),
                            ),
                            Row(
                              children: [
                                Container(),
                                SizedBox(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 2.4,
                                ),
                                TextButton(onPressed: () {},
                                    child: Text("Forgot Password?",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18
                                      ),
                                    )
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height / 14,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.redAccent
                                    ,
                                    shape: RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                )
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleButton(image: 'assets/google.png',)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}