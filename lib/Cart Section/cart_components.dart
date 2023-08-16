import 'package:flutter/material.dart';

String salmon = '';
int grilledSalmon = 890;
int fish = 900;
int total = grilledSalmon + fish;

Widget topViewCartItem() {
  return Card(
    shadowColor: Colors.green,
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
        const Text(
          'Cart Items',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
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

Widget cardItems() {
  return Column(
    children: [
      Card(
        margin: const EdgeInsets.only(left: 10, right: 10),
        elevation: 2.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/english.jpg'),
              //child: Image.asset('assets/images/fish.jpg'),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text.rich(
                        TextSpan(text: 'Grilled Salmon\n', children: [
                      TextSpan(
                        text: 'Ksh. 890',
                      )
                    ])),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 20,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.minimize,
                          color: Colors.black,
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.redAccent,
                        child: const Text(
                          'Add to 2',
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
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Card(
        margin: const EdgeInsets.only(left: 10, right: 10),
        elevation: 2.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/fish.jpg',
              ),
              radius: 30,
              // child: Image.asset('assets/images/english.jpg',fit: BoxFit.fitHeight,),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text.rich(TextSpan(text: 'Grilled Fish\n', children: [
                      TextSpan(
                        text: 'Ksh. 900',
                      )
                    ])),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 20,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.minimize,
                          color: Colors.black,
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.redAccent,
                        child: const Text(
                          'Add to 2',
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
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget promoCodeCard() {
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Add Your Promo Code Here',
            style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.attachment_sharp,
            color: Colors.red[300],
            size: 22,
          ),
        )
      ],
    ),
  );
}

Widget itemList() {
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: const Text('Grilled Salmon'),
          trailing: Text('Ksh $grilledSalmon'),
        ),
        ListTile(
          leading: const Text('Grilled Fish'),
          trailing: Text('Ksh $fish'),
        ),
        ListTile(
          leading: const Text(
            'Total',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Text('Ksh $total',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              )),
        ),
      ],
    ),
  );
}

Widget paymentMethod() {
  return Card(
    child: ListTile(
      leading: Icon(Icons.add_card, size: 25, color: Colors.blue),
      title: TextButton(
        onPressed: () {},
        child: const Text(
          'Credit/Debit Card',
          style: TextStyle(
            letterSpacing: 1,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          "Add",
          style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w300,
              color: Colors.blue),
        ),
      ),
    ),
  );
}
