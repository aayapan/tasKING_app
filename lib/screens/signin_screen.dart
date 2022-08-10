// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

Widget _buildEmailInput() {
  return Column(
    children: [
      Container(
        width: 290.0,
        alignment: Alignment.centerLeft,
        child: Text(
          "Email",
          style: TextStyle(
            fontFamily: 'Inter-SemiBold',
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        height: 13.0,
      ),
      Container(
        color: Color(0xFF37605C),
        height: 32.0,
        width: 290.0,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter-Regular',
            fontSize: 13.0,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              size: 16,
              color: Color(0xFFFFE7E7E7),
            ),
            border: InputBorder.none,
            hintText: "Enter your Email",
            hintStyle: TextStyle(
              color: Color(0xFFA3A3A3),
              fontFamily: 'Inter-Regular',
              fontSize: 13.0,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
          ),
        ),
      ),
    ],
  );
}

Widget _buildPasswordInput() {
  return Column(
    children: [
      Container(
        width: 290.0,
        alignment: Alignment.centerLeft,
        child: Text(
          "Password",
          style: TextStyle(
            fontFamily: 'Inter-SemiBold',
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        height: 13.0,
      ),
      Container(
        color: Color(0xFF37605C),
        height: 32.0,
        width: 290.0,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter-Regular',
            fontSize: 13.0,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key_outlined,
              size: 16,
              color: Color(0xFFFFE7E7E7),
            ),
            border: InputBorder.none,
            hintText: "********",
            hintStyle: TextStyle(
              color: Color(0xFFA3A3A3),
              fontFamily: 'Inter-Regular',
              fontSize: 13.0,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
          ),
        ),
      ),
    ],
  );
}

Widget _buildForgotPasswordBtn() {
  return Container(
    // color: Colors.redAccent,
    height: 20,
    width: 290.0,
    alignment: Alignment.centerRight,
    child: FlatButton(
      padding: EdgeInsets.only(right: 0),
      onPressed: () {
        print("Forgot Password!");
      },
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontFamily: 'Inter-Bold',
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    ),
  );
}

Widget _buildLoginBtn() {
  return FlatButton(
    color: Colors.white,
    minWidth: 290,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    onPressed: () {},
    child: Text(
      "LOGIN",
    ),
  );
}

Widget _buildSocIcons() {
  return Container(
    padding: EdgeInsets.only(left: 50, right: 50),
    width: 290,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
            color: Color(0xFF3D716D),
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/images/Facebook_128px.png"),
            ),
            iconSize: 43,
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
            color: Color(0xFF3D716D),
            padding: EdgeInsets.only(top: 1, left: 2, right: 0, bottom: 0),
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/images/google_128px.png"),
            ),
            iconSize: 43,
          ),
        )
      ],
    ),
  );
}

class _SignInState extends State<SignIn> {
  bool rememberMeValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF3D716D),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 73.0,
            ),
            Text(
              "Sign In",
              style: TextStyle(
                fontFamily: 'Inter-Bold',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 42.0,
            ),
            _buildEmailInput(),
            SizedBox(
              height: 23.0,
            ),
            _buildPasswordInput(),
            SizedBox(
              height: 23.0,
            ),
            _buildForgotPasswordBtn(),
            Container(
              height: 20,
              margin: EdgeInsets.only(top: 10),
              width: 318.5,
              child: Row(
                children: [
                  Checkbox(
                    side: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    checkColor: Colors.amber,
                    activeColor: Color(0xFF3D716D),
                    value: rememberMeValue,
                    onChanged: (value) {
                      setState(() {
                        rememberMeValue = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildLoginBtn(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 290,
              child: Divider(
                thickness: 1.5,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign in with",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSocIcons(),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("SIGN UP CLICKED");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
