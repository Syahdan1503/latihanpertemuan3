import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 2, 20, 100),
                Color.fromARGB(255, 20, 131, 196),
              ],
            ),
          ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            const SizedBox(
                height: 64,
              ),
          Center(
            
            child: Text(
              'Please give you advise here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 116, 112, 112),
                        borderRadius: BorderRadius.circular(17)),
                    ),),

          ],)
        )
          
          );
  }
}
