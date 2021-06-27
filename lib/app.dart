import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class App extends StatelessWidget {
  final data = [
    {'url': 'assets/images/iphone121.jpg', 'name': 'Iphone 12'},
    {'url': 'assets/images/gamingPC.jpg', 'name': 'Gaming PC'}
  ];

  final data1 = [
    {
      "url1": 'assets/images/iphone121.jpg',
      "url2": 'assets/images/gamingPC.jpg',
      'name1': 'Iphone 12',
      'name2': 'Gaming PC'
    },
    {
      "url1": 'assets/images/iphone121.jpg',
      "url2": 'assets/images/gamingPC.jpg',
      'name1': 'Iphone 12',
      'name2': 'Gaming PC'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Ecom App UI')),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View More',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: <Widget>[for (var i in data) (myCarousel(i))],
              options: CarouselOptions(
                autoPlay: true,
                height: 225,
                // initialPage: 1,
                // aspectRatio: 10.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('More Categories',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     shrinkWrap: true,
            //     // reverse: true,
            //     // physics: NeverScrollableScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       myCard(),
            //       myCard(),
            //       myCard(),
            //     ],
            //   ),
            // ),
            CarouselSlider(
              items: <Widget>[
                myCard(),
                myCard(),
                myCard(),
              ],
              options: CarouselOptions(
                autoPlay: false,
                height: 80,
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Items',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View More',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // dropdownList(),
            for (var j in data1)
              dropdownList(j['url1'], j['name1'], j['url2'], j['name2']),

            // dropdownListItems(),
          ],
        ),
      ),
    );
  }
}

Widget myCarousel(data) {
  return Container(
    decoration: BoxDecoration(
      // border: Border.all(color: Colors.blueAccent),
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    margin: EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.asset(
            data['url'],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['name'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ratingBar(),
          ],
        ),
      ],
    ),
  );
}

Widget ratingBar() {
  return Container(
    child: Row(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 10.0),
            Icon(Icons.star, color: Colors.yellow, size: 10.0),
            Icon(Icons.star, color: Colors.yellow, size: 10.0),
            Icon(Icons.star, color: Colors.yellow, size: 10.0),
            Icon(Icons.star, color: Colors.yellow, size: 10.0),
            SizedBox(width: 5),
            Text('5.0', style: TextStyle(fontSize: 12)),
            SizedBox(width: 5),
            Text('(23 Reviews)', style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    ),
  );
}

Widget myCard() {
  return Container(
    // width: 160,
    // height: 10,
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.shop,
            size: 50,
            color: Colors.purple,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Clothes',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '5 Items',
                style: TextStyle(fontSize: 15),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget dropdownList(url1, name1, url2, name2) {
  // final data1 = [
  //   {
  //     "url1": 'assets/images/iphone121.jpg',
  //     "url2": 'assets/images/gamingPC.jpg',
  //     'name1': 'Iphone 12',
  //     'name2': 'Gaming PC'
  //   },
  //   {
  //     "url1": 'assets/images/iphone121.jpg',
  //     "url2": 'assets/images/gamingPC.jpg',
  //     'name1': 'Iphone 12',
  //     'name2': 'Gaming PC'
  //   }
  // ];
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // dropdownListItems(),

      dropdownListItems(url1, name1),
      dropdownListItems(url2, name2),
    ],
  );
}

Widget dropdownListItems(url, name) {
  return Container(
    width: 150,
    decoration: BoxDecoration(
      // border: Border.all(color: Colors.blueAccent),
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    margin: EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.asset(
            url,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ratingBar(),
          ],
        ),
      ],
    ),
  );
}

// Widget dropdownListItems() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//         child: Image.asset(
//           'assets/images/iphone121.jpg',
//           fit: BoxFit.cover,
//           width: double.infinity,
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Iphone 12',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           ratingBar(),
//         ],
//       ),
//     ],
//   );
// }
