import 'package:flutter/material.dart';

Padding createHeadingTitle(String txt) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Text(txt,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0)),
  );
}

// Footer appFooter(){
//   return Footer(
//                 backgroundColor: Colors.white,
//                 child: Column(
//                   children: [
//                     const Text('Or connect with'),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Positioned(
//                               bottom: 0,
//                               left: 0,
//                               child: Image.asset(
//                                 'assets/images/salad.png',
//                                 height: 150.0,
//                                 width: 150.0,
//                               )),
//                           IconButton(
//                             onPressed: () {},
//                             iconSize: 50.0,
//                             icon: Image.asset('assets/images/facebook.png'),
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             iconSize: 50.0,
//                             icon: Image.asset('assets/images/gmail.png'),
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             iconSize: 50.0,
//                             icon: Image.asset(
//                               'assets/images/twitter.png',
//                             ),
//                           )
//                         ],
//                       ),
//                   ],
//                 ),
//               );
// }


Column appFooter (){
  return Column(children: [
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

  ],);
}