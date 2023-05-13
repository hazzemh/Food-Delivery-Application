import 'package:flutter/material.dart';

import '../shared/shared_widgets/shared_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          leadingWidth: 100.0,
          backgroundColor: const Color(0xffFFFFFF),
          leading: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFFFFFF), elevation: 0.0),
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.black),
              label: const Text(
                'back',
                style: TextStyle(color: Colors.black),
              )),
        ),
        body: ListView(children: [
          createHeadingTitle('Sign Up'),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60.0,
                    width: 1200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required Field';
                        } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return 'Please Enter correct Username';
                        } else {
                          return null;
                        }
                      },
                      controller: username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Enter Username',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60.0,
                    width: 1200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required Field';
                        } else if (!RegExp(r'^[a-z A-Z]+[0-9]+$')
                                .hasMatch(value) ||
                            value.length < 8) {
                          return 'Password at least should contain 8 characters';
                        } else {
                          return null;
                        }
                      },
                      controller: password,
                      obscureText: visible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: visible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                        ),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60.0,
                    width: 1200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                       validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required Field';
                        } else if (confirmPassword.text != password.text) {
                          return 'Passwords do not match';
                        } else {
                          return null;
                        }
                      },
                      controller: confirmPassword,
                      obscureText: visible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: visible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              visible = !visible;
                            });
                          },
                        ),
                        hintText: 'Re-enter Password',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50.0,
                    width: 500.0,
                    child: ElevatedButton(
                        onPressed: () {
                          // if (username.text.isEmpty ||
                          //     password.text.isEmpty ||
                          //     confirmPassword.text.isEmpty ||
                          //     (password.text != confirmPassword.text)) {
                          //   ScaffoldMessenger.of(context)
                          //       .showSnackBar(const SnackBar(
                          //     content: Text('Something went wrong!'),
                          //     duration: Duration(seconds: 5),
                          //   ));
                          // } else {
                          //   Navigator.pushReplacementNamed(context, 'homepage');
                          // }
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(context, 'homepage');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xfff55b03),
                            fixedSize: const Size(250.0, 50.0),
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.all(8.0)),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Or connect with',
                      style: TextStyle(color: Color(0xff808080)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Image.asset(
                          'assets/images/salad.png',
                          height: 150.0,
                          width: 150.0,
                        )),
                    IconButton(
                      onPressed: () {},
                      iconSize: 50.0,
                      icon: Image.asset('assets/images/facebook.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 50.0,
                      icon: Image.asset('assets/images/gmail.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 50.0,
                      icon: Image.asset(
                        'assets/images/twitter.png',
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
