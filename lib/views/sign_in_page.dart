import 'package:flutter/material.dart';
import 'package:food_delivery/views/home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: TextField(
                    toolbarOptions: ToolbarOptions(
                        copy: true, paste: true, selectAll: true),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: TextField(
                    obscureText: true,
                    toolbarOptions: ToolbarOptions(
                        copy: true, paste: true, selectAll: true),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xfff55b03),
                      fixedSize: const Size(450.0, 50.0),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(8.0)),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text('Forget Password ?',
                        style: TextStyle(color: Color(0xff808080))))),
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
        ));
  }
}
