import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Legal());
}


class Legal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 101, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF7B1A1A),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -9,
                  top: -3,
                  child: Container(
                    width: 368,
                    height: 816, 
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF000000)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xE5FFF1F1),
                    ),
                  ),
                ),
                Container(
                  width: 353,
                  height: 800,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -21,
                        right: 2,
                        top: 7,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'assets/images/image_4.png',
                              ),
                            ),
                          ),
                          width: 372,
                          height: 237,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: SizedBox(
                          width: 353,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(31.5, 6, 31.5, 95),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 28.4),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      width: 285.5,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 33.3, 22.9, 34.3),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  'assets/images/logo.png',
                                                ),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x40000000),
                                                  offset: Offset(0, 4),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                            width: 110.8,
                                            height: 74,
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 39.9, 10.1, 48.1),
                                            decoration: BoxDecoration(
                                              color: Color(0xFF000000),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x40000000),
                                                  offset: Offset(0, 4),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                            width: 53.6,
                                            height: 0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  'assets/images/image_2.png',
                                                ),
                                              ),
                                                            ),
                                                          ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 194.8, 8),
                                              child: 
                                              Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x40000000),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 2,
                                                    ),
                                                  ],
                                                ),
                                                child: Text(
                                                  'Usuário',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    color: Color(0x4F000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 2, 25),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0x52000000),
                                                ),
                                                child: Container(
                                                  width: 269,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 204.6, 13),
                                              child: 
                                              Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x40000000),
                                                      offset: Offset(0, 4),
                                                      blurRadius: 2,
                                                    ),
                                                  ],
                                                ),
                                                child: Text(
                                                  'Senha',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    color: Color(0x4F101010),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 2, 50),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0x4F000000),
                                                ),
                                                child: Container(
                                                  width: 269,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(8, 0, 0, 9),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE96363),
                                                  borderRadius: BorderRadius.circular(40),
                                                ),
                                                child: Container(
                                                  width: 263,
                                                  padding: EdgeInsets.fromLTRB(0, 16, 5, 16),
                                                  child: 
                                                  Text(
                                                    'Entrar',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(13.8, 0, 0, 52),
                                              child: Text(
                                                'Esqueceu sua senha?',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0x52000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
                                              child: SizedBox(
                                                width: 182,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 46, 0),
                                                      child: SizedBox(
                                                        width: 68,
                                                        height: 70,
                                                        child: SvgPicture.network(
                                                          'assets/images/image.png.png',
                                                         
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 68,
                                                      height: 70,
                                                      child: SvgPicture.network(
                                                        'assets/images/image_1.png.png',
                                                        
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 125,
                                    top: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Container(
                                        width: 108,
                                        height: 28,
                                      ),
                                    ),
                                  ),
                                
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
            ),
          ),
        ),
      ),
    );
  }
}