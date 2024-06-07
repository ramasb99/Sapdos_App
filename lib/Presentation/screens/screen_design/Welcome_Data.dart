import "package:flutter/material.dart";
// import "package:simple_app/Presentation/screens/Widget/doctor/doctor_panel.dart";
import "package:simple_app/Presentation/screens/Widget/main_pages/Register_page.dart";
import "package:simple_app/Presentation/screens/Widget/main_pages/login_page.dart";
import "package:simple_app/constatnts.dart";

class WelcomeData extends StatelessWidget {
  const WelcomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 252, 251, 251),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 4),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                              child: Text(
                                'SAPDOS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "time new roman",
                                  fontSize: 50,
                                  color: ColorsData.backBlue,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Center(
                                child: Text(
                                  'Login To Your Sapdos Account or \n Create One Now',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'RaleWay',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsData.backBlue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Login()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 19, 35, 90),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 5),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Register()));
                                },
                                style: TextButton.styleFrom(
                                  // backgroundColor:
                                  // const Color.fromARGB(255, 19, 35, 90),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 100,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: ColorsData.backBlue,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'SIGN-UP',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Color.fromARGB(255, 10, 4, 102),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 0),
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'Proceed as a Guest',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFF13235A),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
