import 'package:flutter/material.dart';
import 'Otp.dart';
class CodePage extends StatefulWidget {
  const CodePage({super.key});

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            child: Text("Glad to see you!",style: TextStyle(color: Colors.black,fontSize: 30.0,fontFamily: 'Arial',fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20.0),
            child: Text("Please provide your phone number",style: TextStyle(color: Colors.grey,
            ),
            ),

          ),
          Container(
            margin: EdgeInsets.only(left: 90.0,top: 20.0,right: 60.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Phone",
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          SizedBox(

            width: 250,
            height: 80,
            child: Container(
                margin: EdgeInsets.only(top: 30.0,left: 10.0),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otp()),
                  );
                },child: Text("SEND CODE",style: TextStyle(color: Colors.white),),style:TextButton.styleFrom(backgroundColor: Colors.redAccent),

                )
            ),
          )

        ],
      ),
    );
  }
}
