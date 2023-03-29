import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Latihan1page extends StatelessWidget {
  const Latihan1page({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 2, 50, 90),
                Color.fromARGB(216, 23, 127, 196),
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
              'Please Check Your healty',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
                height: 64,
              ),
          Container(
          width: 500,
          height: 220,
          
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              image: DecorationImage(
                  fit: BoxFit.cover, 
                  image: AssetImage("assets/healty.png"))
                  ),
                 
        ),
        const SizedBox(
              height:10,
            ), 

                    Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(17)),
                      child: Text(

                        "Go Choose",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromARGB(255, 14, 13, 13),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),



           ],
        ),
        ),


      );
  
  }
}       
           
