

import 'package:flutter/cupertino.dart';

import 'shoue.dart';

class Cart extends ChangeNotifier{
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Force 1',
        price: '71.97',
        imagePath: 'assets/air-force-1-big-kids-shoes-PJlmCM.png',
        description: 'Big Kids Shoes'),
    Shoe(
        name: 'Nike Dunk',
        price: '150',
        imagePath: 'assets/custom-nike-dunk-high-by-you-shoes.png',
        description: 'Custom nike dunk high by you'),
    Shoe(
        name: 'Nike Interact',
        price: '80',
        imagePath: 'assets/interact-run-road-running-shoes-qVxgms.jpg',
        description: 'Interact run road running shoes'),
    Shoe(
        name: 'Nike Dunk Low',
        price: '140',
        imagePath: 'assets/nike-dunk-low-unlocked-by-you.png',
        description: 'Nike dunk low unlocked by you'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items form cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
