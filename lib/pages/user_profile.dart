import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  const UserProfile({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

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

        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage('assets/login_logo.png')),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.greenAccent
                      ),
                      child:const Icon(
                        Icons.phone_enabled,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                )
              ],
            ),

          ),

        ),
      );
  }
}