import 'package:flutter/material.dart';
import 'package:food_delivery/views/welcome_page.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff55b03),
      body: IntroSlider(
        autoScroll: true,
        autoScrollInterval: const Duration(seconds: 2),
        backgroundColorAllSlides: const Color(0xfff55b03),
        colorActiveDot: Colors.white,
        colorDot: Colors.grey,
        slides: [
          introSlider('assets/images/restaurant.png', 'Delicious Food',
              'A restaurant is a business that prepares and serves food and drinks to customers'),
          introSlider('assets/images/shipping.png', 'Fast Shipping',
              'A product can be delivered to a customer in 3 business days or sooner, including both transit time and handling time'),
          introSlider('assets/images/certificate.png', 'Certificate Food',
              'This certificate entitles a person to handle food safely both for himself and for the persons who will be consuming the food'),
          introSlider('assets/images/payment.png', 'Payment Online',
              'Register Quickly & Easily In Minutes To Make Online Payments Anytime, Anywhere! Multiple Currencies Supported For Simple & Secure Transactions')
        ],
        onDonePress: () {
          Navigator.pushReplacementNamed(context, 'welcomepage'); 
        },
      ),
    );
  }

  Slide introSlider(String img, String title, String description) {
    return Slide(
        backgroundColor: const Color(0xfff55b03),
        pathImage: img,
        title: title,
        description: description);
  }
}
