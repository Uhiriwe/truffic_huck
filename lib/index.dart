import 'package:flutter/material.dart';
import 'package:traffic_huck/home.dart';

class Index extends StatelessWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.cyan,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
          Colors.black,
        ],
        transform: GradientRotation(0.4),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.black, // Set background color here
                border: Border.all(
                  color: Colors.cyan,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Transform.translate(
                  offset: const Offset(1.0, 0.1),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.black, // Set background color here
                      border: Border.all(
                        color: Colors.cyan,
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                        child: Transform.translate(
                      offset: const Offset(-3.0, 5.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        child:const Icon(
                          Icons.car_crash_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black, // Set background color here
                          border: Border.all(
                            color: Colors.cyan,
                            width: 2.0,
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
              )),

         const SizedBox(height: 100,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:Colors.cyan,
              minimumSize:const  Size(double.infinity,50),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
            ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home()));
              }, child: const Text('GET STARTED',
            style: TextStyle(color: Colors.white,fontSize: 18),
          )),
          const SizedBox(height: 70,),
        ],
      ),
    );
  }
}
