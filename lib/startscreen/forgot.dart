import 'package:flutter/material.dart';


class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heights=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: ()=> Navigator.pop(context)),
          backgroundColor: Colors.white,
          elevation: 3,
          centerTitle: true,
          title: Text("Forgot Password",style: TextStyle(color: Colors.black),),
          ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black45,
              ),
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: "Username",

                      contentPadding: const EdgeInsets.all(5),
                      enabled: true,
                      labelText: "Email Address"

                  ),
                ),
              ),
               Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: GestureDetector(
                      child: Container(
                        width:heights.size.width*1 ,
                        height: heights.size.height*0.04,
                        decoration: BoxDecoration(
                          color: Color(0xff4667EE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                            child: Text("Send the reset link",
                              style: TextStyle(
                                  color: Colors.white,fontSize: 18
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ),

              SizedBox(height: heights.size.height*0.63,),
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
      ) ,
    );
  }
}

