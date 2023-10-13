import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip:'Setting Icon',
            onPressed: (){},
          )
        ],
        backgroundColor: Colors.lightGreen,
        shadowColor: Colors.green,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)
            )
        ),
      ),
    );
  }
}