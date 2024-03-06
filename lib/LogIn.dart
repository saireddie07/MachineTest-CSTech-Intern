import 'package:flutter/material.dart';
import 'MainPage.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
        onPressed: ()=>{
            Navigator.pop(context)
        },
      ),
      ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset('assets/logo.png')
              ),
              Container(
                  margin: EdgeInsets.only(top:20.0),
                  child: Text("Let's Begin!",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),
                  )
              ),
              Container(
                padding: EdgeInsets.only(left: 0.0,top: 10.0),
              child: Text("Please enter your credentials to proceed",
              style: TextStyle(color: Colors.grey),),
            ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70.0),

                child: Container(
                  margin: EdgeInsets.only(top: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your Mail",

                    ),
                  ),
                ),
              ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 70.0),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Create Password",

    ),
      keyboardType: TextInputType.text,
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 70.0),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Referral Code(Optional)",

    ),
    ),
    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 60.0,top: 20.0),
                    child: IconButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Main()));
                    }, icon: Icon(Icons.arrow_forward,),
                    color: Colors.redAccent,),
                  )
                ],
              )
            ],
        ),

    );
  }
}
