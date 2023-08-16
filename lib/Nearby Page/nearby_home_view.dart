import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget orderBar() {
  return Card(
    shadowColor: Colors.indigo,
    elevation: 5,
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 20,
            color: Colors.teal,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.card_giftcard,
            size: 20,
            color: Colors.teal,
          ),
        )
      ],
    ),
  );
}

Widget bestFoodImage() {
  return Container(
    width: 340,
    height: 190,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
            image: AssetImage('assets/images/bestfoods.jpg'), fit: BoxFit.fill),
        shape: BoxShape.rectangle),
  );
}

Widget priceDesc() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text.rich(TextSpan(text: 'Grilled Salmon \n', children: [
        TextSpan(text: '   by ', style: TextStyle(color: Colors.blueGrey)),
        TextSpan(
            text: 'Pearl Dishes',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ])),
      Text(
        'Ksh 890',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  );
}

Widget addToBag() {
  return Row(
    //crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.minimize,
            color: Colors.black,
          )),
      GestureDetector(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.red[400],
          child: const Text(
            'Add to Bag',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.black,
          )),
    ],
  );
}

Widget foodReview() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Reviews',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlue,
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Rating',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                )),
          ],
        ),
      ),
      Divider(
        thickness: 1,
        color: Colors.blueGrey[200],
      ),
      const Text(
        'Ordered the Special It was beyond expectations!\n'
        ' The presentation was impeccable, the flavors\n'
        ' and the flavors were out of this world the portion size was perfect\n'
        ' Iam already looking forward to trying '
        ' out more dishes from their menu.',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.0,
        ),
      ),
     Divider(
        thickness: 1,
        color: Colors.blueGrey[200],
      ),
    ],
  );
}

Widget iconsContent() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){
              // TimeOfDay? pickedTime = await showTimePicker(
              //   initialTime: TimeOfDay.now(),
              //   context: context,
              // );

            },
            icon: const Icon(
              Icons.timelapse,
              color: Colors.purple,
              size: 25,
            ),
          ),
          const Text(
            '12pm-3pm',
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
          IconButton(
            onPressed: () {},
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
          )
        ],
      ),
    ],
  );
}
