import 'package:add_to_cart_provider/models/item.dart';
import 'package:flutter/material.dart';

class ItemsViewModel with ChangeNotifier{

  var itemList = <Item>[];

  add( Item item ){

    if(itemList.contains(item)){
      return;
    }

    item.cartQuantity = 1;
    itemList.add(item);
    notifyListeners();
  }

  remove( Item item ){
    itemList.remove(item);
    notifyListeners();
  }

  increaseCartQuantity( Item item ){
    item.cartQuantity += 1;
    notifyListeners();
  }

  decreaseCartQuantity( Item item ){

    if( item.cartQuantity <= 1 ){
      remove(item);
    }else{
      item.cartQuantity -= 1;
      notifyListeners();
    }
  }
}