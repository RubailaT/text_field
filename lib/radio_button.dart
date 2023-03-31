import 'package:flutter/material.dart';
enum Fruits { Apple, Banana}
class Radiob extends StatefulWidget {
  const Radiob({Key? key}) : super(key: key);

  @override
  State<Radiob> createState() => _RadiobState();
}

class _RadiobState extends State<Radiob> {
  Fruits? _fruits;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("RADIO BUTTON EXAMPLE",style:
        TextStyle(color: Colors.black,fontSize: 20),),
      ),
      body: Column(
        children: [
          ListTile(
           title: (Text("Apple")),
            leading: Radio<Fruits>(
              value: Fruits.Apple,
              groupValue: _fruits,
    onChanged: (Fruits? value) {
      setState(() {
        _fruits = value;
      });
    },
            ),
          ),

    ListTile(
    title: (Text("Banana")),
    leading: Radio<Fruits>(
    value: Fruits.Banana,
    groupValue: _fruits,
    onChanged: (Fruits? value) {
    setState(() {
    _fruits = value;
    });
    },
    ),
    ),
        ],
      ),



    );
  }
}
