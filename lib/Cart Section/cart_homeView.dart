import 'package:flutter/material.dart';
import 'package:hello_meal/Cart%20Section/cart_components.dart';

class CartHome extends StatefulWidget {
  const CartHome({super.key});

  @override
  State<CartHome> createState() => _CartHomeState();
}

class _CartHomeState extends State<CartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topViewCartItem(),
          const Text(
            'Your Cart Items',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          cardItems(),
          const SizedBox(
            height: 10,
          ),
          promoCodeCard(),
          const SizedBox(
            height: 10,
          ),
          itemList(),
          const SizedBox(
            height: 5,
          ),
          paymentMethod()
        ],
      ),
    );
  }
}
