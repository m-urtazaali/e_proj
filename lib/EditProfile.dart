import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/google.png'),
                  backgroundColor: Colors.transparent,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 30,),
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.underline
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Email Address", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Email Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Password",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              // Navigator.of(context).push(
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             ForgotPass()));
                            },
                            child: Text(
                              "Change Password",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                decoration: TextDecoration.underline
                              ),
                            )),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Business Address Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Pincode",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Pincode",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Address",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("City",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "City",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("State",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "State",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Country",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Country",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(height: 30,),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Bank Account Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Bank Account Number",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Bank Account Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Account Holder's Name",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,

                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "Account Holder Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("IFSC Code",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,

                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          // prefix: IconButton(icon : Icon(Icons.person), onPressed: (){},color: Colors.black),
                          hintText: "IFSC Code",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => SplashScreen()));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                    SizedBox(height: 30,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
