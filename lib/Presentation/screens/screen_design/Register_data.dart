import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app/Presentation/provider/signup.dart';
import 'package:simple_app/Presentation/screens/Widget/doctor/doctor_panel.dart';
// import 'package:simple_app/Presentation/screens/Widget/login.dart';
import 'package:simple_app/Presentation/screens/Widget/main_pages/login_page.dart';
import 'package:simple_app/constatnts.dart';
// import 'package:simple_app/Presentation/screens/screen_design/Welcome_Data.dart';
// import 'package:simple_app/Presentation/screens/login.dart';

class RegisterData extends StatefulWidget {
  RegisterData({super.key});

  @override
  State<RegisterData> createState() => _DriverLoginPageState();
  TextEditingController emailContrller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
}

class _DriverLoginPageState extends State<RegisterData>
    with TickerProviderStateMixin {
  late TextEditingController emailAddressTextController;
  late FocusNode emailAddressFocusNode;
  late TextEditingController passwordTextController;
  late FocusNode passwordFocusNode;
  bool passwordVisibility = false;

  // ignore: non_constant_identifier_names
  get Rememberme => null;

  @override
  void initState() {
    super.initState();
    emailAddressTextController = TextEditingController();
    emailAddressFocusNode = FocusNode();
    passwordTextController = TextEditingController();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailAddressTextController.dispose();
    emailAddressFocusNode.dispose();
    passwordTextController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  String? emailAddressValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      body: Consumer<SignupProvider>(builder: (context, data, _) {
        return SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 252, 251, 251),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 4),
                        child: Column(
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
                                    fontFamily: 'title',
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsData.backBlue,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                            const Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Text(
                                  'Register',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'RaleWay',
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsData.backBlue),
                                ),
                              ),
                            ),
                            const Center(
                              child: Text(
                                "Enter New account's details",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 97, 99, 109),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    child: Center(
                                      child: SizedBox(
                                        width: 300,
                                        child: Container(
                                          child: TextFormField(
                                            controller:
                                                emailAddressTextController,
                                            focusNode: emailAddressFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email,
                                            ],
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Email address/ Phone No.',
                                              labelStyle: const TextStyle(
                                                fontFamily: 'Readex Pro',
                                              ),
                                              prefixIcon: const Icon(
                                                Icons.email,
                                                color: Color.fromARGB(
                                                    255, 8, 8, 8),
                                                size: 20,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 49, 49, 49),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.blue,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              filled: true,
                                              fillColor: const Color.fromARGB(
                                                  255, 248, 247, 247),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16.0,
                                                      horizontal: 16.0),
                                            ),
                                            style: const TextStyle(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0,
                                            ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: (value) =>
                                                emailAddressValidator(
                                                    context, value),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                // height: 10,
                                ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25, 0, 25, 16),
                              child: Center(
                                child: SizedBox(
                                  width: 300,
                                  child: Center(
                                    child: Container(
                                      child: TextFormField(
                                        controller: passwordTextController,
                                        focusNode: passwordFocusNode,
                                        autofocus: false,
                                        autofillHints: const [
                                          AutofillHints.password
                                        ],
                                        obscureText: !passwordVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                            color: Color.fromARGB(255, 8, 8, 8),
                                            size: 20,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 49, 49, 49),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.blue,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          filled: true,
                                          fillColor: const Color.fromARGB(
                                              255, 253, 253, 253),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16.0,
                                                  horizontal: 16.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(() =>
                                                passwordVisibility =
                                                    !passwordVisibility),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: const Color.fromARGB(
                                                  255, 8, 8, 8),
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                        validator: (value) =>
                                            passwordValidator(context, value),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25, 0, 25, 16),
                              child: Center(
                                child: SizedBox(
                                  width: 300,
                                  child: Center(
                                    child: Container(
                                      child: TextFormField(
                                        controller: passwordTextController,
                                        focusNode: passwordFocusNode,
                                        autofocus: false,
                                        autofillHints: const [
                                          AutofillHints.password
                                        ],
                                        obscureText: !passwordVisibility,
                                        decoration: InputDecoration(
                                          labelText: 'Confirm Password',
                                          labelStyle: const TextStyle(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                            color: Color.fromARGB(255, 8, 8, 8),
                                            size: 20,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 49, 49, 49),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.blue,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          filled: true,
                                          fillColor: const Color.fromARGB(
                                              255, 253, 253, 253),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16.0,
                                                  horizontal: 16.0),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(() =>
                                                passwordVisibility =
                                                    !passwordVisibility),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: const Color.fromARGB(
                                                  255, 8, 8, 8),
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                        validator: (value) =>
                                            passwordValidator(context, value),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: AlignmentDirectional.center,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 5),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => DoctorPanel(
                                                  userName:
                                                      emailAddressTextController
                                                          .text
                                                          .toString(),
                                                )));
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 19, 35, 90),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 120),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'SIGN-UP',
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
                            Align(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: const Text(
                                    'Not on Sapdos? Sign_in',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFF13235A),
                                      fontSize: 15,
                                    ),
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
        );
      }),
    );
  }
}
