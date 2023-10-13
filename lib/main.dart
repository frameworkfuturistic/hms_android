import 'package:flutter/material.dart';
import 'package:hms/pages/home_page.dart';
//
void main()=>runApp(LoginPage());

const labelColor=Color(0xff0C356A);

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Login(),
    );
  }
}

class Login extends StatefulWidget{
  @override
  _LoginState createState()=>_LoginState();
}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context){
      return Scaffold(
          backgroundColor: const Color(0xffF9F7F7),
        appBar: AppBar(
          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login),
              Text(" User Login")
            ],
          ),
          backgroundColor: Colors.green,
          shadowColor: Colors.greenAccent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
              )
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Center(
                        child: Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                          child: Center(
                            child: Image.asset('assets/login_logo.png'),
                          ),
                        ),

                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.email,color: Colors.green),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightGreen),
                            borderRadius: BorderRadius.circular(50),

                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: labelColor
                          ),
                          hintText: 'anshu@gmail.com',
                    ),
                  ),
                ),
                Padding(
                padding:const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.lock,color: Colors.green,),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen),
                      borderRadius: BorderRadius.circular(50),

                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: labelColor
                    ),
                    hintText: 'Enter Secure Password',
                  ),
                ),
            ),
                Padding(
                  padding:const EdgeInsets.only(left: 250),
                  child: TextButton(
                      onPressed: (){},
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.green,fontSize: 11),
                      )
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton.icon(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomePage();
                      })
                      );
                    },
                    icon: Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    label: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                    ),
                    // child: Text(
                    //   'Login',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 15
                    //   ),
                    // ),
                  )
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                    '@2023: Powered By Framework Futuristic Pvt Ltd',
                    style: TextStyle(
                      color: const Color(0xff3EC70B)
                    ),
                )
            //   Form Designing
            ],
          ),
        ),
      );
  }
}


