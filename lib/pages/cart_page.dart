import 'package:ecommerce_app/model/cart.dart';
import 'package:ecommerce_app/model/shoue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_items.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            SizedBox(
              height: 30,
            ),

            Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                    itemBuilder: (
                        context, index) {
              // get user individua shoe
              Shoe individualShoe = value.getUserCart()[index];

              // return cart items
              return CartItems(shoe: individualShoe);
            }))
          ],
        ),
      ),
    );
  }
}
