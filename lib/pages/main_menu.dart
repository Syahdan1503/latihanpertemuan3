import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan2/pages/latihan_1.dart';

class mainmenupage extends StatelessWidget {
  const mainmenupage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard (String img, String name, String role,){
      return Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 24),
            Container(
              height: 220,
              width: double.infinity,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                     img
                     
                  )
                )
              ),
            ),            
            const SizedBox(
              height:10,
            ),
            Container(
              margin: const EdgeInsets.only(left:  10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromARGB(255, 6, 92, 172),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
            Text(
                        role,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: const Color(0xff0D2841),
                          fontWeight: FontWeight.w500,
                        ),
                      ),  
                    ],
                  ),
                 Row(
                   children: [
                     Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/Star.png"))),
                      ),
                     Text(
                    '4.8',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xff308CF8),
                      fontWeight: FontWeight.w500,
                    ),
                  ), 
                   ],
                 ),
                ],
              ),
            )
                
          ],),
      );
    }
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [ 
                  Text(
                    'Hello, \nSyahdanSyuroA',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color(0xff0D2841),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  const SizedBox(
                    height: 6,
                  ),
                   Text(
                    'Stay healthy with our specialist doctor',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff0D2841),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   ],
                  ),
                  Container(
                    width: 76,
                    height: 76,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Group3.png"))),
                  ),
                ],
              ),
              doctorCard("assets/Image3.png", "dr. Mawar N.", "Spesialis Penyakit dalam"),
              doctorCard("assets/Image4.png", "dr. Zizah Ayuningsing", "Spesialis Kulit Kelamin"),
            ],
          ),
        )),
      ),
    );
  }
}
