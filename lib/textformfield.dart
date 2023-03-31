 import 'package:flutter/material.dart';

class Texting extends StatelessWidget {
  const Texting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
Padding(padding: EdgeInsets.only(right: 30,top: 150),
   child:  CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg'),
              ),
),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                   hintText: "Email",

                  ),
                ),


              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password",
                  ),

                ),


              ),
              ElevatedButton(onPressed: (){
                print("tap");
              },
                  child: Text("Log In"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Forgot password?",style:
              TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
              Text("Not a member? Sign up now",style:
              TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),




            ],

          ),
        ),

    );
  }
}
