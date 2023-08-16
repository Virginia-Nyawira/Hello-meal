import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:hello_meal/Cart%20Section/cart_homeView.dart';
import 'package:hello_meal/Nearby%20Page/nearby_homepage.dart';

import 'homeScreen_View.dart';

class HomePagePages extends StatefulWidget {
  const HomePagePages({super.key});

  @override
  State<HomePagePages> createState() => _HomePagePagesState();
}

class _HomePagePagesState extends State<HomePagePages> {
  int selectedIndex = 0;
  final pageOptions = [
    const HomeScreen(),
    const NearByHome(),
    const CartHome(),
    const ProfileScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.restaurant),
            label: 'Nearby',
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.tealAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
            backgroundColor: Colors.tealAccent,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String searchText= '';
  final List<String> suggestions =['Lunch','Brunch','Breakfast','Evening Snack','Family dinner'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 30),
              color: Colors.teal,
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      'Hello Meal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white60,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<ProfileScreen>(
                            builder: (context) => ProfileScreen(
                              actions: [
                                SignedOutAction((context) {
                                  Navigator.of(context).pop();
                                })
                              ],
                              appBar: AppBar(
                                centerTitle: true,
                                title: const Text(
                                  "User Profile",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              children: [
                                //const Icon(Icons.abc_outlined, color: Colors.black),
                                MaterialButton(
                                  minWidth: 100,
                                  color: Colors.teal,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  },
                                  child: const Text(
                                    "Exit",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.person,
                        color: Colors.green,
                        size: 30,
                      )),
                  const Text(
                    'View Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.blueGrey),
                  ),
                ],
              ),
            ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<ProfileScreen>(
                        builder: (context) =>
                            ProfileScreen(
                              actions: [
                                SignedOutAction((context) {
                                  Navigator.of(context).pop();
                                })
                              ],
                              appBar: AppBar(
                                centerTitle: true,
                                title: const Text("User Profile", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),),

                              ),
                              children: [
                                //const Icon(Icons.abc_outlined, color: Colors.black),
                                MaterialButton(
                                  minWidth: 100,
                                  color: Colors.teal,
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
                                  },
                                  child: const Text("Exit",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.edit_attributes,
                    color: Colors.green,
                    size: 30,
                  )
              ),
              const Text('Edit Profile',
                style: TextStyle(fontWeight: FontWeight.w600,
                    color: Colors.blueGrey
                ),
              ),

            ],
          ),

            // SizedBox(
            //   height: 350,
            // ),

        ),
            const SizedBox(
              height: 200,
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: SignOutButton()
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 25,
          // ),
          notificationBar(),
          ///********************************************Search Bar*********************************
          Container(
            color: Colors.blueGrey[100],
            padding: const EdgeInsets.only(left: 9,right: 9),
            child: AnimatedSearchBar(
              label: "What would you like to buy",
              labelStyle: const TextStyle(fontStyle: FontStyle.italic),
              onChanged: (value) {
                print("value on Change");
                setState(() {
                  searchText = value;
                });
              },
              closeIcon: const Icon(Icons.close, key: ValueKey("close"),
              color: Colors.teal,
              ),
              searchDecoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  //gapPadding: 7,
                )
              ),
            ),
          ),
          ///***********************************************************
          firstListView(),
          popularFoods(),
          popularFoodsList(),
          bestFoods(),
        ],
      ),
      ///**********************************************Bottom Navigation Bar********************************
      // bottomNavigationBar: BottomNavigationBar(
      //   items:  const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Colors.teal,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //           Icons.restaurant),
      //       label: 'Nearby',
      //       backgroundColor: Colors.lightGreen,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       label: 'Cart',
      //       backgroundColor: Colors.lightGreen,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_box),
      //       label: 'Profile',
      //       backgroundColor: Colors.lightGreen,
      //     ),
      //   ],
      //   currentIndex: selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
    );
  }
}


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProfileViewScreen extends StatelessWidget {
  const ProfileViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

