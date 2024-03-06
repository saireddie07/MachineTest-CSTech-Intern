import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    leading: IconButton(
    icon: const Icon(Icons.menu),
    onPressed: ()=>{
    },
    ),
    title: PreferredSize(
    preferredSize: Size.fromHeight(10.0),
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
    height: 40.0,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: 'Search...', // Search bar
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    ),
    ),
    ),
    )
    ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
              },
            ),
          ]
    ),
          body: Center(
        child: Text("App under construction",style: TextStyle(color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.bold),),
    ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.home)),
    IconButton(onPressed: () {}, icon: Icon(Icons.category)),
    IconButton(onPressed: () {}, icon: Icon(Icons.local_offer)),
    IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
    IconButton(onPressed: () {},icon: Icon(Icons.person)),

    ],
      ),
    )
    );
  }
}
