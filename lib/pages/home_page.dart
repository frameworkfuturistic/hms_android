import 'package:flutter/material.dart';
import 'package:hms/pages/user_profile.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HIMS"),
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
        body: ContainerList(),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {
            // action on button press
          },
        ),

        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'HIMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('My Appointments',style: TextStyle(
                    color: Colors.green
                )),
                leading: Icon(Icons.local_hospital_outlined,color: Colors.lightGreen,),
              ),
              ListTile(
                title: Text('IPD Registrations',style: TextStyle(
                    color: Colors.green
                )),
                leading: Icon(Icons.local_hospital,color: Colors.lightGreen),
              ),
              ListTile(
                title: Text('Opd Registrations',style: TextStyle(
                    color: Colors.green
                )),
                leading: Icon(Icons.person,color: Colors.lightGreen),
              ),
              ListTile(
                title: Text('Doctor Visit',style: TextStyle(
                    color: Colors.green
                )),
                leading: Icon(Icons.person_pin,color: Colors.lightGreen,),
              ),
              ListTile(
                title: Text('Discharge Summary',style: TextStyle(
                    color: Colors.green
                )),
                leading: Icon(Icons.exit_to_app,color: Colors.lightGreen),
              ),
              ListTile(
                title: Text('Logout',style: TextStyle(
                    color: Colors.green
                ),),
                leading: Icon(Icons.logout,color: Colors.lightGreen),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                label: "Search Profile",
                icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
                label: "profile",
                icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int IndexOfItem){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return UserProfile();
            })
            );
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContainerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(27),
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.lightGreen,
              width: 1.2,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Symptoms Care || Hospital Management System",
            style: TextStyle(fontSize: 15.0,color: Colors.green),
          ),
        );
      },
    );
  }
}