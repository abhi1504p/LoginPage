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
            Colors.pink,
            Colors.blue
          ])
        ),
        child: SingleChildScrollView(child:
          Column(
            children: [ Padding(
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
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(40),
                    ),
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
