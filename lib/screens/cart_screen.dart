import 'package:add_to_cart_provider/view_models/items_view_model.dart';
import 'package:add_to_cart_provider/widgets/cart_counter_widget.dart';
import 'package:add_to_cart_provider/widgets/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        actions: const [CartCounterWidget()],
      ),
      body: SafeArea(
        child: Consumer<ItemsViewModel>(
          builder: (context, itemsViewModel, child){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: itemsViewModel.itemList.length,
                  itemBuilder: (context, index){

                return CartTile(item: itemsViewModel.itemList[index], itemsViewModel: itemsViewModel,);
              }),
            );
          },
        ),
      ),
    );
  }
}
