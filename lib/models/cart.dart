import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/ZoomFreak.png',
        description: 'The forward-thinking design of this latest signature shoe',
    ),
    Shoe(
      name: 'Air Jordan 1',
      price: '220',
      imagePath: 'lib/images/Air-Jordan-1.png',
      description: 'The Air Jordan 1 Retro High remakes the classic sneaker. ',
    ),
    Shoe(
      name: "Nike Air Force 1",
      price: '120',
      imagePath: 'lib/images/Air-Force-1.png',
      description: 'These AF-1s are going back to school and they just won Best Dressed.',
    ),
    Shoe(
      name: "Jordan 4 Retro",
      price: '234',
      imagePath: 'lib/images/Air-Jordan-4.png',
      description: "This AJ4 throws it back with full-grain leather and premium textiles.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart () {
    return userCart;
  }

  // add items to cart
  void addItemToCart (Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart (Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}