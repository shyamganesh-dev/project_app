import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../startscreen/signup.dart';
import '../startscreen/signin.dart';

class Getstarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height.size.height*0.50,
                color: Colors.black12,
              ),
              SizedBox(height: 10,),
              Center(
                child: Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: height.size.width*0.7,
                  height: height.size.height*0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                      width: 1
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Facebook.svg"),
                      SizedBox(width: 10,),Text("Proceed with facebook",
                    style: TextStyle(fontSize: 16),)
                    ],

                  ),
                ),
              ),
              SizedBox(height:height.size.height*0.02,),
              Center(
                child: Container(
                  width: height.size.width*0.7,
                  height: height.size.height*0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                        width: 1
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Google.svg"),
                      SizedBox(width: 10,),Text("Proceed with Google",
                        style: TextStyle(fontSize: 15),)
                    ],

                  ),
                ),
              ),
              SizedBox(width: 5,),
              SizedBox(height:height.size.height*0.02,),
              Row(
                children: [
                  SizedBox(width: 60, height: 60,),
                  Container(
                    height: 1,
                    width: 130,
                    color: Colors.black26, //decoration: ,
                  ),
                  SizedBox(width: 10,),
                  Text("OR"),
                  SizedBox(width: 10,),
                  Container(
                    height: 1,
                    width: 120,
                    color: Colors.black26,
                    //decoration: ,
                  ),

                ],
              ),
          SizedBox(height: height.size.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: height.size.width*0.16),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>Signup())) ,
                child: Container(
                  width: height.size.width*0.28,
                  height: height.size.height*0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                        width: 1
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      SvgPicture.asset("assets/Email.svg"),
                      SizedBox(width: 5,),
                      Text("Sign up")
                    ],
                  ),
                ),
              ),
              SizedBox(width: height.size.width*0.1),
              InkWell(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Signin())) ,
                child: Container(
                  width: height.size.width*0.28,
                  height: height.size.height*0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black26,
                        width: 1
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      SvgPicture.asset("assets/Email.svg"),
                      SizedBox(width: 5,),
                      Text("Sign in")
                    ],
                  ),
                ),
              ),
            ],
          ),
              SizedBox(height:height.size.height*0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up you are agree to our ",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  //SizedBox(width: height.size.width*0.1),
                  Text(
                      "terms and policy",
                    style: TextStyle(
                      decoration:
                      TextDecoration.underline,
                      height: 1.5,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}