import 'package:flutter/material.dart';
import 'package:food_delivery/shared/shared_widgets/shared_widgets.dart';
List imgs = [
  'assets/images/drinks.png',
  'assets/images/food.png',
  'assets/images/cake.png',
  'assets/images/snacks.png',
];

List menuImgs = [
  'assets/images/burgers.jpg',
  'assets/images/pizza.jpg',
  'assets/images/bbq.jpg',
  'assets/images/fruits.jpg',
  'assets/images/sushi.jpg',
  'assets/images/noodles.jpg',
];

List menuNames = ['Burgers', 'Pizza', 'BBQ', 'Fruits', 'Sushi', 'Noodles'];

List icnNames = [
  'drinks',
  'food',
  'cake',
  'snacks',
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          height: MediaQuery.of(context).size.height / 10.0,
          margin: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          color: Colors.white,
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            // controller: TextEditingController(),
            decoration: InputDecoration(
                fillColor: const Color(0xfff4f4f4),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ))),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                size: 25.0,
              ),
              Text(
                '9 West 46th Street, New York City',
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 57, 56, 56),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15.0)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 300.0,
                  children: [
                    for (int i = 0; i < 4; i++)
                      createIconButton(imgs[i], icnNames[i]),
                  ],
                ),
              ),
            ],
          ),
        ),
        createHeadingTitle('Food Menu'),
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(15.0),
          height: MediaQuery.of(context).size.height / 1.7,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 57, 56, 56),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15.0)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(children: [
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 300.0,
                  children: [
                    for (int i = 0; i < 3; i++)
                      createMenuButton(menuImgs[i], menuNames[i]),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 300.0,
                  children: [
                    for (int i = 3; i < 6; i++)
                      createMenuButton(menuImgs[i], menuNames[i]),
                  ],
                ),
              ])
            ],
          ),
        ),
        createHeadingTitle('Near Me'),
        ListTile(leading: Image.asset('assets/images/mainCourse.jpg',height: 250.0,width: 250.0,fit: BoxFit.cover,),
        title: const Text('Awesome Meat Restaurant',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.0)),
        onTap: () {
          
        },
        trailing: const Icon(Icons.arrow_forward_ios),
        // subtitle: Text(),
        contentPadding: const EdgeInsets.all(15.0),
        hoverColor:const Color(0xfff55b03) ,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              backgroundColor: Color(0xfff55b03),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              backgroundColor: Color(0xfff55b03),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              backgroundColor: Color(0xfff55b03),
              label: 'My List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Color(0xfff55b03),
              label: 'Profile')
        ],
      ),
    );
  }
}


Column createIconButton(String img, String icnName) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(11.0),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(primary: const Color(0xfff55b03)),
          child: Image.asset(img),
        ),
      ),
      Text(
        icnName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}

Padding createMenuButton(String img, String txt) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: () {},
      splashColor: const Color(0xfff55b03),
      child: Column(
        children: [
          Ink.image(
            padding: const EdgeInsets.all(15.0),
            image: AssetImage(img),
            height: 130.0,
            width: 130.0,
            fit: BoxFit.cover,
          ),
          Text(
            txt,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          )
        ],
      ),
    ),
  );
}
// Column createMenuButton(String img) {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: TextButton(
//           onPressed: () {},
//           style: TextButton.styleFrom(primary: const Color(0xfff55b03)),
//           child: Image.asset(
//             img,
//             fit: BoxFit.fill,
//             height: 125.0,
//             width: 150.0,
//           ),
//         ),
//       ),
//       // Text(
//       //   icnName,
//       //   style: const TextStyle(fontWeight: FontWeight.bold),
//       // )
//     ],
//   );
// }
