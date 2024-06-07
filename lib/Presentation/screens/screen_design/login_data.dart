import 'package:flutter/material.dart';
import 'package:simple_app/Presentation/screens/Widget/doctor/doctor_panel.dart';
import 'package:simple_app/Presentation/screens/Widget/main_pages/Register_page.dart';
import 'package:simple_app/constatnts.dart';

class LoginData extends StatefulWidget {
  LoginData({super.key});

  @override
  State<LoginData> createState() => _DriverLoginPageState();
  TextEditingController emailContrller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
}

class _DriverLoginPageState extends State<LoginData>
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
                                  fontFamily: 'title',
                                  fontSize: 50,
                                  color: ColorsData.backBlue,
                                  fontWeight: FontWeight.bold,
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
                                'Welcome Back',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'RaleWay',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: ColorsData.backBlue,
                                ),
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Enter existing account's details",
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
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
                                              color:
                                                  Color.fromARGB(255, 8, 8, 8),
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
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
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
                                        focusedErrorBorder: OutlineInputBorder(
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
                                                : Icons.visibility_off_outlined,
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {},
                                ),
                                const Center(
                                  child: Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    // width: 5,
                                    ),
                                Align(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            60, 0, 0, 12),
                                    child: TextButton(
                                      onPressed: () async {},
                                      child: const Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          letterSpacing: 0,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 40,
                          ),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 15, 0, 5),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DoctorPanel(
                                            userName: '',
                                          )));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 19, 35, 90),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 130),
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
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 20, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Register()));
                                },
                                child: const Text(
                                  'Not on Sapdos? Sign-up',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF13235A),
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
      ),
    );
  }
}
