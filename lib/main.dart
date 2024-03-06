import 'package:flutter/material.dart';
import 'Code.dart';
import 'Otp.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Machine Test",
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: ()=>{},
        ),
        ),
        body:const CodePage(),
    )
    );
}
}
