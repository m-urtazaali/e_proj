import 'package:e_proj/PasswordResetForm.dart';
import 'package:flutter/material.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              children: [
                Text("Forgot Password?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: email,
                  style: TextStyle(),
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Enter OTP",
                      prefixIcon: Icon(Icons.lock),
                      // enabledBorder: OutlineInputBorder(
                      //
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(height: 3,),
                    Text("*", style: TextStyle(
                        color: Colors.red
                    ),),
                    SizedBox(width: 3,),
                    Expanded(child: Text("Enter the OTP sent to your email",
                      style: TextStyle(color: Colors.black54),
                    )
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 14,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PassForm()));
                      },
                      child: Text(
                        'Submit',
                        style:
                        TextStyle(color: Colors.white, fontSize: 20),
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
          ),
        ),
      ),
    );
  }
}
