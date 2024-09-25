import 'package:flutter/material.dart';

class SingnPage extends StatefulWidget {
  const SingnPage({super.key});

  @override
  State<SingnPage> createState() => _SingnPageState();
}

class _SingnPageState extends State<SingnPage> {
  String name = "", email = "", password = "";
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pink.shade900,
            Colors.blue.shade900
          ])
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(
            children: [
              SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Pls Enter the Name ";
                    }
                    return null;
                  },
                  controller: namecontroller,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Enter the Name",
                    prefixIcon:
                    const Icon(Icons.drive_file_rename_outline_sharp),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Form(
                  key: _formkey,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Pls Enter the Email ";
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Enter the Email",
                      prefixIcon: const Icon(Icons.alternate_email_sharp),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(

                  obscureText: _isHidden,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Pls Enter the Password ";
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Enter the Password",
                    suffix: InkWell(
                      onTap: _togglePasswordView,  /// This is Magical Function
                      child: Icon(color: Colors.red,
                        _isHidden ?         /// CHeck Show & Hide.
                        Icons.visibility :
                        Icons.visibility_off,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),


            ],
          ),),
      ),
    );
  }
}
