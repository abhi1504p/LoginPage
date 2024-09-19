import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 60,
                    width: 60,
                    image: AssetImage("assets/Images/logo.png"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maintenence",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "A maintenance box is a durable,\norganized container for storing tools and\n supplies,enhancing efficiency during repairs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 18),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Enter the Email",
                          prefixIcon: Icon(Icons.alternate_email_sharp),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                       ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Enter the Password",
                          prefixIcon: Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                       ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 18),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
