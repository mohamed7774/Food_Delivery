import 'package:flutter/cupertino.dart';

import '../model/card.dart';

class MyProvider extends ChangeNotifier {
 /////////////add to cart ////////////
  List<CartModle> cartList = [];
  List<CartModle> newCartList = [];
   late CartModle cartModle;
  void addToCart({
    required String image,
    required String name,
    required int price,
    required int quantity,
  }) {
    cartModle = CartModle(
      image: image,
      name: name,
      price: price,
      quantity: quantity,
    );
    newCartList.add(cartModle);
    cartList = newCartList;
  }

  get throwCartList {
    return cartList;
  }

  int totalprice() {
    int total = 0;
    cartList.forEach((element) {
      total = element.price * element.quantity;
    });
    return total;
  }
  late int deleteIndex;
  void getDeleteIndex(int index){
    deleteIndex=index;
  }
  void delete(){
    cartList.removeAt(deleteIndex);
    notifyListeners();
  }
}
