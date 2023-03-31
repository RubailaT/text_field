

import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController companyController=TextEditingController();
  bool value = false;


  var _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Register", style:
          TextStyle(color: Colors.black,
              fontWeight: FontWeight.w500),),
          leading: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(

              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Phone Number";
                      } else if (!RegExp(
                          r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                          .hasMatch(value)) {
                        return "Please Enter a Valid Phone Number";
                      }
                    },


                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Phone number",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: addressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter an address";
                      }

                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Address",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                 controller: companyController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return " Enter a name";
                      }


                    },


                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Company name",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Website name",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Enter a valid email!';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: "E-mail address"
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (value!.length < 3) {
                        return 'Must be more than 2 charater';
                      }


                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Password"
                    ),
                  ),
                ),
                Row(

                  children: [
                    Checkbox(value: this.value, onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                      activeColor: Colors.green,
                      checkColor: Colors.yellow,
                    ),

                    Text(("I agree with"), style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                        fontSize: 18),),
                    SizedBox(width: 10,),

                    Text(("Terms and Condiotions"), style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,
                        fontSize: 18),)

                  ],
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(onPressed: () {
                    print("tap");
                  },
                    child: Text("CREATE ACCOUNT", style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(("Already have an accout?"), style:
                    TextStyle(color: Colors.black,
                        fontSize: 18),),
                    SizedBox(width: 10,),

                    Text(("Log in"), style:
                    TextStyle(color: Colors.blue,
                        fontSize: 18),),

                  ],
                )


              ],
            ),
          ),
        ),
      );
    }
  }

