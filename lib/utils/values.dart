import 'package:get/get.dart';

class Values{
  static final inStock = true.obs;
  static final itemCount = 0.obs;
  static final itemCountCart = 0.obs;

 static void increment() => itemCount.value++;
 static void decrement() => itemCount.value--;
 static void incrementCartItem() => itemCountCart.value++;
 static void decrementCartItem() => itemCountCart.value--;

 static void notInStock() => inStock.value = false;

}