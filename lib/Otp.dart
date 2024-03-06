import 'package:flutter/material.dart';

import 'LogIn.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(
        icon: Icon(Icons.arrow_back), onPressed: () {
    Navigator.pop(context);
    },),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

                child: Image.asset('assets/otp.png',height: 160.0,)
            ),
            Container(
              margin: EdgeInsets.only(top:30.0,left: 20.0),
              child: Text("OTP Verification",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top:30.0,),
              child: Text("We have sent a unique OTP number ",style: TextStyle(color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: Text("to your mobile +91-7075582592",style: TextStyle(color: Colors.grey),),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: OtpBoxes(),
            ),
            Container(
              margin: EdgeInsets.only(top:10.0),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
              },
                  child: Text("SUBMIT",style: TextStyle(color: Colors.white),
                  ),
              style: TextButton.styleFrom(backgroundColor: Colors.redAccent),),
            )
          ],
        )
      ),
    );
  }
}

class OtpBoxes extends StatefulWidget {
  const OtpBoxes({super.key});

  @override
  State<OtpBoxes> createState() => _OtpBoxesState();
}

class _OtpBoxesState extends State<OtpBoxes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:List.generate(4, (index) => Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 40,
        height: 60,
        child: TextField(
          maxLength: 1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
      ),)),
    );
  }
}

