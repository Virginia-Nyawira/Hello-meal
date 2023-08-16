import 'package:flutter/material.dart';
import 'package:hello_meal/Nearby%20Page/nearby_home_view.dart';
import 'package:url_launcher/url_launcher.dart';

class NearByHome extends StatefulWidget {
  const NearByHome({super.key});

  @override
  State<NearByHome> createState() => _NearByHomeState();
}

class _NearByHomeState extends State<NearByHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          orderBar(),
          bestFoodImage(),
          priceDesc(),
          addToBag(),
          foodReview(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        initialTime: TimeOfDay.now(),
                        context: context,
                      );

                      if (pickedTime != null) {
                        print(pickedTime.format(context)); //output 10:51 PM
                      } else {
                        print("Time is not selected");
                      }
                    },
                    icon: const Icon(
                      Icons.timelapse,
                      color: Colors.purple,
                      size: 25,
                    ),
                  ),
                  const Text(
                    '11.30',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_of_travel,
                      color: Colors.purple,
                      size: 25,
                    ),
                  ),
                  const Text(
                    '3.5 km',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///*****************************Maps Here
                  IconButton(
                    onPressed: () async {
                      String googleUrl = 'https://www.google.com/maps';
                      if (await canLaunch(googleUrl)) {
                        await launch(googleUrl);
                      } else {
                        throw 'Could not open the map.';
                      }
                    },
                    icon: const Icon(
                      Icons.map_outlined,
                      color: Colors.purple,
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Map View',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delivery_dining,
                      color: Colors.purple,
                      size: 25,
                    ),
                  ),
                  const Text(
                    'Delivery',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
