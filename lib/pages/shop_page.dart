import 'package:ecommerce_app/model/shoue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoue_tile.dart';
import '../model/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to cart
  void addShoeToCart (Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);

    // aleart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sucessfully added!'),
        content: Text('Cheack your cart'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // search bar
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Search'), Icon(Icons.search)],
                ),
              ),

              // message
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  'everyone flies.. some fly longer than others',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ),

              // hot picks
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Picks',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // shoues list for sale
              Expanded(
                  child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                      shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                },
              )),

              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
