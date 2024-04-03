import 'package:flutter/material.dart';
import 'package:seller_side_uo/homepage.dart';

class login_page extends StatefulWidget {
  login_page({super.key});

  @override
  State<login_page> createState() => _login_page();
}

class _login_page extends State<login_page> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {
    print('uehsue');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo_splash.png',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Textfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 18,
              ),
              Textfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'forgot Password ?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              mybutton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text("or continue with"),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  squaretile(
                    imagePath: 'assets/images/google.png',
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  squaretile(
                    imagePath: 'assets/images/google.png',
                  ),
                  
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?'),
                      const SizedBox(width:4),
                      Text("Register now ")
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class squaretile extends StatelessWidget {
  final String imagePath;
  const squaretile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white
          ),
          borderRadius: BorderRadius.circular(16)
          ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}

class mybutton extends StatefulWidget {
  void Function()? onTap;
  mybutton({super.key, required this.onTap});

  @override
  State<mybutton> createState() => _mybuttonState();
}

class _mybuttonState extends State<mybutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(i: 1)));

      },
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
