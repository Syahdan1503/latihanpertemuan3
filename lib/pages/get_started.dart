import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan2/pages/Latihan_2.dart';
import 'package:latihan2/pages/main_menu.dart';
import 'package:latihan2/pages/latihan_1.dart';


class Getstartedpage extends StatelessWidget {
  const Getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/image_1.png"))),
        ),
        Container(
          width: double.infinity,
          height: 444,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0),
              ],
            )
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Text(
                  "Treat Patient Like A Queen",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFFFFFF),
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Explore the best our services with \n proffesional specialist doctor",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const Latihan1page()), 
                  );
                },
                 child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(17)),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromARGB(255, 14, 13, 13),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ),
               
            ],
          ),
        )
      ]),
    );
  }
}
