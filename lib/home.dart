import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traffic_huck/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: const Text(
          'Traffic Huck',
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
              Icons.menu), // Or another navigation icon like Icons.arrow_back
          color: Colors.black, // Customize color if desired
          onPressed: () {
            // Handle navigation action (e.g., open a drawer)
          },
        ),
      ),
      body: Container(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child:  Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Traffic Huck Application',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Here is today Road's Condition",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Image(
                image:
                    AssetImage('assets/images/map.png'), // Use const AssetImage
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'DEFAULT ROOTS',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Column(children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "enter pick_up location",
                        hintText: "pick up location",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ]),

               Padding(
                    padding: EdgeInsets.all(25.0),),
                Text("Kilometer:",
                  style: TextStyle(color: Colors.grey,fontSize: 18),)
              ]),
              SizedBox(height: 30,),
              Row(children: [
                Column(children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Drop_off location",

                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ]),

                Padding(
                  padding: EdgeInsets.all(25.0),),
                Text("Rate:",
                  style: TextStyle(color: Colors.grey,fontSize: 18),)
              ]),
              SizedBox(height: 30,),
              Row(
                children: [
                  Column(children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Choose different Routes ",
                          prefix: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                            size: 200.0,
                          ),
                        ),
                      ),
                    ),
                  ]),
                      Padding(
                        padding: EdgeInsets.all(25.0),),

                     ElevatedButton(

                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.cyan,
                           shape:RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5),
                           )
                       ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Detail()));
                        },
                        child: const Text("See Detail", style: TextStyle(color: Colors.white),),
                      )
          ]
                  ),

                ],
              )

          ),
        ),

    );
  }
}
