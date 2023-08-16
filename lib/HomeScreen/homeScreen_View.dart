import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

Widget notificationBar() {
  return Card(
    elevation: 0,
    child: Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'What would you like to eat?',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            size: 20,
            color: Colors.teal,
          ),
        )
      ],
    ),
  );
}

Widget firstListView() {
  return Container(
    padding: EdgeInsets.all(5),
    height: 110,
    child: ListView(
      scrollDirection: Axis.horizontal,
      //itemExtent: 10,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListHorizonView(
            images: Image.asset(
              'assets/images/image8.jpg',
              height: 80,
              width: 50,
            ),
            caption: 'French Salad',
          ),
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image1.png',
            height: 80,
            width: 50,
          ),
          caption: 'Vegeis',
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image2.jpg',
            height: 80,
            width: 50,
          ),
          caption: 'Fish',
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image3.jpg',
            height: 80,
            width: 50,
          ),
          caption: 'Cereal Meal',
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image4.png',
            height: 80,
            width: 50,
          ),
          caption: 'Fried Tilapia',
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image9.jpg',
            height: 80,
            width: 50,
          ),
          caption: 'Chicken',
        ),
        ListHorizonView(
          images: Image.asset(
            'assets/images/image7.jpg',
            height: 80,
            width: 50,
          ),
          caption: 'Syrian Rice',
        ),
      ],
    ),
  );
}

class ListHorizonView extends StatelessWidget {
  final Image images;
  final String caption;

  const ListHorizonView(
      {super.key, required this.images, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      child: Column(
        children: [
          images,
          Text(caption),
        ],
      ),
    );
  }
}

Widget popularFoods() {
  return Container(
    padding: const EdgeInsets.only(left: 8, right: 8),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Popular Foods',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See all',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontStyle: FontStyle.italic,
                color: Colors.blue),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget popularFoodsList(){
  return Container(
    height: 180,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PopularFoodItem(
            image: Image.asset(
              'assets/images/thai.jpg',
              height: 70,
              width: 100,
            ),
            label: 'Fam Chicken',
            iconButton: IconButton(onPressed: (){},
                icon: Icon(Icons.send,color: Colors.orange,size: 18,))
        ),
        PopularFoodItem(
            image: Image.asset(
              'assets/images/fish.jpg',
              height: 70,
              width: 100,
            ),
            label: 'Noodle Fish',
            iconButton: IconButton(onPressed: (){},
                icon: Icon(Icons.send,color: Colors.orange,size: 18,))
        ),

      ],
    ),
  );
}
class PopularFoodItem extends StatelessWidget {
  final Image image;
  final String label;
  final IconButton iconButton;
  const PopularFoodItem({super.key, required this.image, required this.label, required this.iconButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        Row(
          children: [
            Text(label),
            iconButton,
          ],
        )

      ],
    );
  }
}
Widget bestFoods(){
  return Container(
    child: ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Text(
          'Best Foods',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 5,
        ),
        Image.asset('assets/images/bestfoods.jpg',
        height: 200,
          width: 400,
          fit: BoxFit.fitWidth,
        )
      ],
    ),

  );
}
