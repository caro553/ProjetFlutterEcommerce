import 'package:flutter/material.dart';
import 'login.dart';

List<String> imagePaths = [
  'assets/images/image.png',
  'assets/images/image4.png',
  'assets/images/image5.png',
];
List<String> discounts = [
  '-20%',
  '-15%',
  '-20%',
];

class main2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pexels.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: 20,
                child: Text(
                  'Street Clothes',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Metropolis'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SALE',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Metropolis',
                                  ),
                                ),
                                Text(
                                  'super summer sale',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontFamily: 'Metropolis',
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'view all',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Metropolis',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            imagePaths.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    imagePaths[index]),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Image.asset(
                                              'assets/images/bg.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                          Positioned(
                                            right: 5,
                                            top: 5,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 2),
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                discounts[
                                                    index], // Display the discount
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                children: List.generate(
                                                  5,
                                                  (starIndex) => Icon(
                                                    Icons.star,
                                                    color: starIndex < 4
                                                        ? Colors.amber
                                                        : Colors.grey,
                                                    size: 12,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "(10)",
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis'),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Dorothy Perkins',
                                            style: TextStyle(
                                                fontSize: 11,
                                                height: 1,
                                                color: Color(0xFF9B9B9B),
                                                fontFamily: 'Metropolis'),
                                          ),
                                          Text(
                                            'Evening Dress',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Metropolis'),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '\$15 ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\$12',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 10,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEW',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Metropolis',
                                  ),
                                ),
                                Text(
                                  'You\'ve never seen it before',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontFamily: 'Metropolis',
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'view all',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Metropolis',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            imagePaths.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    imagePaths[index]),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Image.asset(
                                              'assets/images/bg.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                          Positioned(
                                            right: 5,
                                            top: 5,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 2),
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                'New',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                children: List.generate(
                                                  5,
                                                  (starIndex) => Icon(
                                                    Icons.star,
                                                    color: starIndex < 4
                                                        ? Colors.amber
                                                        : Colors.grey,
                                                    size: 12,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "(10)",
                                                style: TextStyle(
                                                    fontFamily: 'Metropolis'),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Dorothy Perkins',
                                            style: TextStyle(
                                                fontSize: 11,
                                                height: 1,
                                                color: Color(0xFF9B9B9B),
                                                fontFamily: 'Metropolis'),
                                          ),
                                          Text(
                                            'Evening Dress',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Metropolis'),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '\$15 ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\$12',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 10,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          currentIndex: 0,
          onTap: (int index) {},
        ),
      ),
    );
  }
}
